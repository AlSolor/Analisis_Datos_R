library("foreign")
library("modeest")
library("moments")
#Which is the central value of the height? And the central value for weight?
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

median(datos$estatura)
mean(datos$estatura)
median(datos$peso)
mean(datos$peso)
