#Install Packages 
install.packages("dplyr")
library("dplyr")

install.packages("tidyverse")
library("tidyverse")
View(RPPsxState)

#Subset into regions
unempNE <- stateunemp[c(1:9), c(1:15)]
unempSE <- stateunemp[c(10:24), c(1:15)]
unempMW <- stateunemp[c(25:36), c(1:15)]
unempSW <- stateunemp[c(37:40), c(1:15)]
unempW <- stateunemp[c(41:51), c(1:15)]

#Subset into years
unemp09 <- stateunemp[c(10:24), c(1,2,3)]
unemp10 <- stateunemp[c(10:24), c(1,2,4)]
unemp11 <- stateunemp[c(10:24), c(1,2,5)]
unemp12 <- stateunemp[c(10:24), c(1,2,6)]
unemp13 <- stateunemp[c(10:24), c(1,2,7)]
unemp14 <- stateunemp[c(10:24), c(1,2,8)]
unemp15 <- stateunemp[c(10:24), c(1,2,9)]
unemp16 <- stateunemp[c(10:24), c(1,2,10)]
unemp17 <- stateunemp[c(10:24), c(1,2,11)]
unemp18 <- stateunemp[c(10:24), c(1,2,12)]
unemp19 <- stateunemp[c(10:24), c(1,2,13)]
unemp20 <- stateunemp[c(10:24), c(1,2,14)]
unemp21 <- stateunemp[c(10:24), c(1,2,15)]

#Get summary statistics
summary(unempNE)
summary(unempSE)
summary(unempMW)
summary(unempSW)
summary(unempW)

