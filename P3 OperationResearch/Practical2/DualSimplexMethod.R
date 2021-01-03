#Dual Simplex method
#Max z= 5x1+12x2+4x3
#subject to
#x1+2x2+x3<=5
#2x1-x2+3x3<=2
#-2x1+x2-3x3<=-2
library(lpSolve)
f.obj <- c(5,12,4)
f.con <- matrix(c(1,2,3,
                  2,-1,3,
                  -2,1,-3),nrow=3,byrow = TRUE)
f.dir <- c("<=",
           "<=",
           "<=")
f.rhs <- c(5,
           2,
           -2)
lp("max",f.obj,f.con,f.dir,f.rhs)
lp("max",f.obj,f.con,f.dir,f.rhs)$solution
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.from
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$sens.coef.to
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.from
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens=TRUE)$duals.to



