library("foreign")
library("modeest")
library("moments")

#Inciso a
#Obtener la varianza y la media de estatura y peso en escala norteamericana

datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)
summary(datos$peso)

#Transformando la altura a pulgadas
datos$estatura <- (datos$estatura * 100)/2.54

#Transformanda el peso a libras
datos$peso <- (datos$peso * 1000)/453.6

#Obteniendo la media y la varianza
mean(datos$estatura)
var(datos$estatura)

mean(datos$peso)
var(datos$peso)

