#Final Project 2010 Data

#Plot Normal Histograms
#install packages
install.packages('tidyr')
install.packages('dplyr')
install.packages('tidyverse')
install.packages('IDPmisc')
install.packages('ggplot2')
install.packages('rcompanion')

#install libraries
library(tidyr)
library(dplyr)
library(tidyverse)
library(IDPmisc)
library(ggplot2)
library(rcompanion)

#import dataset
stats2010 <- read_excel("C:/Users/NBrad/OneDrive/Desktop/Woz U/Final Project/Final Project Week 6/stats2010.xlsx")

#view data
View(stats2010)

#column names
names(stats2010)

#Plot Normal Histograms
#If the data is LEFT SKEWED(POSITIVELY SKEWED), that means that 
#the MEAN will be GREATER THAN the MEDIAN. The RIGHT SKEW(NEGATIVELY SKEWED) data shows the 
#MEAN is LESS THAN the MEDIAN.

#Try to plot a histogram for 2010 FIR
plotNormalHistogram(stats2010$"Food_Insecurity(%)")
#not normally distributed. Skewed to the right(negative)

#plot hist for UR
plotNormalHistogram(stats2010$`Unemployment_Rate(%)`)
#pretty normally distributed. Tails still not quite touching the bottom line.


#plot hist for PBP
plotNormalHistogram(stats2010$`Pop_Below_Poverty(%)`)
#Pretty normally distributed. Slightly left skewed(positive)

#plot hist for RPPall
plotNormalHistogram(stats2010$`RPPall(%)`)
#Not normally distributed at all

#plot hist for CFI
plotNormalHistogram(stats2010$`Child_FI(%)`)
#Not normally distributed. Right tail isn't touching the bottom. 