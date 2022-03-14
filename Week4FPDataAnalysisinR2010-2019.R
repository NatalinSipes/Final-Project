#Week4FPDataAnalysisinRw2010_2019

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


#lets clean data some more
install.packages("janitor")
library(janitor)

#import dataset
State2010_2019 <- read_excel("C:/Users/NBrad/OneDrive/Desktop/Woz U/Final Project/Final Project Datasets/State2010_2019.xlsx")

#rename data
State_Data <- State2010_2019
print(State_Data)

#clean column names if needed
State_Data2 <- clean_names(State_Data)
print(State_Data2)
#column names were already cleaned prior to import in excel, therefore no changes visible

#remove empty rows and columns
State_Data3 <- remove_empty(State_Data2, which = c("rows", "cols"), quiet = FALSE)
#this removed 12 empty rows
view(State_Data3)

State_Data_Cleaned <- distinct(State_Data3)



#now begin working on correlation tests
install.packages("correlation")
library(correlation)

#correlation matrix (Pearson Method)
correlation(State_Data_Cleaned, method = "pearson", p_adjust = "none")
#results are displayed below in the console
#results are endless....for example 2019 number of food insecure persons and 2019 weighted annual budget shortfall are 0.99 and highly correlated
#food insecure persons in 2018 and 2019 are at 1.00 are highly correlated
#2017 and 2019 food budget shortfall are at 1.00 as well and highly correlated
#again results are plentiful and will need further data visualization next week

#correlation matrix (Spearman Method)
correlation(State_Data_Cleaned, method = "spearman", p_adjust = "none")
#results are displayed below in the console
#results are endless again....2018 and 2019 number of food insecure children are at 1.0 which is highly correlated
#number of food insecure persons in 2018 and 2018 weighted annual food budget shortfall are highly correlated
#2017 weighted annual food budget shortfall and number of food insecure children in 2019 are pretty highly correlated

#correlation matrix (Biweight Method)
correlation(State_Data_Cleaned, method = "biweight", p_adjust = "none")
#results are displayed below in the console
#I am finding that the weighted annual food budget shortfall can possibly confirm a correlation in food secure persons and children, for example
#the 2019 weighted annual food budget shortfall compared to number of food insecure children in 2019 is 0.98, almost 1.0, so this is highly
#correlated and almost near perfect at 1.0
#again we see the 2018 and 2019 weighted annual food budget shortfalls are highly correlated at 1.0, so years 2018 and 2019 had similar patterns

#correlation matrix results too large to be well seen on the console screen. Many, many, multiple correlations were 
#found. I will break those down in week 5 for the data viz so we can see what looks interesting other than the information I have listed above for
#each respective test. I am excited to see the visualization results in week 5 after all of our hard work.
