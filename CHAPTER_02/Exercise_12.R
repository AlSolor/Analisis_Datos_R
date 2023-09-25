library("foreign")
library("modeest")
library("moments")
# The company con only hire people with a responsability score >= 52 points.
#How many subjects would be hired if the company only allows respon scores >= 52
datos <- read.spss('datasets/practica.sav', to.data.frame = TRUE)

#Create a frequency table
#Absolute frequencies
(t1 = table(datos$respon))
#Relative frequencies
(t2 = prop.table(t1))
#Cumulative absolute frecuencies
(t3 = cumsum(t1))
#Cumulative relative frequencies
(t4 = cumsum(t2))

#Creating the data frame
subjects <- data.frame(t1,t3,t2,t4)

#We select the amount of subjects with a score of 52 or below
subject_below_52 <- subset(subjects,Var1 == '51')$t3


#Then we select the total subjects
total_subjects <- subset(subjects,Var1 == max(datos$respon))$t3

#Finally we obtain the amount of subjects to hire
subjects_to_hire <- total_subjects - subject_below_52
subjects_to_hire
