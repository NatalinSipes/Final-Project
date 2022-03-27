
#Work of A. Nicole Mosley 
install.packages("dplyr")
library("dplyr")

install.packages("tidyverse")
library("tidyverse")
View(RPPsxState)


#After Importing the "Final RPPs" excel document, removing 1 extra row, and naming the dataset "RPPsxState," I set about subsetting the data to obtain columns with the RPP values of ALL states for a specific year. These values were also all grouped according to their "LineCode."
#For example, LineCode 1 designates all values for the RPP of all items (goods, housing, utilities, and other) for a specific state. LineCode 2 represents the RPP value for "goods" for a respective state, LineCode3 for "housing," and so on. 

#Variables work when LineCode is in Asc. Order
#LineCode = 1
allitems2008 <- RPPsxState[c(2:52), c(5)]
allitems2009 <- RPPsxState[c(2:52), c(6)]
allitems2010 <- RPPsxState[c(2:52), c(7)]
allitems2011 <- RPPsxState[c(2:52), c(8)]
allitems2012 <- RPPsxState[c(2:52), c(9)]
allitems2013 <- RPPsxState[c(2:52), c(10)]
allitems2014 <- RPPsxState[c(2:52), c(11)]
allitems2015 <- RPPsxState[c(2:52), c(12)]
allitems2016 <- RPPsxState[c(2:52), c(13)]
allitems2017 <- RPPsxState[c(2:52), c(14)]
allitems2018 <- RPPsxState[c(2:52), c(15)]
allitems2019 <- RPPsxState[c(2:52), c(16)]
allitems2020 <- RPPsxState[c(2:52), c(17)]

#If I pull up the subsettted data in "allitems2008," I should be able to obtain a column of all the state RPP values for ALL items for 2008. 
#With these values, I can obtain summary statistics for each year, beginning with 2008, and so on. The same can be done accordingly for the other RPP categories. 
#LineCode = 2
goods2008 <- RPPsxState[c(54:104), c(5)]
goods2009 <- RPPsxState[c(54:104), c(6)]
goods2010 <- RPPsxState[c(54:104), c(7)]
goods2011 <- RPPsxState[c(54:104), c(8)]
goods2012 <- RPPsxState[c(54:104), c(9)]
goods2013 <- RPPsxState[c(54:104), c(10)]
goods2014 <- RPPsxState[c(54:104), c(11)]
goods2015 <- RPPsxState[c(54:104), c(12)]
goods2016 <- RPPsxState[c(54:104), c(13)]
goods2017 <- RPPsxState[c(54:104), c(14)]
goods2018 <- RPPsxState[c(54:104), c(15)]
goods2019 <- RPPsxState[c(54:104), c(16)]
goods2020 <- RPPsxState[c(54:104), c(17)]

#LineCode = 3
svchousing2008<- RPPsxState[c(106:156), c(5)]
svchousing2009<- RPPsxState[c(106:156), c(6)]
svchousing2010<- RPPsxState[c(106:156), c(7)]
svchousing2011<- RPPsxState[c(106:156), c(8)]
svchousing2012<- RPPsxState[c(106:156), c(9)]
svchousing2013<- RPPsxState[c(106:156), c(10)]
svchousing2014<- RPPsxState[c(106:156), c(11)]
svchousing2015<- RPPsxState[c(106:156), c(12)]
svchousing2016<- RPPsxState[c(106:156), c(13)]
svchousing2017<- RPPsxState[c(106:156), c(14)]
svchousing2018<- RPPsxState[c(106:156), c(15)]
svchousing2019<- RPPsxState[c(106:156), c(16)]
svchousing2020<- RPPsxState[c(106:156), c(17)]

#LineCode = 4
svcutility2008<- RPPsxState[c(158:208), c(5)]
svcutility2009<- RPPsxState[c(158:208), c(6)]
svcutility2010<- RPPsxState[c(158:208), c(7)]
svcutility2011<- RPPsxState[c(158:208), c(8)]
svcutility2012<- RPPsxState[c(158:208), c(9)]
svcutility2013<- RPPsxState[c(158:208), c(10)]
svcutility2014<- RPPsxState[c(158:208), c(11)]
svcutility2015<- RPPsxState[c(158:208), c(12)]
svcutility2016<- RPPsxState[c(158:208), c(13)]
svcutility2017<- RPPsxState[c(158:208), c(14)]
svcutility2018<- RPPsxState[c(158:208), c(15)]
svcutility2019<- RPPsxState[c(158:208), c(16)]
svcutility2020<- RPPsxState[c(158:208), c(17)]

#LineCode = 5
svcother2008<- RPPsxState[c(210:260), c(5)]
svcother2009<- RPPsxState[c(210:260), c(6)]
svcother2010<- RPPsxState[c(210:260), c(7)]
svcother2011<- RPPsxState[c(210:260), c(8)]
svcother2012<- RPPsxState[c(210:260), c(9)]
svcother2013<- RPPsxState[c(210:260), c(10)]
svcother2014<- RPPsxState[c(210:260), c(11)]
svcother2015<- RPPsxState[c(210:260), c(12)]
svcother2016<- RPPsxState[c(210:260), c(13)]
svcother2017<- RPPsxState[c(210:260), c(14)]
svcother2018<- RPPsxState[c(210:260), c(15)]
svcother2019<- RPPsxState[c(210:260), c(16)]
svcother2020<- RPPsxState[c(210:260), c(17)]


#Sample Statistics
summary(allitems2008)
summary(goods2008)
summary(svchousing2008)
summary(svcutility2008)
summary(svcother2008)

#Here is where I decided to create various vectors of subsetted data for each state. 
#Theoretically, I could make many different subsets to represent whichever group of data I want to examine 
#but each vector here represents the RPP values for each respective state across ALL years (2008-2020) for the RPP category of ALL ITEMS. 

#ALL ITEMS- LINECODE 1
Alabama1 <- RPPsxState[c(1), c(5:17)]
Alaska1 <- RPPsxState[c(2), c(5:17)]
Arizona1 <- RPPsxState[c(3), c(5:17)]
Arkansas1 <- RPPsxState[c(4), c(5:17)]
California1 <- RPPsxState[c(5), c(5:17)]
Colorado1 <- RPPsxState[c(6), c(5:17)]
Connecticut1 <- RPPsxState[c(7), c(5:17)]
Delaware1 <- RPPsxState[c(8), c(5:17)]
DC1 <- RPPsxState[c(9), c(5:17)]
Florida1 <- RPPsxState[c(10), c(5:17)]
Georgia1 <- RPPsxState[c(11), c(5:17)]
Hawaii1 <- RPPsxState[c(12), c(5:17)]
Idaho1 <- RPPsxState[c(13), c(5:17)]
Illinois1 <- RPPsxState[c(14), c(5:17)]
Indiana1 <- RPPsxState[c(15), c(5:17)]
Iowa1 <- RPPsxState[c(16), c(5:17)]
Kansas1 <- RPPsxState[c(17), c(5:17)]
Kentucky1 <- RPPsxState[c(18), c(5:17)]
Louisiana1 <- RPPsxState[c(19), c(5:17)]
Maine1 <- RPPsxState[c(20), c(5:17)]
Maryland1 <- RPPsxState[c(21), c(5:17)]
Massachusetts1 <- RPPsxState[c(22), c(5:17)]
Michigan1 <- RPPsxState[c(23), c(5:17)]
Minnesota1 <- RPPsxState[c(24), c(5:17)]
Mississippi1 <- RPPsxState[c(25), c(5:17)]
Missouri1 <- RPPsxState[c(26), c(5:17)]
Montana1 <- RPPsxState[c(27), c(5:17)]
Nebraska1 <- RPPsxState[c(28), c(5:17)]
Nevada1 <- RPPsxState[c(29), c(5:17)]
NewHampshire1 <- RPPsxState[c(30), c(5:17)]
NewJersey1 <- RPPsxState[c(31), c(5:17)]
NewMexico1 <- RPPsxState[c(32), c(5:17)]
NewYork1 <- RPPsxState[c(33), c(5:17)]
NorthCarolina1 <- RPPsxState[c(34), c(5:17)]
NorthDakota1 <- RPPsxState[c(35), c(5:17)]
Ohio1 <- RPPsxState[c(36), c(5:17)]
Oklahoma1 <- RPPsxState[c(37), c(5:17)]
Oregon1 <- RPPsxState[c(38), c(5:17)]
Pennsylvania1 <- RPPsxState[c(39), c(5:17)]
RhodeIsland1 <- RPPsxState[c(40), c(5:17)]
SouthCarolina1 <- RPPsxState[c(41), c(5:17)]
SouthDakota1 <- RPPsxState[c(42), c(5:17)]
Tennessee1 <- RPPsxState[c(43), c(5:17)]
Texas1 <- RPPsxState[c(44), c(5:17)]
Utah1 <- RPPsxState[c(46), c(5:17)]
Vermont1 <- RPPsxState[c(47), c(5:17)]
Virginia1 <- RPPsxState[c(48), c(5:17)]
Washington1 <- RPPsxState[c(49), c(5:17)]
WestVirginia1 <- RPPsxState[c(50), c(5:17)]
Wisconsin1 <- RPPsxState[c(51), c(5:17)]
Wyoming1 <- RPPsxState[c(52), c(5:17)]

#Thus, "Alabama1" will give me a row of the RPP values for ALL ITEMS for the state of Alabama from 2008 to 2020. 









