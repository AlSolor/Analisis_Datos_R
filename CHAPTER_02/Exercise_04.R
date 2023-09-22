library("foreign")
library("modeest")
library("moments")
# Obtenga el valor del peso que es superado por el 15 % de la muestra
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

quantile(datos$peso,0.85)
