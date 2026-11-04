# Results of CoRe Challenge 2023

This repository stores the instances, solver logs, and result pages of [CoRe Challenge 2023](https://core-challenge.github.io/2023/). The challenge is the second Combinatorial Reconfiguration Challenge. Its solver and graph tracks both use the Independent Set Reconfiguration problem under the token-jumping rule.

The result pages are published from the `docs/` directory at <https://core-challenge.github.io/2023result/>.

Descriptions of the benchmark families, with the accounts given in the published papers, are in [BENCHMARK.md](BENCHMARK.md).

## Repository layout

| Path | Contents |
| --- | --- |
| `_config.yml`, `assets/css/style.scss` | GitHub Pages / Jekyll settings for the result site |
| `docs/index.md` | Summary pages: graph-track ranking, solver-track scores by series, and the list of participating teams |
| `docs/solver/index.md` | Per-instance solver-track tables. Each cell links to the instance files and to that solver's log |
| `docs/solver/benchmark/` | Solver-track instances (`.col` graphs and `.dat` start/target sets) |
| `docs/solver/log/benchmark/` | One log file per instance, solver submission, track, and resource limit |
| `docs/solver/log/benchmark-log.tar.gz` | The same solver logs packed as one archive |
| `docs/graph/` | Graph-track submissions that were ranked: `PARIS/`, `piyopiyo/`, and `tohoku_boar/` |

`docs/solver/benchmark/` has eleven directories. Seven of them come from CoRe Challenge 2022, under `2022benchmark/benchmark/`. The 2023 additions are `exp_instance/`, `hand_made_wide/`, `ph-isr/`, and `random_instance/`. The summary tables in `docs/index.md` split `hand_made_wide/` into four series, so those tables have fourteen rows. Together they are the 693 instances used for evaluation.

```
docs/solver/benchmark/
├── 2022benchmark/benchmark/
│   ├── color04/          101 graphs, 202 queries
│   ├── grid/             12 graphs, 49 queries
│   ├── handcrafted/      6 queries
│   ├── power/            17 queries
│   ├── queen/            20 graphs, 48 queries
│   ├── sp/               30 queries
│   └── square/           17 queries
├── exp_instance/         IS_, LGC_, and SAT_ series (40 queries each)
├── hand_made_wide/
│   ├── power_wide/       17 queries
│   ├── power_wider/      17 queries
│   ├── square_wide/      17 queries
│   └── square_wider/     17 queries
├── ph-isr/               36 queries
└── random_instance/      200 queries
```

The scored `exp_instance` row in the result tables has 20 instances. The directory itself contains 120 queries (40 `IS_`, 40 `LGC_`, and 40 `SAT_`).

`queen200x200.col` is stored gzipped (`queen200x200.col.gz`). The other graphs are plain text.

## Instance files

Each query is a pair of files, as specified by the [CoRe Challenge 2023 file format](https://core-challenge.github.io/2023/format/).

- A `.col` file is a DIMACS-style graph. A `p` line gives the number of vertices and edges, and `e` lines give the edges. Comment lines start with `c`.
- A `.dat` file gives the two independent sets. An `s` line is the start set and a `t` line is the target set. Vertex numbers are 1-based.

Several `.dat` files may share one `.col` file. Grid and queen graphs, and every COLOR04 graph, are used that way.

## Solver logs

A log path mirrors the instance path. The file name concatenates the `.col` name, the `.dat` name, and a run id:

```
{graph}.col{query}.dat.{track}-{resource}-{team}-{submission}.time1800.log
```

`time1800` is the 1800-second (30-minute) limit used for these runs. The other fields are:

| Field | Values in this repository |
| --- | --- |
| `track` | `existent`, `shortest`, `longest` |
| `resource` | `cpu`, `wallclock` |
| team and submission | `ai-planning2-existent1/2` and `ai-planning-longest1/2` (PARIS); `banbaralab2-existent1/2/3`, `banbaralab2-shortest1/2`, and `banbaralab-longest1/2` (NU-ASP); `sano382` (sano); `suisen-cp2` (ddreconf) |

On the result pages, a cell such as `YES 3` means the solver returned a reconfiguration of that length. `NO` means the solver reported that no reconfiguration exists. `N.A.` means no answer was accepted for that run.

The pages distinguish single-engine submissions from portfolio (`overall`) submissions, and CPU time from wall-clock time. Ties were broken by submission time. The scoring tables and team affiliations are in `docs/index.md`.

## Graph track

`docs/graph/` contains the ranked submissions for the three size caps (at most 17, 31, and 59 vertices). Each submission is a `.col` graph, a `.dat` start/target pair, and an `.out` reconfiguration. The lengths recorded on the summary page are:

| Vertices | PARIS | piyopiyo | tohoku boar |
| ---: | ---: | ---: | ---: |
| 17 | 30 | 30 | 29 |
| 31 | 211 | 231 | — |
| 59 | 9895 | 11499 | — |

For 17 vertices, piyopiyo placed first by submission time. How these graphs were built is summarized in [BENCHMARK.md](BENCHMARK.md).

## Related material

- Challenge site: <https://core-challenge.github.io/2023/>
- 2022 instances: <https://github.com/core-challenge/2022benchmark>
- Solver descriptions and containers: <https://github.com/core-challenge/2023solver-showcase>
- Solver and graph write-ups: [arXiv:2208.02495](https://arxiv.org/abs/2208.02495) (2022), [arXiv:2310.17136](https://arxiv.org/abs/2310.17136) (2023)
- Evaluation write-up: Takehide Soh, Tomoya Tanjo, Yoshio Okamoto, and Takehiro Ito, “CoRe Challenge 2022/2023: Empirical Evaluations for Independent Set Reconfiguration Problems (Extended Abstract),” SoCS 2024, pp. 285–286. <https://doi.org/10.1609/socs.v17i1.31583>
