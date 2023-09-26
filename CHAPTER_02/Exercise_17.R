library("foreign")
library("modeest")
library("moments")
# Confeccione el histograma para la variable edad en la muestra total, en la de varones y en la de mujeres
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

edad_hombres <- subset(datos,genero == 'Varón')$estatura
summary(edad_hombres)
edad_mujeres <- subset(datos, genero == 'Mujer')$estatura
summary(edad_mujeres)
summary(datos$estatura)
boxplot(datos$estatura,edad_hombres,edad_mujeres,
        names = c('Total','Hombres','Mujeres'))
