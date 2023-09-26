library("foreign")
library("modeest")
library("moments")
#Elabore una escala derivada con media 60 y desviación típica 10 para la variable estabilidad emocional y su representación gráfica.

datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

#Creando la puntuación típica
zstab <- (datos$emocio - mean(datos$emocio)) / sd(datos$emocio)

#Creando la escala derivada
Tstab <- zstab * 10 + 60
boxplot(Tstab,zstab, datos$emocio,
        names = c('Escala Derivada','Puntuación tipica','Original'))
