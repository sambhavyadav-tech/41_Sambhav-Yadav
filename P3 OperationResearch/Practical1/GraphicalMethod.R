#Graphical method
#Max z=5x+7y
#Subject to
#x+y<=4
#3x+8y<=24
#10x+7y<=35
require(lpSolve)
C <- c(5,7)
A <- matrix(c(1,1,
              3,8,
              10,7), nrow = 3, byrow = TRUE)
B <- c(4,24,35)
constarnints_direction <- c("<=","<=","<=")
plot.new()
plot.window(xlim=c(0,10),ylim =c(0,10))
axis(1) 
axis(2)
box()
title(main = "LPP using Garphical method")
title(xlab = "x axis")
title(ylab = "y axis")
segments(x0=4, y0=0, x1=0, y1=4, col="green")
segments(x0=8, y0=0, x1=0, y1=3, col="green")
segments(x0=3.5, y0=0, x1=0, y1=5,col="green")
optimum <- lp(direction = "max",
              objective.in = C,
              const.mat = A,
              const.dir = constarnints_direction,
              const.rhs = B,
              all.int = T)
print(optimum$status)
best_sol <- optimum$solution
names(best_sol) <-c("x","y")
print(best_sol)
print(paste("Toltal cost=",optimum$objval,sep=""))


