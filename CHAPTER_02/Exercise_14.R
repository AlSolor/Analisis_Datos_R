library("foreign")
library("modeest")
library("moments")
#Are the technical subjects equal to the humanity subjects in spatial orientation?

datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)
summary(datos)

technical_sub <- subset(datos,rama == 'Humanidades')
humanity_sub <- subset(datos,rama == 'Enseñanzas técnicas')
summary(technical_sub$orient)
summary(humanity_sub$orient)

boxplot(technical_sub$orient,humanity_sub$orient)

#From the values of mean, median and max and min values we can see that they do not present the same distribution