library("foreign")
library("modeest")
library("moments")
#Determine the minimun and the maximum height of the dataset, also fin the same values for women and men

datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)
min_dataset <- min(datos$estatura)
min_dataset
max_dataset <- max(datos$estatura)
max_dataset

datos_varones <- subset.data.frame(practica, genero == "Varón")
datos_mujeres <- subset.data.frame(practica, genero == "Mujer")
datos_mujeres

min_varones <- min(datos_varones$estatura)
max_varones <- max(datos_varones$estatura)
min_varones
max_varones


min_mujeres <- min(datos_mujeres$estatura)
max_mujeres <- max(datos_mujeres$estatura)
min_mujeres
max_mujeres
          