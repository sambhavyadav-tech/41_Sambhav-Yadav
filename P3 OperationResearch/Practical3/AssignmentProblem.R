# Assignment Problem
#     Job1 Job2 Job3 Job4 
#w1   8     26   17   11
#w2   13    28   4    26
#w3   38    19   18   15
#w4   19    26   24   10
library(lpSolve)
costs <- matrix(c(8, 26, 17, 11, 
                  13, 28, 4, 26,
                  38, 19, 18, 15, 
                  19, 26, 24, 10), nrow = 4, byrow = TRUE)
costs
lp.assign(costs)
lp.assign(costs)$solution
              