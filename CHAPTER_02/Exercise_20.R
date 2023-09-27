library("foreign")
library("modeest")
library("moments")

#Calcule la media y la varianza para la variable que resulta de la suma de las variables inteligencia, comprensión verbal y orientación espacial.

datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

Y = datos$inteli + datos$compren +datos$orient
mean(Y)
var(Y)
