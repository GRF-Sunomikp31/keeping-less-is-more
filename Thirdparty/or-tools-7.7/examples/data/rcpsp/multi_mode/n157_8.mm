************************************************************************
file with basedata            : cn157_.bas
initial value random generator: 103619624
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  126
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       18        6       18
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   9  14
   3        3          2           8  11
   4        3          3           5   6  15
   5        3          2           7  13
   6        3          3           8  10  11
   7        3          2          12  17
   8        3          3          13  14  16
   9        3          3          12  13  15
  10        3          2          12  14
  11        3          1          16
  12        3          1          16
  13        3          1          17
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     2       7    0    7
         2     5       0   10    5
         3     8       0    7    4
  3      1     1       9    0    6
         2     2       0    6    6
         3     8       6    0    4
  4      1     2       0    5    7
         2     9       0    5    2
         3     9      10    0    5
  5      1     3       6    0    4
         2     6       5    0    4
         3     7       0    2    3
  6      1     1       6    0    6
         2     8       6    0    4
         3     9       5    0    4
  7      1     8       0    9    9
         2    10       0    8    6
         3    10       2    0    5
  8      1     1       3    0    7
         2     3       0    8    5
         3     6       0    8    3
  9      1     1       0    2    5
         2     2       5    0    4
         3     6       4    0    2
 10      1     3       0    7    5
         2     5       7    0    4
         3     7       5    0    4
 11      1     4       0    6    4
         2     8       7    0    4
         3     9       5    0    4
 12      1     1       0    6    9
         2     3       6    0    7
         3     8       6    0    5
 13      1     5       4    0    2
         2     5       0   10    2
         3     9       0    2    1
 14      1     3       5    0   10
         2     6       0    4    7
         3     9       0    1    4
 15      1     3       7    0    9
         2     7       6    0    7
         3     9       5    0    6
 16      1     4       0    9    8
         2     5       4    0    7
         3     7       0    7    3
 17      1     3       0    7    8
         2     5       8    0    7
         3     5       0    3    8
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   11    8  106
************************************************************************