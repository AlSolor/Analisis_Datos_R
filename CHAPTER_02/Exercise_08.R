library("foreign")
library("modeest")
library("moments")
# Obtain the best plot for gender, height, inteli and rama
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

summary(datos$genero)
#Gender only has two nominal values, so a pie chart is the best option to see the proportion of women and men
pie(table(datos$genero))

summary(datos$estatura)
#Height has discrete values so a boxplot is the best
boxplot(datos$estatura,
        main="Height boxplot",
        xlab="estatura")

summary(datos$inteli)
#For the scores we use a histogram to see the distribution
hist(datos$inteli)

#For a categorical value is better the barchart
barplot(table(datos$rama))
