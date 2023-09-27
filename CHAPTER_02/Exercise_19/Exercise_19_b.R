library("foreign")
library("modeest")
library("moments")

#Inciso b
#Obtener un  gráfico que dé cuenta de la variabilidad en cada una de las variables para los varones y las mujeres


datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

#Tranformando estatura a pulgadas
datos$estatura <- (datos$estatura * 100)/2.54

#Transformanda el peso a libras
datos$peso <- (datos$peso * 1000)/453.6

#Gráfica
boxplot(datos$peso ~ datos$genero)

boxplot(datos$estatura ~ datos$genero)
