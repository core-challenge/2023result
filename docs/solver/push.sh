#!/bin/bash

# 現在のディレクトリがGitリポジトリであることを確認
if [ ! -d .git ] && ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "Error: must run this script in a Git repository"
    exit 1
fi

# カレントディレクトリを保存
root_dir=$(pwd)

# ファイルサイズの合計を保持する変数を初期化
total_size=0

# 10MBのサイズをバイト単位に変換
commit_size=$((50*1024*1024))

# カレントディレクトリ内のすべてのファイルを再帰的に走査
find . -type f | while read file
do
    # ファイルのサイズを取得
    file_size=$(stat --format=%s "$file")

    # ファイルをステージングエリアに追加
    git add "$file"

    # ファイルサイズを合計に加算
    total_size=$((total_size + file_size))

    # 合計サイズが10MBを超えたらコミットとプッシュを実行
    if [ $total_size -ge $commit_size ]; then
        git commit -m "automated commit from script"

        # pushが3分経っても終わらない場合は再試行
        while true; do
            timeout 180 git push && break
            echo "Push timed out, retrying..."
        done

        # ファイルサイズの合計をリセット（新たなコミットのため）
        total_size=0
    fi
done

# 最後のコミットとプッシュを行う（合計サイズが10MBに達していない場合）
git commit -m "final automated commit from script"

# pushが3分経っても終わらない場合は再試行
while true; do
    timeout 180 git push && break
    echo "Push timed out, retrying..."
done

