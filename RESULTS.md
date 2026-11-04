# Solver best times

[solver_best_times.csv](solver_best_times.csv) has one row for each of the 693 instances scored in CoRe Challenge 2023. For each solver it keeps one run: the CPU time, the answer, and, when a reconfiguration was found, the number of token jumps.

The file is a later re-run of those 693 instances under a 1800-second CPU limit enforced by runsolver. The competition scores, which combine several submissions, the existent / shortest / longest tracks, and CPU and wall-clock limits, stay in [`docs/index.md`](docs/index.md). The logs behind those scores stay in `docs/solver/log/`.

## Category

Every column in this file is a **single** solver: one engine per column. The 2023 pages also score an overall category, which may combine several engines from one team. Those overall runs are not in this CSV.

| Prefix | Solver | Category | Run recorded in this file |
| --- | --- | --- | --- |
| `paris` | PARIS | single | `shortest-single` in `logs-paris`. That config runs ScorpionAnytime alone |
| `nuasp` | NU-ASP | single | `run_3.py --shortest` in `logs-nuasp` |
| `reconf` | Reconfaigeration (ddreconf in the 2023 tables) | single | `reconfaigeration` on the shortest track, in `logs-reconfaigeration` |
| `srip` | SRIP | single | Any configuration under a directory named `logs` or `logs-v*` that printed a shortest sequence |

SRIP is a reference solver developed in 2025. It did not participate in CoRe Challenge 2022 or 2023, and its column is outside the competition ranking. The directories are configurations of this one single solver.

## Columns

| Column | Meaning |
| --- | --- |
| `instance` | Query name: the `.dat` basename without the extension |
| `group` | Benchmark series. `hand_made_wide` is stored as `power_wide`, `power_wider`, `square_wide`, and `square_wider` |
| `vertices`, `edges` | Order and size of the graph, from the `p` line of the `.col` file |
| `tokens` | Number of vertices on the start line (`s`) of the `.dat` file |
| `{solver}_answer` | Outcome of that solver's run. Values are listed below |
| `{solver}_cpu_s` | runsolver `CPUTIME` in seconds, written with three decimal places |
| `{solver}_steps` | Number of token jumps in the returned reconfiguration. Empty when no sequence was accepted |
| `srip_config` | One directory that printed a shortest sequence, the first in sorted name order. Empty when `srip_answer` is `unsolved`. The CPU time in `srip_cpu_s` is that run's time |

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
| `unsolved` | SRIP only. No configuration met the acceptance rules below |

`YES` is recognized from an `a YES` line or an `s SATISFIABLE` line. `NO` is recognized from an `a NO` line or an `s UNSATISFIABLE` line.

In this file only PARIS reports `NO`: 21 grid queries, one handcrafted query, and one `ph-isr` query. NU-ASP, Reconfaigeration, and SRIP have no `NO` rows.

## CPU time and step counts

For PARIS, NU-ASP, and Reconfaigeration, `*_cpu_s` is filled on every row, including `timeout` and `no-answer`. `*_steps` is filled only on `YES`.

For SRIP, `srip_cpu_s`, `srip_steps`, and `srip_config` are filled only on `YES`. All three are empty when the answer is `unsolved`.

The step count is taken from a `steps=N` line or a `Step: N` line when one is present. Otherwise it is the number of `a` state lines minus one. Reconfaigeration's `Length` value is used only when the log has no `a` state line; the stored count is then `Length − 1` when `Length` is greater than 1. Every `YES` row in this file has a step count.

## How the SRIP column was selected

SRIP is a single solver: a reference solver developed in 2025 that did not participate in the competition. A row is `YES` when any configuration printed a shortest sequence. CPU time is not used to choose the row.

Every directory named `logs` or `logs-v*` is included (89 directories). Each `tool.log` is read until `s SATISFIABLE` or `a YES`, or until the file ends. There is no byte cutoff, and a run is kept whether or not runsolver reported a timeout. `srip_steps` is the `c steps=` value written with that answer. `srip_config` is the first directory in sorted name order that produced an answer, and `srip_cpu_s` is that run's CPU time.

On `random_instance004_graph005_01`, one configuration reported 9 steps and the others reported 7. The column keeps 7. The other 496 `YES` rows have the same step count in every configuration that solved them.

497 rows are `YES`. The other 196 are `unsolved`. This union is larger than the 477 solved by the single configuration reported in Soh et al., KR 2026 (`logs-v47-full-op-f-d1-d2`).

## Outcomes in this file

Counts below are rows, out of the 693 instances.

| Solver | `YES` | `NO` | `timeout` | `no-answer` | `unsolved` |
| --- | ---: | ---: | ---: | ---: | ---: |
| PARIS | 425 | 23 | 4 | 241 | — |
| NU-ASP | 432 | 0 | 261 | 0 | — |
| Reconfaigeration | 250 | 0 | 436 | 7 | — |
| SRIP | 497 | 0 | — | — | 196 |

Solved rows (`YES` or `NO`) by series:

| Series | Instances | PARIS | NU-ASP | Reconfaigeration | SRIP |
| --- | ---: | ---: | ---: | ---: | ---: |
| color04 | 202 | 202 | 200 | 177 | 202 |
| random_instance | 200 | 143 | 194 | 34 | 200 |
| grid | 49 | 23 | 2 | 2 | 2 |
| queen | 48 | 44 | 24 | 24 | 31 |
| ph-isr | 36 | 2 | 0 | 0 | 4 |
| sp | 30 | 8 | 2 | 3 | 6 |
| exp_instance | 20 | 9 | 5 | 5 | 8 |
| power | 17 | 4 | 0 | 0 | 3 |
| power_wide | 17 | 0 | 0 | 0 | 2 |
| power_wider | 17 | 0 | 0 | 0 | 2 |
| square | 17 | 6 | 0 | 0 | 13 |
| square_wide | 17 | 1 | 0 | 0 | 10 |
| square_wider | 17 | 0 | 0 | 0 | 9 |
| handcrafted | 6 | 6 | 5 | 5 | 5 |
