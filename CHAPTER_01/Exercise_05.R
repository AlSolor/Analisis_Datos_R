#Fifth exercise
#Calculate the mean and the variance of x2 without the use of the mean() and var() functions

x1 <- c(3,5,1)

sum_values <- sum(x1)
mean_x1 <- sum_values / length(x1)
mean_x1


var_x1 <- ((x1[1]-mean_x1)**2)
var_x1 <- var_x1 + ((x1[2]-mean_x1)**2)
var_x1 <- var_x1 + ((x1[3]-mean_x1)**2)
var_x1 <- var_x1 / length(x1)
var_x1
