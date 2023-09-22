#Sixth Exercise
#Calculate the total mean of X (x1 and x2)

x1 <- c(1,2,3,4,5,6)
x2 <- c(3,5,1)

x <- c(x1, x2)
sum_x <- sum(x)
mean_x <- sum_x/length(x)
mean_x

var_x <- (x[1]-mean_x)**2
var_x <- var_x + (x[2]-mean_x)**2
var_x <- var_x + (x[3]-mean_x)**2
var_x <- var_x + (x[4]-mean_x)**2
var_x <- var_x + (x[5]-mean_x)**2
var_x <- var_x + (x[6]-mean_x)**2
var_x <- var_x + (x[7]-mean_x)**2
var_x <- var_x + (x[8]-mean_x)**2
var_x <- var_x + (x[9]-mean_x)**2
var_x <- var_x /(length(x))
var_x
