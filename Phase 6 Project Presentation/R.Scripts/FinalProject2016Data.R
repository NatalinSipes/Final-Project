#Final Project 2016 Data

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
Stats2016new <- read.csv('C:/Users/NBrad/OneDrive/Desktop/Woz U/Final Project/Final Project Week 5/Week 6 New Code/Stats2016New.csv') 

#view data
View(Stats2016new)

#column names
names(Stats2016new)

#Plot Normal Histograms
#If the data is LEFT SKEWED(POSITIVELY SKEWED), that means that 
#the MEAN will be GREATER THAN the MEDIAN. The RIGHT SKEW(NEGATIVELY SKEWED) data shows the 
#MEAN is LESS THAN the MEDIAN.

#Try to plot a histogram for 2016 FIR
plotNormalHistogram(Stats2016new$"Food_Insecurity")
#Pretty normally distributed other than slightly leptokurtic(+ for kurtosis(tall))

#hist for UR
plotNormalHistogram(Stats2016new$"Unemployment_Rate")
#somewhat normally distributed other than mesokurtic(tails not touching the bottom on either side)

#hist for PBP
plotNormalHistogram(Stats2016new$"Pop_Below_Poverty")
#Pretty normally distributed other than slightly left skewed(positively) and tails not touching

#hist for RPPall
plotNormalHistogram(Stats2016new$"RPPall")
#Not normally distributed at all. The tails aren't touching at all and is mesokurtic

#hist for CFI
plotNormalHistogram(Stats2016new$"Child_FI")
#looks slightly normally distributed, other than slightly skewed right(negatively) and tails not 
#touching all the way

#hist for Region
plotNormalHistogram(Stats2016new$"Region")
#results were very platykurtic. Not normal at all. 