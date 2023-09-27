library("foreign")
library("modeest")
library("moments")

#Se desea predecir las puntuaciones en estabilidad emocional a partir de una de las siguientes variables: inteligencia, extraversión, responsabilidad y sinceridad.
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

#Uso de matriz de correlaciones para determinar que variable tiene una mayor correlacion
cor(datos[, c("emocio","inteli","extra","respon","sincer")])
plot(datos[, c("emocio","inteli","extra","respon","sincer")])
plot(datos[, c("respon","emocio")],
     xlab = "Responsabilidad", ylab = "Estabilidad")

#Obteniendo la regresión entre Responsabilidad y Estabilidad
