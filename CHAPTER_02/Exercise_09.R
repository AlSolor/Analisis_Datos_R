library("foreign")
library("modeest")
library("moments")
# What percentage of males have an 'extra' score above 40 points?
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

datos_varones <- subset(datos,genero == 'Varón')
#We create a frequncy table

#Absolute frequencies
(t1 = table(datos_varones$extra))
#Relative frequencies
(t2 = prop.table(t1))
#Cumulative absolute frecuencies
(t3 = cumsum(t1))
#Cumulative relative frequencies
(t4 = cumsum(t2))

#Creating the data frame
datos_varones_40 <- subset(data.frame(t1,t3,t2,t4),Var1.1 == "40")$t4
datos_varones_40 <- (1-datos_varones_40)*100
datos_varones_40
