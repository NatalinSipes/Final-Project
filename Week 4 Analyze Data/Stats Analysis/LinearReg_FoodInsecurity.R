install.packages("MVN")
install.packages("goftest")
install.packages("nlme")
install.packages("MASS")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyverse")
install.packages("ISLR")
install.packages("car")
library(MVN)
library(goftest)
library(nlme)
library(MASS)
library(dplyr)
library(ggplot2)
library(tidyverse)
library(ISLR)
library(car)

#Create a data frame of Explanatory (IV) and Response Variable (DV)
FI <- c(data2016$`Food_Insecurity(%)`)
FIbyState <- data.frame(StateID, FI)

#Plot on xy graph
plot(FIbyState$StateID, FIbyState$FI)
FIbyState.regression <- lm(FI~StateID, data=FIbyState)

summary(FIbyState.regression)

#Creating Vectors for Dataframes
StateName <- c(stats2016$State)
State <- c(stats2016$StateID)
Region <- c(stats2016$Region)
FIvalues <- c(stats2016$`Food_Insecurity(%)`)
ChildFI<- c(stats2016$`Child_FI(%)`)
Unemployment <- c(stats2016$`Unemployment_Rate(%)`)
Poverty <- c(stats2016$`Pop_Below_Poverty(%)`)
RPP <-c(stats2016$`RPPall(%)`)

#Two Created Dataframes
#Has FI and ChildFI values
FIStates <- data.frame(State, FIvalues, ChildFI, Unemployment, Poverty, RPP)
#Has only FI values, but not ChildFI
FIOnlyStates <- data.frame(State, FIvalues, Unemployment, Poverty, RPP)
#Plot data
plot(FIStates)
#Because FI and ChildFI are highly correlated, we likely only need 1 of them
plot(FIOnlyStates)

#Model Testing Effect of 3 Explanatory Variables on Food Insecurity
model1 <-lm(FIvalues ~ Unemployment + Poverty + RPP)
summary(model1)

#Model Testing Effect of 3 Explanatory Variables on Child Food Insecurity
model2 <-lm(ChildFI ~ Unemployment + Poverty + RPP)
summary(model2)


#Model 1 seems to be the most statistically significant 

#Variables: RPP, Unemployment, Poverty

#Calculate Pearson's correlation between unemployment and poverty 
#Moderate positive correlation
cor(Unemployment, Poverty, method="pearson")
#Between poverty and RPP - WEAK negative correlation
cor(Poverty, RPP, method="pearson")
#Between Unemployment and RPP - VERY WEAK correlation
cor(Unemployment, RPP, method="pearson")


#Confidence intervals for model coefficients
confint(model1, conf.level=0.95)
confint(model2, conf.level=0.95)
confint(model3, conf.level=0.95)

#Fit a model using all x variables

modelA <- lm(FIvalues ~ State + Unemployment + Poverty + RPP)

summary(modelA)

#Need to check assumptions!





