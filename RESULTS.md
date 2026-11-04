# Instance statistics

[instance_stats.csv](instance_stats.csv) has one row for each of the 693 instances scored in CoRe Challenge 2023. It records graph statistics for the instance and one run of each solver: the CPU time, the answer, and, when a reconfiguration was found, the number of token jumps.

The file is a later re-run of those 693 instances under a 1800-second CPU limit enforced by runsolver. The competition scores, which combine several submissions, the existent / shortest / longest tracks, and CPU and wall-clock limits, stay in [`docs/index.md`](docs/index.md). The logs behind those scores stay in `docs/solver/log/`.

## Category

Every column in this file is a **single** solver: one engine per column. The 2023 pages also score an overall category, which may combine several engines from one team. Those overall runs are not in this CSV.

| Prefix | Solver | Category | Run recorded in this file |
| --- | --- | --- | --- |
| `paris` | PARIS | single | `shortest-single` in `logs-paris`. That config runs ScorpionAnytime alone |
| `nuasp` | NU-ASP | single | `run_3.py --shortest` in `logs-nuasp` |
| `reconf` | Reconfaigeration | single | `reconfaigeration` on the shortest track, in `logs-reconfaigeration` |
| `srip` | SRIP | single | `logs-v47-full-op-f-d1-d2`, the configuration in Soh et al., KR 2026 |

SRIP is a reference solver developed in 2025. It did not participate in CoRe Challenge 2022 or 2023, and its column is outside the competition ranking.

## Columns

| Column | Meaning |
| --- | --- |
| `instance` | Query name: the `.dat` basename without the extension |
| `group` | Benchmark series. `hand_made_wide` is stored as `power_wide`, `power_wider`, `square_wide`, and `square_wider` |
| `vertices`, `edges` | Order and size of the graph, from the `p` line of the `.col` file |
| `avg_degree` | Mean degree, `2 * edges / vertices`, written with three decimal places |
| `tokens` | Number of vertices on the start line (`s`) of the `.dat` file |
| `shortest_steps` | Shortest `YES` length among PARIS, NU-ASP, Reconfaigeration, SRIP, and ddreconf. Empty when none of them returned a sequence |
| `{solver}_answer` | Outcome of that solver's run. Values are listed below |
| `{solver}_cpu_s` | runsolver `CPUTIME` in seconds, written with three decimal places |
| `{solver}_steps` | Number of token jumps in the returned reconfiguration. Empty when no sequence was accepted |
| `srip_config` | `logs-v47-full-op-f-d1-d2` when that configuration printed a shortest sequence. Empty otherwise |
| `n_solved` | How many of the five solvers solved the instance: PARIS, NU-ASP, Reconfaigeration, ddreconf, and SRIP. An integer from 0 to 5 |

`{solver}` is `paris`, `nuasp`, `reconf`, or `srip`.

The solver name, category, and command for each prefix are in the table under [Category](#category).

Reconfaigeration's logs are shortest-track runs (`solving shortest`). Its `Length` line counts states in the sequence. `reconf_steps` counts token jumps, one less than the number of states.

The `exp_instance` rows are the 20 queries used in the scored tables (`LGC_` and `SAT_`). The other 100 queries in that directory are absent from this CSV.

## Answer values

| Value | Meaning |
| --- | --- |
| `YES` | The solver returned a reconfiguration |
| `NO` | The solver reported that the target is unreachable |
| `timeout` | runsolver set `TIMEOUT=true` |
| `no-answer` | The process finished inside the limit and the log has neither `YES` nor `NO` |
| `unsolved` | SRIP only. `logs-v47-full-op-f-d1-d2` did not print a shortest sequence |

`YES` is recognized from an `a YES` line or an `s SATISFIABLE` line. `NO` is recognized from an `a NO` line or an `s UNSATISFIABLE` line.

In this file only PARIS reports `NO`: 21 grid queries, one handcrafted query, and one `ph-isr` query. NU-ASP, Reconfaigeration, and SRIP have no `NO` rows.

## CPU time and step counts

For PARIS, NU-ASP, and Reconfaigeration, `*_cpu_s` is filled on every row, including `timeout` and `no-answer`. `*_steps` is filled only on `YES`.

For SRIP, `srip_cpu_s`, `srip_steps`, and `srip_config` are filled only on `YES`. All three are empty when the answer is `unsolved`.

The step count is taken from a `steps=N` line or a `Step: N` line when one is present. Otherwise it is the number of `a` state lines minus one. Reconfaigeration's `Length` value is used only when the log has no `a` state line; the stored count is then `Length − 1` when `Length` is greater than 1. Every `YES` row in this file has a step count.

## How the SRIP column was selected

SRIP is a single solver: a reference solver developed in 2025 that did not participate in the competition. The column is the configuration used in Soh et al., KR 2026 ([proceedings](https://proceedings.kr.org/2026/72/)): `logs-v47-full-op-f-d1-d2`.

A row is `YES` when that run exited with status 0, runsolver did not report a timeout, and `tool.log` contains `s SATISFIABLE` or `a YES`. The whole log is read. `srip_steps` is the `c steps=` value written with that answer, and `srip_cpu_s` is that run's CPU time. 477 rows are `YES`. The other 216 are `unsolved`.

## Solved instances by series

PARIS, NU-ASP, Reconfaigeration, and SRIP count rows in this file whose answer is `YES` or `NO`. ddreconf counts a `YES` in the 2023 shortest CPU table in [`docs/index.md`](docs/index.md); a `NO` from that solver is not counted. Those are the same five solvers summed in `n_solved`. ddreconf is a single engine, and the same `YES` counts appear in the overall and single shortest tables.

`verts min`, `verts median`, and `verts max` summarize `vertices` over every instance in the series. `length min`, `length median`, and `length max` summarize `shortest_steps`. Instances with an empty `shortest_steps` are left out of the length summary. The maximum in each series is the max Len. value in the 2023 shortest CPU table. A median of two middle values is written with one decimal place.

| Series | Instances | verts min | verts median | verts max | length min | length median | length max | PARIS | NU-ASP | Reconfaigeration | ddreconf | SRIP |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| color04 | 202 | 11 | 282 | 10000 | 1 | 3.5 | 112 | 202 | 200 | 177 | 76 | 200 |
| random_instance | 200 | 13 | 266.5 | 520 | 1 | 53 | 115 | 143 | 194 | 34 | 36 | 199 |
| grid | 49 | 16 | 2500 | 40000 | 7 | 7.5 | 8 | 23 | 2 | 2 | 2 | 2 |
| queen | 48 | 64 | 3050 | 40000 | 4 | 17 | 94 | 44 | 24 | 24 | 8 | 21 |
| ph-isr | 36 | 41 | 1842 | 9205 | 31 | 31 | 31 | 2 | 0 | 0 | 1 | 0 |
| sp | 30 | 13 | 201.5 | 390 | 11 | 2805 | 360437 | 8 | 2 | 3 | 15 | 5 |
| exp_instance | 20 | 6 | 147 | 670 | 3 | 207 | 4239 | 9 | 5 | 5 | 17 | 8 |
| power | 17 | 64 | 184 | 304 | 359 | 13691 | 442175 | 4 | 0 | 0 | 11 | 3 |
| power_wide | 17 | 128 | 368 | 608 | 359 | 10241 | 221003 | 0 | 0 | 0 | 10 | 2 |
| power_wider | 17 | 192 | 552 | 912 | 359 | 6791 | 110423 | 0 | 0 | 0 | 9 | 2 |
| square | 17 | 44 | 124 | 204 | 90 | 650 | 1722 | 6 | 0 | 0 | 17 | 13 |
| square_wide | 17 | 88 | 248 | 408 | 90 | 650 | 1722 | 1 | 0 | 0 | 17 | 9 |
| square_wider | 17 | 132 | 372 | 612 | 90 | 650 | 1722 | 0 | 0 | 0 | 17 | 8 |
| handcrafted | 6 | 6 | 17.5 | 36 | 3 | 21 | 69 | 6 | 5 | 5 | 5 | 5 |
| Total | 693 | 6 | 308 | 40000 | 1 | 30.5 | 442175 | 448 | 432 | 250 | 241 | 477 |
