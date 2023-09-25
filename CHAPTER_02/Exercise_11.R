library("foreign")
library("modeest")
library("moments")
# Create the best fit plot for the licen variable
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)


summary(datos$licen)
barplot(table(datos$licen),
        las = 2)
