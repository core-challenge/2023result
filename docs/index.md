# Result

- [Result](#result)
- [Graph Track](#graph-track)
- [Solver Track](#solver-track)
  - [overall existent (cpu)](#overall-existent-cpu)
  - [overall existent (wallclock)](#overall-existent-wallclock)
  - [overall longest (cpu)](#overall-longest-cpu)
  - [overall longest (wallclock)](#overall-longest-wallclock)
  - [overall shortest (cpu)](#overall-shortest-cpu)
  - [overall shortest (wallclock)](#overall-shortest-wallclock)
  - [single existent (cpu)](#single-existent-cpu)
  - [single existent (wallclock)](#single-existent-wallclock)
  - [single longest (cpu)](#single-longest-cpu)
  - [single longest (wallclock)](#single-longest-wallclock)
  - [single shortest (cpu)](#single-shortest-cpu)
  - [single shortest (wallclock)](#single-shortest-wallclock)
- [Participated Teams](#participated-teams)
  - [sano (@sano38)](#sano-sano38)
  - [NU-ASP team (@katomasato1202)](#nu-asp-team-katomasato1202)
  - [ddreconf (@suisen-cp)](#ddreconf-suisen-cp)
  - [PARIS-solver (@haz)](#paris-solver-haz)
  - [PARIS-graph (@haz)](#paris-graph-haz)
  - [piyopiyo (@akkyhowa)](#piyopiyo-akkyhowa)
  - [tohoku boar (@daichan132)](#tohoku-boar-daichan132)

# Graph Track

| Graph Size |                                                                                                                                                                     PARIS |                                                                                                                                                                               piyopiyo |                                                                                                                                                                               tohoku boar |
| ---------: | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
|         17 |   30 [col](/2023result/graph/PARIS/graph-le17/graph17.col), [datl](/2023result/graph/PARIS/graph-le17/graph17.dat), [out](/2023result/graph/PARIS/graph-le17/graph17.out) |    30 [col](/2023result/graph/piyopiyo/graph-le17/graph_17.col), [datl](/2023result/graph/piyopiyo/graph-le17/graph_17.dat), [out](/2023result/graph/piyopiyo/graph-le17/graph_17.out) | 29 [col](/2023result/graph/tohoku_boar/graph-le17/graph17.col), [datl](/2023result/graph/tohoku_boar/graph-le17/graph17.dat), [out](/2023result/graph/tohoku_boar/graph-le17/graph17.out) |
|         31 |  211 [col](/2023result/graph/PARIS/graph-le31/graph31.col), [datl](/2023result/graph/PARIS/graph-le31/graph31.dat), [out](/2023result/graph/PARIS/graph-le31/graph31.out) |   231 [col](/2023result/graph/piyopiyo/graph-le31/graph_31.col), [datl](/2023result/graph/piyopiyo/graph-le31/graph_31.dat), [out](/2023result/graph/piyopiyo/graph-le31/graph_31.out) |                                                                                                                                                                                        NA |
|         59 | 9895 [col](/2023result/graph/PARIS/graph-le59/graph59.col), [datl](/2023result/graph/PARIS/graph-le59/graph59.dat), [out](/2023result/graph/PARIS/graph-le59/graph59.out) | 11499 [col](/2023result/graph/piyopiyo/graph-le59/graph_59.col), [datl](/2023result/graph/piyopiyo/graph-le59/graph_59.dat), [out](/2023result/graph/piyopiyo/graph-le59/graph_59.out) |                                                                                                                                                                                        NA |

- For the graph sized 17, the tiebreak was conducted based on the submission date/time. First place goes to piyopiyo.

# Solver Track
## overall existent (cpu)
| Series           | #Ins. | max. #Nodes | max Len. | PARIS-existent1 | PARIS-existent2 | NU-ASP-existent1 | NU-ASP-existent2 | NU-ASP-existent3 | sano | ddreconf |
| :--------------- | ----: | ----------: | -------: | --------------: | --------------: | ---------------: | ---------------: | ---------------: | ---: | -------: |
| color04          |   202 |       10000 |      112 |             202 |             202 |              200 |              200 |              200 |  154 |       76 |
| grid             |    49 |       40000 |        8 |              25 |              47 |                5 |               18 |               20 |   17 |       13 |
| handcrafted      |     6 |          36 |       69 |               6 |               6 |                6 |                6 |                6 |    6 |        6 |
| power            |    17 |         304 |   442175 |               4 |               6 |                0 |                0 |                0 |    2 |       11 |
| queen            |    48 |       40000 |       94 |              48 |              48 |               26 |               26 |               25 |    9 |        8 |
| sp               |    30 |         390 |   360437 |               9 |              11 |                4 |                4 |                3 |    6 |       15 |
| square           |    17 |         204 |     1722 |               7 |              17 |                1 |                1 |                1 |    3 |       17 |
| exp\_instance    |    20 |         670 |     4239 |               9 |              13 |                6 |                6 |                6 |    7 |       17 |
| power\_wide      |    17 |         608 |   221003 |               0 |               6 |                0 |                0 |                0 |    0 |       10 |
| power\_wider     |    17 |         912 |   110423 |               0 |               6 |                0 |                0 |                0 |    0 |        9 |
| square\_wide     |    17 |         408 |     1722 |               1 |              17 |                0 |                0 |                0 |    0 |       17 |
| square\_wider    |    17 |         612 |     1722 |               0 |              15 |                0 |                0 |                0 |    0 |       17 |
| ph-isr           |    36 |        9205 |       31 |               2 |               6 |                0 |                1 |                1 |    1 |        3 |
| random\_instance |   200 |         520 |      115 |             143 |             143 |              194 |              194 |              194 |   17 |       36 |
| Total            |   693 |             |          |             456 |             543 |              442 |              456 |              456 |  222 |      255 |
## overall existent (wallclock)
| Series           | #Ins. | max. #Nodes | max Len. | PARIS-existent1 | PARIS-existent2 | NU-ASP-existent1 | NU-ASP-existent2 | NU-ASP-existent3 | sano | ddreconf |
| :--------------- | ----: | ----------: | -------: | --------------: | --------------: | ---------------: | ---------------: | ---------------: | ---: | -------: |
| color04          |   202 |       10000 |      112 |             202 |             202 |              200 |              200 |              200 |  153 |       76 |
| grid             |    49 |       40000 |        8 |              25 |              47 |                5 |               18 |               20 |   17 |       13 |
| handcrafted      |     6 |          36 |       69 |               6 |               6 |                6 |                6 |                6 |    6 |        6 |
| power            |    17 |         304 |   442175 |               4 |               6 |                0 |                0 |                0 |    2 |       11 |
| queen            |    48 |       40000 |       94 |              48 |              48 |               26 |               26 |               26 |    8 |        8 |
| sp               |    30 |         390 |   360437 |               9 |              11 |                4 |                4 |                4 |    6 |       15 |
| square           |    17 |         204 |     1722 |               7 |              17 |                1 |                1 |                1 |    3 |       17 |
| exp\_instance    |    20 |         670 |     4239 |               9 |              13 |                6 |                6 |                6 |    7 |       17 |
| power\_wide      |    17 |         608 |   221003 |               0 |               6 |                0 |                0 |                0 |    0 |       10 |
| power\_wider     |    17 |         912 |   110423 |               0 |               5 |                0 |                0 |                0 |    0 |        9 |
| square\_wide     |    17 |         408 |     1722 |               1 |              17 |                0 |                0 |                0 |    0 |       17 |
| square\_wider    |    17 |         612 |     1722 |               0 |              15 |                0 |                0 |                0 |    0 |       17 |
| ph-isr           |    36 |        9205 |       31 |               2 |               6 |                0 |                1 |                1 |    1 |        3 |
| random\_instance |   200 |         520 |      115 |             143 |             143 |              194 |              194 |              194 |   17 |       35 |
| Total            |   693 |             |          |             456 |             542 |              442 |              456 |              458 |  220 |      254 |
## overall longest (cpu)
| Series           | #Ins. | max. #Nodes | max Len. | PARIS-longest1 | PARIS-longest2 | NU-ASP-longest1 | NU-ASP-longest2 | sano | ddreconf |
| :--------------- | ----: | ----------: | -------: | -------------: | -------------: | --------------: | --------------: | ---: | -------: |
| color04          |   202 |       10000 |      112 |             73 |             87 |              98 |             108 |   11 |        4 |
| grid             |    49 |       40000 |        8 |              1 |              1 |               0 |               1 |    0 |        0 |
| handcrafted      |     6 |          36 |       69 |              3 |              4 |               4 |               4 |    1 |        1 |
| power            |    17 |         304 |   442175 |              0 |              4 |               0 |               0 |    0 |        7 |
| queen            |    48 |       40000 |       94 |              4 |             31 |               7 |               8 |    0 |        0 |
| sp               |    30 |         390 |   360437 |              8 |              8 |               2 |               2 |    5 |       14 |
| square           |    17 |         204 |     1722 |              7 |             13 |               0 |               0 |    0 |        4 |
| exp\_instance    |    20 |         670 |     4239 |              8 |              9 |               3 |               5 |    3 |       12 |
| power\_wide      |    17 |         608 |   221003 |              3 |              1 |               0 |               0 |    0 |        6 |
| power\_wider     |    17 |         912 |   110423 |              2 |              1 |               0 |               0 |    0 |        6 |
| square\_wide     |    17 |         408 |     1722 |              9 |              5 |               0 |               0 |    0 |        5 |
| square\_wider    |    17 |         612 |     1722 |              8 |              5 |               0 |               0 |    0 |        6 |
| ph-isr           |    36 |        9205 |       31 |              0 |              1 |               0 |               0 |    0 |        0 |
| random\_instance |   200 |         520 |      115 |             15 |             55 |              66 |              33 |    1 |        1 |
| Total            |   693 |             |          |            141 |            225 |             180 |             161 |   21 |       66 |
## overall longest (wallclock)
| Series           | #Ins. | max. #Nodes | max Len. | PARIS-longest1 | PARIS-longest2 | NU-ASP-longest1 | NU-ASP-longest2 | sano | ddreconf |
| :--------------- | ----: | ----------: | -------: | -------------: | -------------: | --------------: | --------------: | ---: | -------: |
| color04          |   202 |       10000 |      112 |             68 |             77 |              69 |             143 |   11 |        4 |
| grid             |    49 |       40000 |        8 |              2 |              2 |               0 |               1 |    0 |        0 |
| handcrafted      |     6 |          36 |       69 |              3 |              4 |               4 |               4 |    1 |        1 |
| power            |    17 |         304 |   442175 |              0 |              4 |               0 |               0 |    0 |        7 |
| queen            |    48 |       40000 |       94 |              4 |             29 |               5 |              10 |    0 |        0 |
| sp               |    30 |         390 |   360437 |              8 |              8 |               2 |               2 |    5 |       14 |
| square           |    17 |         204 |     1722 |              7 |             13 |               0 |               0 |    0 |        3 |
| exp\_instance    |    20 |         670 |     4239 |              8 |              9 |               3 |               5 |    3 |       12 |
| power\_wide      |    17 |         608 |   221003 |              3 |              1 |               0 |               0 |    0 |        6 |
| power\_wider     |    17 |         912 |   110423 |              2 |              1 |               0 |               0 |    0 |        6 |
| square\_wide     |    17 |         408 |     1722 |              8 |              4 |               0 |               0 |    0 |        5 |
| square\_wider    |    17 |         612 |     1722 |              8 |              4 |               0 |               0 |    0 |        6 |
| ph-isr           |    36 |        9205 |       31 |              0 |              1 |               0 |               0 |    0 |        0 |
| random\_instance |   200 |         520 |      115 |             15 |             50 |              13 |              96 |    1 |        1 |
| Total            |   693 |             |          |            136 |            207 |              96 |             261 |   21 |       65 |
## overall shortest (cpu)
| Series           | #Ins. | max. #Nodes | max Len. | PARIS-shortest1 | PARIS-shortest2 | NU-ASP-shortest1 | NU-ASP-shortest2 | sano | ddreconf |
| :--------------- | ----: | ----------: | -------: | --------------: | --------------: | ---------------: | ---------------: | ---: | -------: |
| color04          |   202 |       10000 |      112 |             198 |             198 |              200 |              200 |  154 |       76 |
| grid             |    49 |       40000 |        8 |               2 |               2 |                2 |                2 |    2 |        2 |
| handcrafted      |     6 |          36 |       69 |               5 |               5 |                5 |                5 |    5 |        5 |
| power            |    17 |         304 |   442175 |               4 |               7 |                0 |                0 |    2 |       11 |
| queen            |    48 |       40000 |       94 |              46 |              46 |               25 |               25 |    9 |        8 |
| sp               |    30 |         390 |   360437 |               9 |              11 |                2 |                3 |    6 |       15 |
| square           |    17 |         204 |     1722 |               6 |              17 |                0 |                0 |    3 |       17 |
| exp\_instance    |    20 |         670 |     4239 |               9 |              13 |                5 |                5 |    7 |       17 |
| power\_wide      |    17 |         608 |   221003 |               0 |               6 |                0 |                0 |    0 |       10 |
| power\_wider     |    17 |         912 |   110423 |               0 |               6 |                0 |                0 |    0 |        9 |
| square\_wide     |    17 |         408 |     1722 |               0 |              17 |                0 |                0 |    0 |       17 |
| square\_wider    |    17 |         612 |     1722 |               0 |              15 |                0 |                0 |    0 |       17 |
| ph-isr           |    36 |        9205 |       31 |               1 |               1 |                0 |                0 |    0 |        1 |
| random\_instance |   200 |         520 |      115 |             140 |             140 |              194 |              195 |   17 |       36 |
| Total            |   693 |             |          |             420 |             484 |              433 |              435 |  205 |      241 |
## overall shortest (wallclock)
| Series           | #Ins. | max. #Nodes | max Len. | PARIS-shortest1 | PARIS-shortest2 | NU-ASP-shortest1 | NU-ASP-shortest2 | sano | ddreconf |
| :--------------- | ----: | ----------: | -------: | --------------: | --------------: | ---------------: | ---------------: | ---: | -------: |
| color04          |   202 |       10000 |      112 |             198 |             198 |              200 |              200 |  153 |       76 |
| grid             |    49 |       40000 |        8 |               2 |               2 |                2 |                2 |    2 |        2 |
| handcrafted      |     6 |          36 |       69 |               5 |               5 |                5 |                5 |    5 |        5 |
| power            |    17 |         304 |   442175 |               4 |               7 |                0 |                0 |    2 |       11 |
| queen            |    48 |       40000 |       94 |              46 |              45 |               25 |               25 |    8 |        8 |
| sp               |    30 |         390 |   360437 |               9 |              11 |                2 |                3 |    6 |       15 |
| square           |    17 |         204 |     1722 |               6 |              17 |                0 |                0 |    3 |       17 |
| exp\_instance    |    20 |         670 |     4239 |               9 |              13 |                5 |                5 |    7 |       17 |
| power\_wide      |    17 |         608 |   221003 |               0 |               6 |                0 |                0 |    0 |       10 |
| power\_wider     |    17 |         912 |   110423 |               0 |               6 |                0 |                0 |    0 |        9 |
| square\_wide     |    17 |         408 |     1722 |               0 |              17 |                0 |                0 |    0 |       17 |
| square\_wider    |    17 |         612 |     1722 |               0 |              15 |                0 |                0 |    0 |       17 |
| ph-isr           |    36 |        9205 |       31 |               1 |               1 |                0 |                0 |    0 |        1 |
| random\_instance |   200 |         520 |      115 |             140 |             140 |              194 |              197 |   17 |       35 |
| Total            |   693 |             |          |             420 |             483 |              433 |              437 |  203 |      240 |
## single existent (cpu)
| Series           | #Ins. | max. #Nodes | max Len. | PARIS-existent1 | NU-ASP-existent1 | sano | ddreconf |
| :--------------- | ----: | ----------: | -------: | --------------: | ---------------: | ---: | -------: |
| color04          |   202 |       10000 |      112 |             202 |              200 |  154 |       76 |
| grid             |    49 |       40000 |        8 |              25 |                5 |   17 |       13 |
| handcrafted      |     6 |          36 |       69 |               6 |                6 |    6 |        6 |
| power            |    17 |         304 |   442175 |               4 |                0 |    2 |       11 |
| queen            |    48 |       40000 |       94 |              48 |               26 |    9 |        8 |
| sp               |    30 |         390 |   360437 |               9 |                4 |    6 |       15 |
| square           |    17 |         204 |     1722 |               7 |                1 |    3 |       17 |
| exp\_instance    |    20 |         670 |     4239 |               9 |                6 |    7 |       17 |
| power\_wide      |    17 |         608 |   221003 |               0 |                0 |    0 |       10 |
| power\_wider     |    17 |         912 |   110423 |               0 |                0 |    0 |        9 |
| square\_wide     |    17 |         408 |     1722 |               1 |                0 |    0 |       17 |
| square\_wider    |    17 |         612 |     1722 |               0 |                0 |    0 |       17 |
| ph-isr           |    36 |        9205 |       31 |               2 |                0 |    1 |        3 |
| random\_instance |   200 |         520 |      115 |             143 |              194 |   17 |       36 |
| Total            |   693 |             |          |             456 |              442 |  222 |      255 |
## single existent (wallclock)
| Series           | #Ins. | max. #Nodes | max Len. | PARIS-existent1 | NU-ASP-existent1 | sano | ddreconf |
| :--------------- | ----: | ----------: | -------: | --------------: | ---------------: | ---: | -------: |
| color04          |   202 |       10000 |      112 |             202 |              200 |  153 |       76 |
| grid             |    49 |       40000 |        8 |              25 |                5 |   17 |       13 |
| handcrafted      |     6 |          36 |       69 |               6 |                6 |    6 |        6 |
| power            |    17 |         304 |   442175 |               4 |                0 |    2 |       11 |
| queen            |    48 |       40000 |       94 |              48 |               26 |    8 |        8 |
| sp               |    30 |         390 |   360437 |               9 |                4 |    6 |       15 |
| square           |    17 |         204 |     1722 |               7 |                1 |    3 |       17 |
| exp\_instance    |    20 |         670 |     4239 |               9 |                6 |    7 |       17 |
| power\_wide      |    17 |         608 |   221003 |               0 |                0 |    0 |       10 |
| power\_wider     |    17 |         912 |   110423 |               0 |                0 |    0 |        9 |
| square\_wide     |    17 |         408 |     1722 |               1 |                0 |    0 |       17 |
| square\_wider    |    17 |         612 |     1722 |               0 |                0 |    0 |       17 |
| ph-isr           |    36 |        9205 |       31 |               2 |                0 |    1 |        3 |
| random\_instance |   200 |         520 |      115 |             143 |              194 |   17 |       35 |
| Total            |   693 |             |          |             456 |              442 |  220 |      254 |
## single longest (cpu)
| Series           | #Ins. | max. #Nodes | max Len. | PARIS-longest1 | NU-ASP-longest1 | sano | ddreconf |
| :--------------- | ----: | ----------: | -------: | -------------: | --------------: | ---: | -------: |
| color04          |   202 |       10000 |      112 |            101 |             134 |   11 |        4 |
| grid             |    49 |       40000 |        8 |              2 |               0 |    0 |        0 |
| handcrafted      |     6 |          36 |       69 |              4 |               4 |    1 |        1 |
| power            |    17 |         304 |   442175 |              4 |               0 |    0 |        7 |
| queen            |    48 |       40000 |       94 |              8 |              14 |    0 |        0 |
| sp               |    30 |         390 |   360437 |              8 |               2 |    5 |       14 |
| square           |    17 |         204 |     1722 |             14 |               0 |    0 |        4 |
| exp\_instance    |    20 |         670 |     4239 |             11 |               5 |    4 |       14 |
| power\_wide      |    17 |         608 |   221003 |              4 |               0 |    0 |        6 |
| power\_wider     |    17 |         912 |   110423 |              3 |               0 |    0 |        6 |
| square\_wide     |    17 |         408 |     1722 |             12 |               0 |    0 |        5 |
| square\_wider    |    17 |         612 |     1722 |             11 |               0 |    0 |        6 |
| ph-isr           |    36 |        9205 |       31 |              1 |               0 |    0 |        0 |
| random\_instance |   200 |         520 |      115 |             18 |              78 |    1 |        1 |
| Total            |   693 |             |          |            201 |             237 |   22 |       68 |
## single longest (wallclock)
| Series           | #Ins. | max. #Nodes | max Len. | PARIS-longest1 | NU-ASP-longest1 | sano | ddreconf |
| :--------------- | ----: | ----------: | -------: | -------------: | --------------: | ---: | -------: |
| color04          |   202 |       10000 |      112 |            101 |             133 |   11 |        4 |
| grid             |    49 |       40000 |        8 |              2 |               0 |    0 |        0 |
| handcrafted      |     6 |          36 |       69 |              4 |               4 |    1 |        1 |
| power            |    17 |         304 |   442175 |              4 |               0 |    0 |        7 |
| queen            |    48 |       40000 |       94 |              8 |              15 |    0 |        0 |
| sp               |    30 |         390 |   360437 |              8 |               2 |    5 |       14 |
| square           |    17 |         204 |     1722 |             14 |               0 |    0 |        3 |
| exp\_instance    |    20 |         670 |     4239 |             10 |               5 |    3 |       13 |
| power\_wide      |    17 |         608 |   221003 |              4 |               0 |    0 |        6 |
| power\_wider     |    17 |         912 |   110423 |              3 |               0 |    0 |        6 |
| square\_wide     |    17 |         408 |     1722 |             11 |               0 |    0 |        6 |
| square\_wider    |    17 |         612 |     1722 |             10 |               0 |    0 |        7 |
| ph-isr           |    36 |        9205 |       31 |              1 |               0 |    0 |        0 |
| random\_instance |   200 |         520 |      115 |             18 |              78 |    1 |        1 |
| Total            |   693 |             |          |            198 |             237 |   21 |       68 |
## single shortest (cpu)
| Series           | #Ins. | max. #Nodes | max Len. | PARIS-shortest1 | NU-ASP-shortest1 | sano | ddreconf |
| :--------------- | ----: | ----------: | -------: | --------------: | ---------------: | ---: | -------: |
| color04          |   202 |       10000 |      112 |             198 |              200 |  154 |       76 |
| grid             |    49 |       40000 |        8 |               2 |                2 |    2 |        2 |
| handcrafted      |     6 |          36 |       69 |               5 |                5 |    5 |        5 |
| power            |    17 |         304 |   442175 |               4 |                0 |    2 |       11 |
| queen            |    48 |       40000 |       94 |              46 |               25 |    9 |        8 |
| sp               |    30 |         390 |   360437 |               9 |                2 |    6 |       15 |
| square           |    17 |         204 |     1722 |               6 |                0 |    3 |       17 |
| exp\_instance    |    20 |         670 |     4239 |               9 |                5 |    7 |       17 |
| power\_wide      |    17 |         608 |   221003 |               0 |                0 |    0 |       10 |
| power\_wider     |    17 |         912 |   110423 |               0 |                0 |    0 |        9 |
| square\_wide     |    17 |         408 |     1722 |               0 |                0 |    0 |       17 |
| square\_wider    |    17 |         612 |     1722 |               0 |                0 |    0 |       17 |
| ph-isr           |    36 |        9205 |       31 |               1 |                0 |    0 |        1 |
| random\_instance |   200 |         520 |      115 |             140 |              194 |   17 |       36 |
| Total            |   693 |             |          |             420 |              433 |  205 |      241 |
## single shortest (wallclock)
| Series           | #Ins. | max. #Nodes | max Len. | PARIS-shortest1 | NU-ASP-shortest1 | sano | ddreconf |
| :--------------- | ----: | ----------: | -------: | --------------: | ---------------: | ---: | -------: |
| color04          |   202 |       10000 |      112 |             198 |              200 |  153 |       76 |
| grid             |    49 |       40000 |        8 |               2 |                2 |    2 |        2 |
| handcrafted      |     6 |          36 |       69 |               5 |                5 |    5 |        5 |
| power            |    17 |         304 |   442175 |               4 |                0 |    2 |       11 |
| queen            |    48 |       40000 |       94 |              46 |               25 |    8 |        8 |
| sp               |    30 |         390 |   360437 |               9 |                2 |    6 |       15 |
| square           |    17 |         204 |     1722 |               6 |                0 |    3 |       17 |
| exp\_instance    |    20 |         670 |     4239 |               9 |                5 |    7 |       17 |
| power\_wide      |    17 |         608 |   221003 |               0 |                0 |    0 |       10 |
| power\_wider     |    17 |         912 |   110423 |               0 |                0 |    0 |        9 |
| square\_wide     |    17 |         408 |     1722 |               0 |                0 |    0 |       17 |
| square\_wider    |    17 |         612 |     1722 |               0 |                0 |    0 |       17 |
| ph-isr           |    36 |        9205 |       31 |               1 |                0 |    0 |        1 |
| random\_instance |   200 |         520 |      115 |             140 |              194 |   17 |       35 |
| Total            |   693 |             |          |             420 |              433 |  203 |      240 |


# Participated Teams

## sano (@sano38)

| Name        | Affiliation        |
| ----------- | ------------------ |
| Masaya Sano | Shinshu University |


## NU-ASP team (@katomasato1202)

| Name              | Affiliation       |
| ----------------- | ----------------- |
| Masato Kato       | Nagoya University |
| Shuji Kosuge      | Nagoya University |
| Yuya Yamada       | Nagoya University |
| Kazuki Takada     | Nagoya University |
| Aoi Ito           | Nagoya University |
| Mutsunori Banbara | Nagoya University |

## ddreconf (@suisen-cp)

| Name         | Affiliation      |
| ------------ | ---------------- |
| Jun Kawahara | Kyoto University |
| Shou Ohba    | Kyoto University |

## PARIS-solver (@haz)

| Name                | Affiliation          |
| ------------------- | -------------------- |
| Remo Christen       | University of Basel  |
| Salomé Eriksson     | University of Basel  |
| Michael Katz        | IBM Research         |
| Christian Muise     | Queen's University   |
| Florian Pommerening | University of Basel  |
| Jendrik Seipp       | Linköping University |
| Silvan Sievers      | University of Basel  |
| David Speck         | Linköping University |


## PARIS-graph (@haz)

| Name            | Affiliation        |
| --------------- | ------------------ |
| Alice Petrov    | Queen's University |
| Bruce Chidley   | Queen's University |
| Christian Muise | Queen's University |

## piyopiyo (@akkyhowa)

| Name         | Affiliation                                                |
| ------------ | ---------------------------------------------------------- |
| Akira Suzuki | Graduate School of Information Sciences,Tohoku University. |

## tohoku boar (@daichan132)

| Name            | Affiliation                                                |
| --------------- | ---------------------------------------------------------- |
| Naoki Domon     | Graduate School of Information Sciences, Tohoku University |
| Daichi Wakayama | Graduate School of Information Sciences, Tohoku University |
| Takahiro Suzuki | Graduate School of Information Sciences, Tohoku University |
