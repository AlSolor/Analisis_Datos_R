library("foreign")
library("modeest")
library("moments")
#Who has the highest scores in emotional stability, women or mens?

datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)
mujeres <- subset(datos,genero=='Mujer')$emocio
summary(mujeres)
varones <- subset(datos,genero=='Varón')$emocio
summary(varones)
boxplot(datos$emocio ~ datos$genero)

#After obtain the results we can see that the scores of both genders are pretty close.
#Womens present a higher mean, but it is very close to the mean of men
#With the boxplot we can see that men have a larger dispersion, but with a higher value on the thir cuartile
#We will conclude that both groups present the same scores
