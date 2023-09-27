library("foreign")
library("modeest")
library("moments")

#Inciso c
#Información sobre la forma de la distribución (asimetría y curtosis)


datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

#Tranformando estatura a pulgadas
datos$estatura <- (datos$estatura * 100)/2.54

#Transformanda el peso a libras
datos$peso <- (datos$peso * 1000)/453.6

#Información
skewness(datos$estatura)
kurtosis(datos$estatura)

skewness(datos$peso)
kurtosis(datos$peso)
