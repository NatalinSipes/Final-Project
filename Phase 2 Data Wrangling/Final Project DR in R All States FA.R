#Final Project All_States Data Wrangling in R

#This data goes with week 2 Data Wrangling 

#All data provided in this newly created Excel spreadsheet by Natalin Williams and Ivette Sierra is data provided 
#by Feeding America for State_Data_Multiple_Years 2009-2019

#Install packages
install.packages('dplyr')
install.packages('tidyr')
install.packages('tidyverse')
install.packages('IDPmisc')
install.packages('readxl')

#Install libraries
library('dplyr')
library('tidyr')
library('tidyverse')
library('IDPmisc')
library('readxl')

#Import dataset State Data Multiple Years
State_Data_Multiple_Years <- read_excel("State_Data_Multiple_Years.xlsx")
#Data imported

#Make sure dataset imported
View(State_Data_Multiple_Years)
#Dataset shows imported correctly

#Rename dataset
State_Data <- State_Data_Multiple_Years

#View new dataset name
view(State_Data)
#Dataset shows it was renamed

#Natalin and Ivette already renamed columns in the new excel spreadsheet to have same wording
#Natalin and Ivette already selected only the columns that we want to use out of the original
  #Feeding America datasets from years 2009-2019. The new spreadsheet was complete with all data
  #the team members chose to keep. 

#View column names
names(State_Data)
#Column names look great and formatted like team members discussed-yeah! There are two states
  #from the 2009 data that had missing values. We researched to see if we could find the numbers.
  #However, the data does not seem to available. We will choose during the analysis week to 
  #either run with the cells dropped or we can drop the entire year based on findings.