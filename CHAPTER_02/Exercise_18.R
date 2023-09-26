library("foreign")
library("modeest")
library("moments")
#Elabore un informe descriptivo sobre la variable edad expresada en meses. En dicho
#informe tienen que aparecer los estadísticos de tendencia central, de variabilidad,
#las propiedades de la distribución y una representación gráfica
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)
summary(datos$edad)
datos$edad <- datos$edad * 12
summary(datos$edad)

####    Central tendency    ####
mean(datos$edad)
median(datos$edad)
mfv(datos$edad)

var(datos$edad)
sd(datos$edad)


####    Pearson coeficient    ####
(CV_edad = (sd(practica$edad)/mean(practica$edad))* 100)
skewness(practica$edad)
kurtosis(practica$edad)

boxplot(datos$edad)

