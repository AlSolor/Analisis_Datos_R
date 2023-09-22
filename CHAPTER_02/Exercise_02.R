library("foreign")
library("modeest")
library("moments")
#Determine the percentage of subjects with a height below 1.65 m
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)


#Absolute frequencies
(t1 = table(datos$estatura))
#Relative frequencies
(t2 = prop.table(t1))
#Cumulative absolute frecuencies
(t3 = cumsum(t1))
#Cumulative relative frequencies
(t4 = cumsum(t2))

edades <- data.frame(t1,t3,t2,t4)
solution <- edades[edades$Var1.1 == "1.65",6]*100
solution
