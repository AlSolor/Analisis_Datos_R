library("foreign")
library("modeest")
library("moments")

#Inciso d
#Las puntuaciones típicas para la variable estatura


datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

#Tranformando estatura a pulgadas
datos$estatura <- (datos$estatura * 100)/2.54

#Transformanda el peso a libras
datos$peso <- (datos$peso * 1000)/453.6

####    Puntuaciones Diferenciales    ####
dest <- (datos$estatura - mean(datos$estatura))
mean(dest)
sd(dest)

####    Puntuaciones tipicas    ####
zest <- (datos$estatura - mean(datos$estatura)) / sd(datos$estatura)
mean(zest)
sd(zest)

hist(zest)
