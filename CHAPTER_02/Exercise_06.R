library("foreign")
library("modeest")
library("moments")
# How many subjects are from Andalucia?
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)
#With a little search on internet we found out that Almeria, Cadiz, Cordoba, Granada, Huelva, Jaen, Malaga and Sevilla
#are provinces from Andalucia

#idprov for Andalucia provinces are from 1-8

summary(datos$idprov)

#From summary we can see that there isn't any record for a subject with an idprov below 11.
#So there are zero subjects from Andalucia
