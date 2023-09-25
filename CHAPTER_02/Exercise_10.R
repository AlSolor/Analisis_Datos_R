library("foreign")
library("modeest")
library("moments")
# Create a boxplot with height for men, women and for the total subject
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

datos_varones <- subset(datos,genero == 'Varón')
datos_mujeres <- subset(datos,genero == 'Mujer')

boxplot(datos_varones$estatura,datos_mujeres$estatura,datos$estatura,
        main = 'Boxplot for heights',
        names = c('Male','Female','Total'))
