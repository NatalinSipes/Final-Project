#Week4FPDataAnalysisinR

#Several rows of data came from the exact Week 3 FP Data Analysis Practice

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
State_Data_Multiple_Years <- read_excel("C:/Users/NBrad/OneDrive/Desktop/Woz U/Final Project/State_Data_Multiple_Years.xlsx")

#change name of dataset
State_Data <- State_Data_Multiple_Years

#view data
summarize(State_Data)

#column names
names(State_Data)

#Try to plot a histogram for 2009 FIR
plotNormalHistogram(State_Data$`2009 Food Insecurity Rate`)
#looks pretty normally distributed, very slight negative/right skew

#plot normal hist for 2010 FIR
plotNormalHistogram(State_Data$`2010 Food Insecurity Rate`)
#looks normally distributed with tiny negative/right skew

#plot normal hist for 2011 FIR
plotNormalHistogram(State_Data$`2011 Food Insecurity Rate`)
#looks normally distributed with tiny negative skew

#plot normal hist for 2012 FIR
plotNormalHistogram(State_Data$`2012 Food Insecurity Rate`)
#almost perfect distribution, looks great!

#plot normal hist for 2013 FIR
plotNormalHistogram(State_Data$`2013 Food Insecurity Rate`)
#even more centered on distribution than the 2012FIR, great distribution, little tall, looks great!
#noticing a trend at this point....the distribution each year has ever so slightly move to the 
#left towards the center of each histogram. 

#plot normal hist for 2014 FIR
plotNormalHistogram(State_Data$`2014 Food Insecurity Rate`)
#still pretty normally distributed, but moving to the left skew(positively skewed)

#plot normal hist for 2015 FIR
plotNormalHistogram(State_Data$`2015 Food Insecurity Rate`)
#almost perfect distribution, looks great, it shifted back to the right, 
#only the tiniest negative/right skew, almost unnoticeable

#plot normal hist for 2016 FIR
plotNormalHistogram(State_Data$`2016 Food Insecurity Rate`)
#almost perfect distribution, slightly taller, shifted to the left slightly,only tiny 
#positive skew(to the left)

#plot normal hist for 2017 FIR
plotNormalHistogram(State_Data$`2017 Food Insecurity Rate`)
#absolutely gorgeous near perfect distribution, the tiniest left skew(positive skew), looks amazing!

#plot normal hist for 2018 FIR
plotNormalHistogram(State_Data$`2018 Food Insecurity Rate`)
#very normally distributed, tiny positive(left)skew

#plot normal hist for 2019 FIR
plotNormalHistogram(State_Data$`2019 Food Insecurity Rate`)
#became more positively(left) skewed, but still mostly normally distributed

#The skew of the data for years 2009-2019 show data was originally slightly RIGHT SKEWED. 
#The more the data is skewed, the less accurate the data will be. This dataset is remarkable 
#in the fact that the skew only changes slightly from RIGHT SKEW(NEGATIVELY SKEWED) to 
#LEFT SKEW(POSITIVELY SKEWED). If the data is LEFT SKEWED(POSITIVELY SKEWED), that means that 
#the MEAN will be GREATER THAN the MEDIAN. The RIGHT SKEW(NEGATIVELY SKEWED) data shows the 
#MEAN is LESS THAN the MEDIAN. 

#RIGHT skew was noticed in the September 11 terrorist attacks, the housing bubble collapse, 
#and the banking crash of 2007(See Quantitative Easing or QE for further details of why 
#interest rates dropped as an attempt to help strengthen the economy like the Covid-19 pandemic 
#response in the United States of America. $700 billion dollars was used in QE efforts to help 
#American's during this time of low economic activity.) 

#Data skews show the ability for American's to feed their families was at an all time high since 
#the beginning of the 2009 dataset provided by Feeding America.

#do plot normal histograms for all columns all years individually first
plotNormalHistogram(State_Data$`Number of Food Insecure Persons in 2009`)
#extremely left/positively skewed, need to transform data

plotNormalHistogram(State_Data$`Number of Food Insecure Persons in 2010`)
#still extremely left/positively skewed, need to transform data. Only difference is this 
#became only slightly taller when run

plotNormalHistogram(State_Data$`Number of Food Insecure Persons in 2011`)
#still extremely left/positively skewed, need to transform data. Only difference is this 
#became only slightly taller when run

plotNormalHistogram(State_Data$`Number of Food Insecure Persons in 2012`)
#still extremely left/positively skewed, need to transform data. Only difference is this 
#became only slightly taller when run

plotNormalHistogram(State_Data$`Number of Food Insecure Persons in 2013`)
#still extremely left/positively skewed, need to transform data. Only difference is this 
#became only slightly taller and wider when run

plotNormalHistogram(State_Data$`Number of Food Insecure Persons in 2014`)
#still extremely left/positively skewed, need to transform data. Only difference is this 
#became only slightly taller when run

plotNormalHistogram(State_Data$`Number of Food Insecure Persons in 2015`)
#still extremely left/positively skewed, need to transform data. Only difference is this 
#became only slightly shorter when run

plotNormalHistogram(State_Data$`Number of Food Insecure Persons in 2016`)
#still extremely left/positively skewed, need to transform data. Only difference is this 
#became only slightly taller when run

plotNormalHistogram(State_Data$`Number of Food Insecure Persons in 2017`)
#still extremely left/positively skewed, need to transform data. Only difference is this 
#became only slightly taller when run

plotNormalHistogram(State_Data$`Number of Food Insecure Persons in 2018`)
#still extremely left/positively skewed, need to transform data. Only difference is this 
#became only slightly shorter when run

plotNormalHistogram(State_Data$`Number of Food Insecure Persons in 2019`)
#still extremely left/positively skewed, need to transform data. Only difference is this 
#became only slightly taller when run

#skipping 2009 cost per meal due to missing data for Alaska
plotNormalHistogram(State_Data$`2010 Cost Per Meal`)
#very left/positively skewed, need to transform data, somewhat tall

plotNormalHistogram(State_Data$`2011 Cost Per Meal`)
#moved to the right, still left/positively skewed though, needs transformation

plotNormalHistogram(State_Data$`2012 Cost Per Meal`)
#moved to the left, still left/positively skewed, needs transformation

plotNormalHistogram(State_Data$`2013 Cost Per Meal`)
#moved to the right, still left/positively skewed, needs transformation

plotNormalHistogram(State_Data$`2014 Cost Per Meal`)
#looks better! close to being normally distributed, however, this is still slightly left/positively
#skewed, may need transformation

plotNormalHistogram(State_Data$`2015 Cost Per Meal`)
#got taller is all, close to being normally distributed, however, this is still slightly 
#left/positively skewed, may need transformation/may not

plotNormalHistogram(State_Data$`2016 Cost Per Meal`)
#got wider and still left/positively skewed, close to being normally distributed, but may need
#transformation

plotNormalHistogram(State_Data$`2017 Cost Per Meal`)
#shifted left/positively skewed, needs transformation

plotNormalHistogram(State_Data$`2018 Cost Per Meal`)
#became taller, still left/positively skewed, may need transformation

plotNormalHistogram(State_Data$`2019 Cost Per Meal`)
#became shorter, still left/positively skewed, may need transformation

#move on to Child food insecurity Rate
plotNormalHistogram(State_Data$`2009 Child Food Insecurity Rate`)
#pretty normally distributed, almost spot on normal distribution

plotNormalHistogram(State_Data$`2010 Child Food Insecurity Rate`)
#looks pretty good, pretty normally distributed, slightest right/negative skew is all

plotNormalHistogram(State_Data$`2011 Child Food Insecurity Rate`)
#looks pretty good, pretty normally distributed, slightest right/negative skew is all

plotNormalHistogram(State_Data$`2012 Child Food Insecurity Rate`)
#shifted to the right/negatively skewed, needs transformation

plotNormalHistogram(State_Data$`2013 Child Food Insecurity Rate`)
#shifted to the left, still right/negatively skewed, may need transformation

plotNormalHistogram(State_Data$`2014 Child Food Insecurity Rate`)
#shifted to the right slightly, still right/negatively skewed, may need transformation

plotNormalHistogram(State_Data$`2015 Child Food Insecurity Rate`)
#shifted slightly to the left and got taller, slightly right/negatively skewed, might need
#transformation

plotNormalHistogram(State_Data$`2016 Child Food Insecurity Rate`)
#Still right/negatively skewed, looks more normal now since not as tall, might need transformation

plotNormalHistogram(State_Data$`2017 Child Food Insecurity Rate`)
#shifted left slightly and got taller, still looks pretty normally distributed, still 
#right/negatively distributed

plotNormalHistogram(State_Data$`2018 Child Food Insecurity Rate`)
#looks pretty darn good! looks normally distributed! Doesn't need transformation

plotNormalHistogram(State_Data$`2019 Child Food Insecurity Rate`)
#looks pretty normally distributed, got shorter, only the slightest right/negative skew, looks
#pretty darn good

#do histogram for number of FI kids now
plotNormalHistogram(State_Data$`Number of Food Insecure Children in 2009`)
#looks extremely left/positively skewed, needs transformation

plotNormalHistogram(State_Data$`Number of Food Insecure Children in 2010`)
#still looks left/positively skewed, needs transformation, got wider and taller 

plotNormalHistogram(State_Data$`Number of Food Insecure Children in 2011`)
#still looks left/positively skewed, needs transformation, only got a tiny bit shorter

plotNormalHistogram(State_Data$`Number of Food Insecure Children in 2012`)
#still looks left/positively skewed, needs transformation, only got a tiny bit taller

plotNormalHistogram(State_Data$`Number of Food Insecure Children in 2013`)
#still looks left/positively skewed, needs transformation, only got a tiny bit taller

plotNormalHistogram(State_Data$`Number of Food Insecure Children in 2014`)
#still looks left/positively skewed, needs transformation, only got a tiny bit taller

plotNormalHistogram(State_Data$`Number of Food Insecure Children in 2015`)
#still looks left/positively skewed, needs transformation, only got shorter

plotNormalHistogram(State_Data$`Number of Food Insecure Children in 2016`)
#still looks left/positively skewed, needs transformation, still short

plotNormalHistogram(State_Data$`Number of Food Insecure Children in 2017`)
#still looks left/positively skewed, needs transformation, still short

plotNormalHistogram(State_Data$`Number of Food Insecure Children in 2018`)
#still looks left/positively skewed, needs transformation, still short

plotNormalHistogram(State_Data$`Number of Food Insecure Children in 2019`)
#still looks left/positively skewed, needs transformation, still short

#now plot normal hist for < 185 FPL
plotNormalHistogram(State_Data$`2009 % Food Insecure Children in HH w/HH Incomes < 185 FPL`)
#looks almost perfect, normally distributed, base does not touch the x axis however

plotNormalHistogram(State_Data$`2010 % Food Insecure Children in HH w/HH Incomes < 185 FPL`)
#shifted right, somewhat right/negatively skewed, needs transformation

plotNormalHistogram(State_Data$`2011 % Food Insecure Children in HH w/HH Incomes < 185 FPL`)
#shifted left, looks pretty normally distributed, looks pretty good

plotNormalHistogram(State_Data$`2012 % Food Insecure Children in HH w/HH Incomes < 185 FPL`)
#became taller and only the tiniest bit right/negatively skewed

plotNormalHistogram(State_Data$`2013 % Food Insecure Children in HH w/HH Incomes < 185 FPL`)
#shifted right, somewhat right/negatively skewed

plotNormalHistogram(State_Data$`2014 % Food Insecure Children in HH w/HH Incomes < 185 FPL`)
#shifted right, right/negatively skewed, needs transformation possibly

plotNormalHistogram(State_Data$`2015 % Food Insecure Children in HH w/HH Incomes < 185 FPL`)
#right/negatively skewed, needs transformation most likely

plotNormalHistogram(State_Data$`2016 % Food Insecure Children in HH w/HH Incomes < 185 FPL`)
#shifted left, still right/negatively skewed, might need transformation

plotNormalHistogram(State_Data$`2017 % Food Insecure Children in HH w/HH Incomes < 185 FPL`)
#became taller, still right/negatively skewed, might need transformation

plotNormalHistogram(State_Data$`2018 % Food Insecure Children in HH w/HH Incomes < 185 FPL`)
#shifted left, still right/negatively skewed, might need transformation

plotNormalHistogram(State_Data$`2019 % Food Insecure Children in HH w/HH Incomes < 185 FPL`)
#shifted left, still right/negatively skewed, looks more normally distributed now, might need 
#transformation, might not

#plot norm hist for > 185 FPL now
plotNormalHistogram(State_Data$`2009 % Food Insecure Children in HH w/HH Incomes > 185 FPL`)
#looks pretty spot on for normal distribution, no transformation needed

plotNormalHistogram(State_Data$`2010 % Food Insecure Children in HH w/HH Incomes > 185 FPL`)
#shifted left, slightly left/positively skewed, might need transformation

plotNormalHistogram(State_Data$`2011 % Food Insecure Children in HH w/HH Incomes > 185 FPL`)
#shifted right, looks pretty normally distributed, looks great

plotNormalHistogram(State_Data$`2012 % Food Insecure Children in HH w/HH Incomes > 185 FPL`)
#became taller, looks somewhat normal, left tail is not touching the base, right tail isn't 
#either

plotNormalHistogram(State_Data$`2013 % Food Insecure Children in HH w/HH Incomes > 185 FPL`)
#left tail has lifted higher from the base, still slight left/positive skew

plotNormalHistogram(State_Data$`2014 % Food Insecure Children in HH w/HH Incomes > 185 FPL`)
#shifted left, left/positively skewed, needs transformation

plotNormalHistogram(State_Data$`2015 % Food Insecure Children in HH w/HH Incomes > 185 FPL`)
#got taller, left/positively skewed, needs transformation

plotNormalHistogram(State_Data$`2016 % Food Insecure Children in HH w/HH Incomes > 185 FPL`)
#shifted right, still left/positively skewed, might need transformation

plotNormalHistogram(State_Data$`2017 % Food Insecure Children in HH w/HH Incomes > 185 FPL`)
#got taller, still left/positively skewed, might need transformation

plotNormalHistogram(State_Data$`2018 % Food Insecure Children in HH w/HH Incomes > 185 FPL`)
#shifted right, still left/positively skewed slightly, the left tail is not touching, the right
#tail is, needs transformation

plotNormalHistogram(State_Data$`2019 % Food Insecure Children in HH w/HH Incomes > 185 FPL`)
#looks pretty normally distributed, may benefit from transformation, slight left/positive skew

#now plot norm hist, skipping weighted annual budget shortfall for 2009 due to missing fields 
plotNormalHistogram(State_Data$`2010 Weighted Annual Food Budget Shortfall`)
#extreme left/positive skew, needs transformation

plotNormalHistogram(State_Data$`2011 Weighted Annual Food Budget Shortfall`)
#almost exactly the same, extreme left/positive skew, needs transformation

plotNormalHistogram(State_Data$`2012 Weighted Annual Food Budget Shortfall`)
#almost exactly the same, extreme left/positive skew, needs transformation

plotNormalHistogram(State_Data$`2013 Weighted Annual Food Budget Shortfall`)
#slightly taller, extreme left/positive skew, needs transformation

plotNormalHistogram(State_Data$`2014 Weighted Annual Food Budget Shortfall`)
#extreme left/positive skew, needs transformation

plotNormalHistogram(State_Data$`2015 Weighted Annual Food Budget Shortfall`)
#slightly taller, extreme left/positive skew, needs transformation

plotNormalHistogram(State_Data$`2016 Weighted Annual Food Budget Shortfall`)
#slightly wider, extreme left/positive skew, needs transformation

plotNormalHistogram(State_Data$`2017 Weighted Annual Food Budget Shortfall`)
#extreme left/positive skew, needs transformation

plotNormalHistogram(State_Data$`2018 Weighted Annual Food Budget Shortfall`)
#extreme left/positive skew, needs transformation

plotNormalHistogram(State_Data$`2019 Weighted Annual Food Budget Shortfall`)
#got slightly taller, extreme left/positive skew, needs transformation



#lets clean data some more
install.packages("janitor")
library(janitor)

State_Data2 <- clean_names(State_Data)
print(State_Data2)
#column names were already cleaned prior to import in excel, therefore no changes visible

#remove empty rows and columns
State_Data3 <- remove_empty(State_Data2, which = c("rows", "cols"), quiet = FALSE)
#this removed 12 empty rows
view(State_Data3)

