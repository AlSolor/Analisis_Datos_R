library("foreign")
library("modeest")
library("moments")
# Hoe many subjects smoke?
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

datos
smokers <- subset(datos,fumar == "Fumador")
summary(smokers$fumar)
