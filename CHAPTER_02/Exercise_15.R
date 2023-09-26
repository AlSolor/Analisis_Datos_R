library("foreign")
library("modeest")
library("moments")
#Obtenga los estadísticos descriptivos univariados y la representación gráfica más adecuada para la variable sinceridad en la muestra total, en la de varones y en la de mujeres.

datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

#For the total subjects
quantile(datos$sincer,c(0.10,0.25,0.50,0.75,0.90))
mean(datos$sincer)
median(datos$sincer)
mfv(datos$sincer)
var(datos$sincer)
sd(datos$sincer)
boxplot(datos$sincer)
skewness(datos$sincer)
kurtosis(datos$sincer)

#For the women
data_women <- subset(datos,genero == 'Mujer')
quantile(data_women$sincer,c(0.10,0.25,0.50,0.75,0.90))
mean(data_women$sincer)
median(data_women$sincer)
mfv(data_women$sincer)
var(data_women$sincer)
sd(data_women$sincer)
boxplot(data_women$sincer)
skewness(data_women$sincer)
kurtosis(data_women$sincer)

#For the men
data_men <- subset(datos,genero == 'Varón')
quantile(data_men$sincer,c(0.10,0.25,0.50,0.75,0.90))
mean(data_men$sincer)
median(data_men$sincer)
mfv(data_men$sincer)
var(data_men$sincer)
sd(data_men$sincer)
boxplot(data_men$sincer)
skewness(data_men$sincer)
kurtosis(data_men$sincer)

#Boxplot
boxplot(datos$sincer,data_women$sincer,data_men$sincer,
        names = c('Total','Women','Men'))
