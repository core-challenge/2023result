# Solver best times

[solver_best_times.csv](solver_best_times.csv) has one row for each of the 693 instances scored in CoRe Challenge 2023. For each solver it keeps one run: the CPU time, the answer, and, when a reconfiguration was found, the number of token jumps.

The file is a later re-run of those 693 instances under a 1800-second CPU limit enforced by runsolver. The competition scores, which combine several submissions, the existent / shortest / longest tracks, and CPU and wall-clock limits, stay in [`docs/index.md`](docs/index.md). The logs behind those scores stay in `docs/solver/log/`.

## Category

Every column in this file is a **single** solver: one engine per column. The 2023 pages also score an overall category, which may combine several engines from one team. Those overall runs are not in this CSV.

| Prefix | Solver | Category | Run recorded in this file |
| --- | --- | --- | --- |
| `paris` | PARIS | single | `shortest-single` in `logs-paris`. That config runs ScorpionAnytime alone |
| `nuasp` | NU-ASP | single | `run_3.py --shortest` in `logs-nuasp` |
| `isr` | ISR (sano in the 2023 tables) | single | `IsrSolverTjOrderClique01` in `logs-isr` |
| `reconf` | Reconfaigeration (ddreconf in the 2023 tables) | single | `reconfaigeration` on the shortest track, in `logs-reconfaigeration` |
| `srip` | SRIP | single | Fastest successful configuration among 68 directories named `logs` or `logs-v*` |

SRIP is a reference solver developed in 2025. It did not participate in CoRe Challenge 2022 or 2023, and its column is outside the competition ranking. The 68 directories are configurations of this one single solver.

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
| `srip_config` | Directory name of the SRIP configuration that produced the retained run. Empty when `srip_answer` is `unsolved` |

`{solver}` is `paris`, `nuasp`, `isr`, `reconf`, or `srip`.

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

In this file only PARIS reports `NO`: 21 grid queries, one handcrafted query, and one `ph-isr` query. NU-ASP, ISR, Reconfaigeration, and SRIP have no `NO` rows.

## CPU time and step counts

For PARIS, NU-ASP, ISR, and Reconfaigeration, `*_cpu_s` is filled on every row, including `timeout` and `no-answer`. `*_steps` is filled only on `YES`.

For SRIP, `srip_cpu_s`, `srip_steps`, and `srip_config` are filled only on `YES`. All three are empty when the answer is `unsolved`.

The step count is taken from a `steps=N` line or a `Step: N` line when one is present. Otherwise it is the number of `a` state lines minus one. Reconfaigeration's `Length` value is used only when the log has no `a` state line; the stored count is then `Length − 1` when `Length` is greater than 1. Every `YES` row in this file has a step count.

## How the SRIP column was selected

SRIP is a single solver: a reference solver developed in 2025 that did not participate in the competition. The directories below are configurations of that one solver, and the column keeps the fastest successful configuration.

A configuration directory is included when its name is `logs` or starts with `logs-v`, and it contains a run of `1-FullIns_3_01`. That gives 68 directories.

A run is eligible when all three hold:

- runsolver did not set `TIMEOUT=true`
- `EXITSTATUS` is `0`
- the first 8192 bytes of `tool.log` contain `YES` or `NO`, as defined above

The retained run is the eligible run with the smallest `CPUTIME`. When two eligible runs have the same CPU time, the directory that comes first in sorted name order stays. `srip_steps` is read from `steps=` inside those first 8192 bytes.

All 457 retained SRIP runs are `YES`. The other 236 rows are `unsolved`. The configuration that wins most often is `logs-v20-s20` (287 instances).

## Outcomes in this file

Counts below are rows, out of the 693 instances.

| Solver | `YES` | `NO` | `timeout` | `no-answer` | `unsolved` |
| --- | ---: | ---: | ---: | ---: | ---: |
| PARIS | 425 | 23 | 4 | 241 | — |
| NU-ASP | 432 | 0 | 261 | 0 | — |
| ISR | 468 | 0 | 209 | 16 | — |
| Reconfaigeration | 250 | 0 | 436 | 7 | — |
| SRIP | 457 | 0 | — | — | 236 |

Solved rows (`YES` or `NO`) by series:

| Series | Instances | PARIS | NU-ASP | ISR | Reconfaigeration | SRIP |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| color04 | 202 | 202 | 200 | 201 | 177 | 202 |
| random_instance | 200 | 143 | 194 | 200 | 34 | 200 |
| grid | 49 | 23 | 2 | 2 | 2 | 2 |
| queen | 48 | 44 | 24 | 25 | 24 | 31 |
| ph-isr | 36 | 2 | 0 | 1 | 0 | 4 |
| sp | 30 | 8 | 2 | 6 | 3 | 3 |
| exp_instance | 20 | 9 | 5 | 8 | 5 | 7 |
| power | 17 | 4 | 0 | 3 | 0 | 0 |
| power_wide | 17 | 0 | 0 | 1 | 0 | 0 |
| power_wider | 17 | 0 | 0 | 1 | 0 | 0 |
| square | 17 | 6 | 0 | 8 | 0 | 1 |
| square_wide | 17 | 1 | 0 | 4 | 0 | 1 |
| square_wider | 17 | 0 | 0 | 3 | 0 | 1 |
| handcrafted | 6 | 6 | 5 | 5 | 5 | 5 |
