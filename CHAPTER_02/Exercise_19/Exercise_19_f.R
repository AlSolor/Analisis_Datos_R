library("foreign")
library("modeest")
library("moments")

#Inciso f
#La covarianza entre ambas variables (calcularlo en formato español y norteamericano).
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)
datos_espa <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

#Tranformando estatura a pulgadas
datos$estatura <- (datos$estatura * 100)/2.54

#Transformanda el peso a libras
datos$peso <- (datos$peso * 1000)/453.6


cov_usa <- cov(datos$estatura, datos$peso)
cov_usa
cov_spa <- cov(datos_espa$estatura, datos_espa$peso)
cov_spa
