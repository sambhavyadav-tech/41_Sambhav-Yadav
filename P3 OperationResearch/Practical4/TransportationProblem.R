# Transportation Problem
#         A    B   C   D   supply
# 1       19  30  50  10     7 
# 2       70  30  40  60     9
# 3       40  8   70  20     18
#DEMAND   5   8   7   14
library(lpSolve)
costs <- matrix(c(19, 30, 50, 10,
                  70, 30, 40, 60,
                  40, 8, 70, 20), nrow = 3, byrow = TRUE)
colnames(costs) <-  c("A","B","C","D")
rownames(costs) <-  c("1","2","3")
row.signs <- rep("<=", 3)
row.rhs <- c(7, 9, 18)
col.signs <- rep(">=", 4)
col.rhs <- c(5, 8, 7, 14)
Totalcost <- lp.transport(costs, "min", row.signs, row.rhs, col.signs, col.rhs)
lp.transport(costs, "min", row.signs, row.rhs, col.signs, col.rhs)$solution
print(Totalcost)
