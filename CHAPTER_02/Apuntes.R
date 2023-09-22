#Descriptive Analysis
install.packages("modeest")
install.packages("moments")
library("foreign")
library("modeest")
library("moments")
practica <- read.spss('../datasets/practica.sav', to.data.frame = TRUE)

summary(practica$edad)

####    Creating the frequencies table    ####

#Absolute frequencies
(t1 = table(practica$edad))
#Relative frequencies
(t2 = prop.table(t1))
#Cumulative absolute frecuencies
(t3 = cumsum(t1))
#Cumulative relative frequencies
(t4 = cumsum(t2))

#Creating the data frame
data.frame(t1,t3,t2,t4)

####    Plots and charts    ####
hist(practica$edad)
barplot(table(practica$edad))
pie(table(practica$rama))

####    Percentiles    ####
quantile(practica$edad, c(0.1,0.25,0.50,0.75,0.9))

####    Central tendency    ####
mean(practica$edad)
median(practica$peso)
mfv(practica$rama)

var(practica$edad)
sd(practica$edad)

####    Pearson coeficient    ####
(CV_edad = (sd(practica$edad)/mean(practica$edad))* 100)


####    Boxplot    ####
boxplot(practica$edad ~ practica$rama)

####    Skewness    ####
skewness(practica$edad)
kurtosis(practica$edad)

####    Puntuaciones Diferenciales    ####
dedad <- (practica$edad - mean(practica$edad))
dedad[1:10]
mean(dedad)
sd(dedad)

####    Puntuaciones tipicas    ####
zedad <- (practica$edad - mean(practica$edad)) / sd(practica$edad)
zedad[1:10]
mean(zedad)
sd(zedad)

####    Escalas derivadas    ####
Tedad <- zedad * 10 + 50
mean(Tedad)
sd(Tedad)

####    Selección de grupos    ####
practica2 <- subset.data.frame(practica,genero == 'Varón')
summary(practica2)

hist(practica2$edad,main="Distribución de edades en varones")


####    Segmentación de datos    ####
# Promedio por genero
aggregate(practica$edad, by=list(practica$genero), mean)
#Desviación por genero
aggregate(practica$edad, by=list(practica$genero), sd)


####    Analisis con dos variables    ####
cov(practica$peso, practica$estatura)
cor(practica$peso, practica$estatura)

####    Graficos de dispersión    ####
plot(practica$peso, practica$estatura,
     main = "Gráfico de Dispersión",
     xlab = "Peso [kg]", ylab = "Estatura [m]",
     xlim = c(40,90), ylim = c(1.5,1.9),
     points(practica$peso, practica$estatura, col = "black", pch = 20))

####Matriz de varianzas y correlaciones    ####
