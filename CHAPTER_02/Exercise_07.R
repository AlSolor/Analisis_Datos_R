library("foreign")
library("modeest")
library("moments")
# Which of the four personality characteristics has the lowest scores?
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

summary(datos[c('extra','respon','emocio','sincer')])

boxplot(datos$extra,datos$respon,datos$emocio,datos$sincer,
        main='Gráfico de las caracteristicas',
        names = c('Extraversión','Responsabilidad','Estabilidad Emocional','Sinceridad'))
#From summary and boxplot is pretty esay to find that Sincerity is the characteristic with the lower score
