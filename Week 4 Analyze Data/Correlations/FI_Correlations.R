#Install necessary packages
install.packages("corrplot")
install.packages("Hmisc")
library("dplyr")
library("tidyverse")
library("corrplot")

library("Hmisc")
library("janitor")

#Determine data type of each column in df
str(Matrix09)
#Prepare data into subsetted rows
data09 <- Matrix09[, c(2,3,4)]
#Print first 6 rows
head(data09, 6)
#Compute Correlation Matrix- 2009
res <- cor(data09)
round(res, 2)


#Correlation stats
data09 <- Matrix09[, c(2,3,4)]
cor(data09, use = "complete.obs")

res2 <- rcorr(as.matrix(data09))
res2

#Corrplot
corrplot(corr = cor(data09))

#New Matrix
#2009
str(Matrix09)
data09 <- Matrix09[, c(2,3,4)]
cor(data09, use = "complete.obs")

#2010
data10 <- Matrix10[, c(2,3,4)]
cor(data10, use = "complete.obs")

#2011
data11 <- Matrix11[, c(2,3,4)]
cor(data11, use = "complete.obs")

#2012
data12 <- Matrix12[, c(2,3,4)]
cor(data12, use = "complete.obs")

#2013- Can take from either 2013 dataset since values for Income-Poverty ratio are considered NaN's
data13_3 <- Matrix13_3[, c(2,3,4)]
cor(data13_3, use = "complete.obs")

#2014
data14 <- Matrix14[, c(2,3,4)]
cor(data14, use = "complete.obs")

#2015
data15 <- Matrix15[, c(2,3,4)]
cor(data15, use = "complete.obs")

#2016
data16 <- Matrix16[, c(2,3,4)]
cor(data16, use = "complete.obs")

#2017
data17 <- Matrix17[, c(2,3,4)]
cor(data17, use = "complete.obs")

#2018
data18 <- Matrix18[, c(2,3,4)]
cor(data18, use = "complete.obs")

#2019
#Without only variables from columns 2:4
data19 <- Matrix19[, c(2,3,4)]
cor(data19, use = "complete.obs")

#With all variables
str(Matrix19)
#Prepare data into subsetted rows
data19 <- Matrix19[, c(2,3,4,5,6,7,8,9,10,11,12,13)]
#Print first 6 rows
head(data09, 6)
#Compute Correlation Matrix- 2009
res19 <- cor(data19)
round(res19, 2)
corrplot(corr = cor(data19))

#2020- Using USDA Food Insecurity Rates
data20 <- Matrix20[, c(2,3,4)]
data20
cor(data20, use = "complete.obs")




