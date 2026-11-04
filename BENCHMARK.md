# Benchmark families in CoRe Challenge 2023

This note records how the benchmark families in this repository are described in the published challenge papers. It does not add a generator that those papers do not give.

The problem throughout is Independent Set Reconfiguration under token jumping: one token moves to any non-adjacent vertex at a time, and every set in the sequence is an independent set of the same size. The problem is PSPACE-complete, so a shortest reconfiguration can be super-polynomial in the size of the graph (Kamiński, Medvedev, and Milanič 2012). CoRe Challenge 2022/2023 used this problem because it is a standard source of PSPACE-completeness reductions for other reconfiguration problems (Soh, Tanjo, Okamoto, and Ito 2024).

## The evaluation set

Soh, Tanjo, Okamoto, and Ito (2024) say that the organizers created 11 benchmark sets, 693 instances in total, for the evaluation. Those 11 sets are the directories under `docs/solver/benchmark/` (the seven 2022 directories, plus `exp_instance`, `hand_made_wide`, `ph-isr`, and `random_instance`). The result tables in `docs/index.md` split `hand_made_wide` into `power_wide`, `power_wider`, `square_wide`, and `square_wider`, which is why the tables have fourteen rows and the paper says eleven sets. Both counts cover the same 693 scored instances.

The same extended abstract reports a 30-minute CPU limit on the shortest-reconfiguration, single-engine track, and three observations from that evaluation:

- The largest solved graph has 40,000 vertices, solved by the planning solver PARIS.
- The longest shortest reconfiguration found by the ZDD solver ddreconf has length 442,175, on `hc-power-014-002_01.dat`.
- Instances that need a long reconfiguration are rarely solved, and no solver is best on every family. PARIS, NuASP, and ddreconf win different rows of the tables.

The per-family counts below are the ones printed in `docs/index.md`. “Max. length” there is the longest reconfiguration length recorded for that series in those tables, not a proof that every shorter sequence was ruled out.

## Solver-track families from 2022

The 2022 instances were released in three rounds (see the [2022 benchmark repository](https://github.com/core-challenge/2022benchmark)). The first round is the small `handcrafted` set together with the smallest grids, and it contains both reachable and unreachable queries. The second round adds larger grids and queen graphs. The third round adds `sp`, `square`, `power`, and `color04`, including the 200×200 grids and the 200×200 queen graph.

A participating shortest-path solver (Turau and Weyer, in Soh, Okamoto, and Ito 2022) published one table per family. Where that solver finished, the table gives a shortest-path length. A dash means that this solver did not finish the instance. Those lengths are cited below as reported there.

### color04

`color04` is taken from the COLOR04 graph-coloring benchmark. The directory holds 101 of those graphs, with two `.dat` queries each (202 instances): insertion and full-insertion graphs (`Insertions`, `FullIns`), Mycielski graphs (`myciel`), random graphs (`DSJC`, `DSJR`), queen graphs (`queenN_N`), Leighton graphs (`le450`), Latin squares, course-timetabling graphs (`school1`), and the `wap`, `ash`, `miles`, `mug`, and `qg.order` families. The largest graph in the 2023 tables has 10,000 vertices, and the longest recorded reconfiguration in this series has length 112.

These queen graphs are the COLOR04 instances. They are separate from the `queen/` directory below.

On this series almost every 2023 solver finds some reconfiguration. In the portfolio existent track with CPU time, PARIS solves 202/202 and NuASP 200/202, while ddreconf solves 76/202.

### grid

The `.col` comments identify these graphs as grid graphs (`c DESCRIPTION: 4x4 grid graph`, and the same form for the larger boards). The boards are 4×4 (16 vertices) and then 10×10, 20×20, …, 100×100, and 200×200 (40,000 vertices, 79,600 edges). The 4×4 graph has five queries. Each larger graph has four queries, whose `.dat` names end in a four-digit tag. There are 49 queries.

Turau and Weyer (2022) already report that several small grids have no reconfiguration (`No` in their Table 1 and Table 2), while the reachable 4×4 queries have shortest length 7 or 8. The 2023 tables list 8 as the maximum recorded length for the whole series. The hard part of the series is the size of the graph and the unreachable queries, not a long shortest path. PARIS-existent2 solves 47/49. The other solvers solve between 5 and 20.

### queen

The `.col` comments identify these graphs as queen graphs (`c DESCRIPTION: 008x008 queen graph`): a vertex is a square of an n×n chessboard, and two vertices are adjacent when queens on those squares attack. The 48 queries are four per board on 8×8, 10×10, 20×20, 30×30, …, 100×100, and 200×200. The 200×200 graph is stored as `queen200x200.col.gz` (40,000 vertices, 13,253,400 edges). The directory also contains `.col` files, without a `.dat` query, for the even orders 12 through 18 and 22 through 28.

Turau and Weyer (2022, Table 3) report short solutions on the boards they finished, including length 4 to 29 on the four 200×200 queries. The 2023 tables give 94 as the maximum recorded length. PARIS solves all 48 queries in the existent track. NuASP solves about half, and sano and ddreconf solve fewer than 10.

### handcrafted

Six small queries, released so that contestants could test a first solver. Turau and Weyer (2022, Table 1) give the outcome of each:

| Query | Vertices | Edges | Their result |
| --- | ---: | ---: | --- |
| `hc-toyyes-01` | 7 | 7 | reachable, length 3 |
| `hc-toyno-01` | 6 | 9 | unreachable |
| `hc-square-01` | 14 | 18 | length 12 |
| `hc-square-02` | 24 | 33 | length 30 |
| `hc-power-11` | 21 | 28 | length 21 |
| `hc-power-12` | 36 | 51 | length 69 |

Every 2023 solver solves all six. The maximum recorded length is 69, from `hc-power-12`.

### power

Seventeen queries, `hc-power-004-002` through `hc-power-020-002`. One graph and one query per file pair. The order grows by 15 vertices at each step, from 64 vertices and 95 edges to 304 vertices and 463 edges.

On the instances their shortest-path solver finished, Turau and Weyer (2022, Table 5) report lengths 359, 779, 1,631, 3,347, 6,791, 13,691, and 27,503 for parameters 004 through 010. Each step is a little more than twice the previous length. They did not finish 011 through 020. The 2023 tables give 442,175 as the maximum recorded length, attained by ddreconf on `hc-power-014-002_01.dat`.

In the 2023 existent track, ddreconf solves 11/17, PARIS-existent2 solves 6/17, sano solves 2/17, and NuASP solves none. This is the series the extended abstract uses as the example of a long reconfiguration that most solvers do not finish.

### square

Seventeen queries, `hc-square-004-002` through `hc-square-020-002`. The order grows by 10 vertices at each step, from 44 vertices and 63 edges to 204 vertices and 303 edges.

Turau and Weyer (2022, Table 4) report shortest lengths 90, 132, 182, 240, 306, 380, 462, 552, 650, and 756 for parameters 004 through 013, and no result for 014 through 020. The gaps increase by 8 at each step, so the reported lengths grow quadratically rather than by doubling. The 2023 maximum recorded length for the series is 1,722.

ddreconf and PARIS-existent2 both solve 17/17. PARIS-existent1 solves 7/17, sano 3/17, and NuASP 1/17.

### sp

Thirty queries, `sp001` through `sp030`, one query each. The order grows by 13 vertices at each step: 13, 26, …, 390 vertices, and 66, 150, …, 2,502 edges.

Turau and Weyer (2022) report shortest lengths 11, 33, 77, 165, 341, 693, 1,397, 2,805, 5,621, 11,253, and 22,517 for `sp001` through `sp011`, roughly doubling after the first few, and no result for `sp012` through `sp030`. The 2023 maximum recorded length is 360,437.

ddreconf solves 15/30 in the existent track, PARIS-existent2 solves 11/30, sano 6/30, and NuASP at most 4/30.

The 2022 graph-track write-ups construct other families whose shortest sequences also grow exponentially (Bousquet, Durain, and Pierron; Turau and Weyer; Christen et al.; Takashima and Yamaoka, all in Soh, Okamoto, and Ito 2022). Those write-ups are for the graph track. Their parameters (adding 5 or 10 vertices, multiplying the length by 2, 3, or 4) do not match the vertex steps of `power`, `square`, or `sp`, so this note does not identify the solver-track series with those constructions.

## Solver-track families added in 2023

The extended abstract includes these directories in the 11 sets, and `docs/index.md` gives the aggregate numbers. Neither paper states a generator for them. What follows is that published record, plus the file names and sizes in this repository.

### exp_instance

The scored row has 20 instances, at most 670 vertices, and maximum recorded length 4,239. The directory stores three named series of 40 queries each: `IS_exp_instance`, `LGC_exp_instance`, and `SAT_exp_instance`.

In the existent track, ddreconf solves 17/20, PARIS-existent2 solves 13/20, sano solves 7/20, and NuASP solves 6/20.

### hand_made_wide

Sixty-eight queries, 17 in each of four directories. Every file is named `suzuki_instance_{a}_{k}_2_{b}`.

| Directory | Name pattern | Vertices | Max. recorded length | PARIS-existent2 | ddreconf |
| --- | --- | --- | ---: | ---: | ---: |
| `square_wide` | `suzuki_instance_2_*_2_2` | 88–408 | 1,722 | 17/17 | 17/17 |
| `square_wider` | `suzuki_instance_2_*_2_3` | 132–612 | 1,722 | 15/17 | 17/17 |
| `power_wide` | `suzuki_instance_3_*_2_2` | 128–608 | 221,003 | 6/17 | 10/17 |
| `power_wider` | `suzuki_instance_3_*_2_3` | 192–912 | 110,423 | 6/17 | 9/17 |

The vertex ranges are twice and three times the ranges of `square` (44–204) and `power` (64–304). NuASP and sano solve none of these 68 queries in the 2023 existent tables. The square variants keep the same maximum recorded length as `square` (1,722). The power variants stay in the long-sequence regime, and PARIS-existent1 solves none of them.

Akira Suzuki’s graph-track note in Soh et al. (2023) describes a different construction: new pieces on 3 to 9 vertices, combined by dynamic programming for the 17-, 31-, and 59-vertex graph-track caps. That note does not describe these larger `suzuki_instance_*` queries.

### ph-isr

Thirty-six queries, `ph-03-02`, `ph-03-03`, …, `ph-20-19`, `ph-20-20`: for each k from 3 to 20, one query named `ph-k-(k-1)` and one named `ph-k-k`. The graphs are sparse (the smallest has 41 vertices and 57 edges) and grow to 9,205 vertices. The maximum recorded length is only 31.

This is the series on which every 2023 solver fails most queries. The best existent score is PARIS-existent2 with 6/36. NuASP, sano, and ddreconf solve at most 3/36. A short recorded length here does not mean the instances are easy.

### random_instance

Two hundred queries, `random_instance001_graph001` through `random_instance040_graph005`: forty groups and five graphs in each group. The graphs have 13 to 520 vertices. The maximum recorded length is 115.

NuASP solves 194/200 in the existent track, PARIS 143/200, ddreconf 36/200, and sano 17/200. Unlike `power` and `ph-isr`, this series separates the ASP solver from the others by a large margin.

## Graph-track instances

The graph track asks for one instance on at most n vertices whose shortest reconfiguration is as long as possible. The ranked 2023 submissions are under `docs/graph/`. Their constructions are written up in Soh et al. (2023). The 2022 constructions, which the 2023 notes extend, are in Soh, Okamoto, and Ito (2022).

### PARIS (2023 lengths 30, 211, and 9,895)

Christen et al. and, for 2023, Chidley, Muise, and Petrov start from two widgets.

- The house is a 4-cycle plus a fifth vertex adjacent to two consecutive vertices of the cycle. It holds two tokens, the shortest flip between its two maximum independent sets is unique, and that flip uses the degree-2 vertex (the anchor) on every intermediate set.
- The 10-vertex widget is one of the three 10-vertex graphs that Bousquet, Durain, and Pierron found by enumerating all graphs on 10 vertices. Each has a reconfiguration graph that is a path of length 10.

For 17 vertices they attach one 10-vertex widget, one house, and a single edge (a 2-vertex widget) so that every use of two particular vertices of the 10-vertex widget flips the house. The resulting shortest sequence has length 30. For 31 vertices they join three 10-vertex widgets by the 2022 composition and add one vertex adjacent to every vertex except the target independent set, giving length 211. For 59 vertices they join five 10-vertex widgets, double the path by a house, and add a 4-vertex path gadget, giving length 9,895.

The 2022 house-widget note (Christen et al.) builds a different, larger family: k houses whose anchors form a clique, with extra anchor edges that force the houses to flip in the order of a binary counter. Each added house doubles the length. Takashima and Yamaoka describe the same 5-vertex piece and the same doubling, with length 3 × (2^{n/5} − 1).

### piyopiyo (2023 lengths 30, 231, and 11,499)

Suzuki (in Soh et al. 2023) starts from the 10-vertex composition of Bousquet, Durain, and Pierron, which those authors used for 50 and 100 vertices. The 2023 caps are 17, 31, and 59, so that composition does not fill the cap. He adds new pieces on 3 to 9 vertices and chooses, by dynamic programming, the combination of pieces with the longest reconfiguration. The same method produces a sequence of graphs from 3 to 100 vertices. The submitted lengths are 30, 231, and 11,499. For 17 vertices this tied PARIS, and piyopiyo placed first by submission time.

Bousquet, Durain, and Pierron (2022) obtain the 10-vertex core by exhaustive search: three graphs maximize the diameter, and in each case the reconfiguration graph is a path on 11 vertices. Their composition adds a fresh copy of one of those graphs, G1, and joins it to the previous graph so that tokens can move in the new copy only in the start or target state of the old graph. Each composition adds 10 vertices and replaces a distance d by 4d + 10. Iterating from G1 gives n vertices, independent sets of size 3n/10, and distance (10/3)(4^{n/10} − 1). They also record a weaker composition based on the complement of a 5-vertex path, which adds 5 vertices and replaces d by 2d + 3.

### tohoku boar (2023 length 29 on 17 vertices)

Domon, Wakayama, and Suzuki combine a 12-vertex gadget, taken from the 10-vertex graph-track instance of Bousquet, Durain, and Pierron, with a 5-vertex house. Both gadgets are filled to their maximum independent sets, so a token cannot jump from one gadget to the other. The two sets differ by one token in the house. Moving that token requires a 13-step detour in the 12-vertex gadget, then a 3-step house flip, then the same 13-step detour back. The total is 29. The team did not submit a 31- or 59-vertex instance.

### A 10-vertex gadget with a cubic blow-up

Turau and Weyer (2022), in the graph-track half of that collection, define graphs G_c on 10c vertices and independent sets of size 4c. G_1 is a 10-vertex graph whose reconfiguration graph is a path of length 10. G_{c+1} is G_c plus a new copy of G_1, joined by eight edges that force the new copy to traverse its path three times for each traversal of the previous copy. The shortest sequence then has length 5(3^c − 1): 10, 1,210, and 295,240 for 10, 50, and 100 vertices.

## References

- Nicolas Bousquet, Bastien Durain, and Théo Pierron. Graph track description. In Soh, Okamoto, and Ito (2022), pp. 35–37.
- Remo Christen, Salomé Eriksson, Michael Katz, Emil Keyder, Christian Muise, Alice Petrov, Florian Pommerening, Jendrik Seipp, Silvan Sievers, and David Speck. Every House on the Block: A generalized solution to creating ISR instances of large plan length. In Soh, Okamoto, and Ito (2022), pp. 48–52.
- Bruce Chidley, Christian Muise, and Alice Petrov. ISR 2023 Graph Track Documentation. In Soh, Tanjo, Okamoto, and Ito (2023).
- Naoki Domon, Daichi Wakayama, and Takahiro Suzuki. Synergy of Two Powerful Gadgets. In Soh, Tanjo, Okamoto, and Ito (2023).
- Marcin Kamiński, Paul Medvedev, and Martin Milanič. Complexity of independent set reconfiguration problems. *Theoretical Computer Science* 439:9–15, 2012. <https://doi.org/10.1016/j.tcs.2012.03.004>
- Takehide Soh, Yoshio Okamoto, and Takehiro Ito (eds.). Core Challenge 2022: Solver and Graph Descriptions. arXiv:2208.02495, 2022. <https://arxiv.org/abs/2208.02495>
- Takehide Soh, Tomoya Tanjo, Yoshio Okamoto, and Takehiro Ito (eds.). Core Challenge 2023: Solver and Graph Descriptions. arXiv:2310.17136, 2023. <https://arxiv.org/abs/2310.17136>
- Takehide Soh, Tomoya Tanjo, Yoshio Okamoto, and Takehiro Ito. CoRe Challenge 2022/2023: Empirical Evaluations for Independent Set Reconfiguration Problems (Extended Abstract). In *Proceedings of the Seventeenth International Symposium on Combinatorial Search (SoCS 2024)*, pp. 285–286. <https://doi.org/10.1609/socs.v17i1.31583>
- Akira Suzuki. Instance Description for Core Challenge 2023. In Soh, Tanjo, Okamoto, and Ito (2023).
- Akira Suzuki. Every Reconfiguration Starts with a First Step. In Soh, Okamoto, and Ito (2022), pp. 38–40.
- Yuya Takashima and Chuta Yamaoka. The Documentation of Graph Track in Core Challenge. In Soh, Okamoto, and Ito (2022), pp. 53–55.
- Volker Turau and Christoph Weyer. Finding Shortest Reconfigurations Sequences of Independent Sets, and A Series of Graphs With Exponentially Growing Reconfigurations Sequences of Independent Sets. In Soh, Okamoto, and Ito (2022).
