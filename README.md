# Food Insecurity in the United States of America

![Hunts Point inside one of the Warehouses](https://user-images.githubusercontent.com/90985349/160289375-983f6c1e-2a18-43f7-9c3e-af03639067cb.jpg)

Analysis of food insecurity statistics for the United States of America from 2010-2021.

For completion of the Final Project requirement of the Entity Academy, Southern Career’s Institute, and Woz-U Data Science curriculum.

A collaborative project by A. Nicole Mosley, Ivette Sierra, and Natalin Williams Sipes

# Phase 1: Dataset Collection 
### (Completed February 20, 2021)

The datasets were collected and wrangled via Microsoft Excel, RStudio, and Python from Feeding America, the U.S. Census Bureau, the U.S. Department of Agriculture-Economic Research Service (USDA-ERS), the Bureau of Economic Analysis (BEA), and the Bureau of Labor Statistics (BLS) 

### Datasets from Feeding America, U.S. Census Bureau, USDA-ERS, BEA, BLS:

#### Feeding America
[2009-2011](https://github.com/NatalinSipes/Final-Project/blob/d8b2e9243020d2bd0936ccf0f4426f74cd3a6a81/Phase%201%20Dataset%20Collection/Feeding%20America%20Data/Map%20the%20Meal%20Gap%20Data_FeedingAmerica/MMG2011_2009Data_ToShare.xlsx)<br />
[2010-2012](https://github.com/NatalinSipes/Final-Project/blob/e2eb9cb3fe1309fb3f19ddcfc790248cc7e38fcb/Phase%201%20Dataset%20Collection/Feeding%20America%20Data/Map%20the%20Meal%20Gap%20Data_FeedingAmerica/MMG2012_2010Data_ToShare.xlsx)<br />
[2011-2013](https://github.com/NatalinSipes/Final-Project/blob/e2eb9cb3fe1309fb3f19ddcfc790248cc7e38fcb/Phase%201%20Dataset%20Collection/Feeding%20America%20Data/Map%20the%20Meal%20Gap%20Data_FeedingAmerica/MMG2013_2011Data_ToShare.xlsx)<br />
[2012-2014](https://github.com/NatalinSipes/Final-Project/blob/e2eb9cb3fe1309fb3f19ddcfc790248cc7e38fcb/Phase%201%20Dataset%20Collection/Feeding%20America%20Data/Map%20the%20Meal%20Gap%20Data_FeedingAmerica/MMG2014_2012Data_ToShare.xlsx)<br />
[2013-2015](https://github.com/NatalinSipes/Final-Project/blob/e2eb9cb3fe1309fb3f19ddcfc790248cc7e38fcb/Phase%201%20Dataset%20Collection/Feeding%20America%20Data/Map%20the%20Meal%20Gap%20Data_FeedingAmerica/MMG2015_2013Data_ToShare.xlsx)<br />
[2014-2016](https://github.com/NatalinSipes/Final-Project/blob/e2eb9cb3fe1309fb3f19ddcfc790248cc7e38fcb/Phase%201%20Dataset%20Collection/Feeding%20America%20Data/Map%20the%20Meal%20Gap%20Data_FeedingAmerica/MMG2016_2014Data_ToShare.xlsx)<br />
[2015-2017](https://github.com/NatalinSipes/Final-Project/blob/e2eb9cb3fe1309fb3f19ddcfc790248cc7e38fcb/Phase%201%20Dataset%20Collection/Feeding%20America%20Data/Map%20the%20Meal%20Gap%20Data_FeedingAmerica/MMG2017_2015Data_ToShare.xlsx)<br />
[2016-2018](https://github.com/NatalinSipes/Final-Project/blob/e2eb9cb3fe1309fb3f19ddcfc790248cc7e38fcb/Phase%201%20Dataset%20Collection/Feeding%20America%20Data/Map%20the%20Meal%20Gap%20Data_FeedingAmerica/MMG2018_2016Data_ToShare.xlsx)<br />
[2017-2019](https://github.com/NatalinSipes/Final-Project/blob/e2eb9cb3fe1309fb3f19ddcfc790248cc7e38fcb/Phase%201%20Dataset%20Collection/Feeding%20America%20Data/Map%20the%20Meal%20Gap%20Data_FeedingAmerica/MMG2019_2017Data_ToShare.xlsx)<br />
[2018-2020](https://github.com/NatalinSipes/Final-Project/blob/e2eb9cb3fe1309fb3f19ddcfc790248cc7e38fcb/Phase%201%20Dataset%20Collection/Feeding%20America%20Data/Map%20the%20Meal%20Gap%20Data_FeedingAmerica/MMG2020_2018Data_ToShare.xlsx)<br />
[2019-2021](https://github.com/NatalinSipes/Final-Project/blob/e2eb9cb3fe1309fb3f19ddcfc790248cc7e38fcb/Phase%201%20Dataset%20Collection/Feeding%20America%20Data/Map%20the%20Meal%20Gap%20Data_FeedingAmerica/MMG2021_2019Data_ToShare.xlsx)<br />
[Map the Meal Gap Overview](https://github.com/NatalinSipes/Final-Project/blob/e2eb9cb3fe1309fb3f19ddcfc790248cc7e38fcb/Phase%201%20Dataset%20Collection/Feeding%20America%20Data/Map%20the%20Meal%20Gap%20Data_FeedingAmerica/Map%20the%20Meal%20Gap%20Overview%20and%20FAQ%2010.2020.pdf)<br />

#### U.S. Census Bureau
[Percent of People by Ratio of Income to Poverty Level: 1970 to 2020](https://github.com/NatalinSipes/Final-Project/blob/64ff02c6ae434dd381451ebcdde28cc66261f524/Phase%201%20Dataset%20Collection/Percent%20by%20Ratio%20of%20Income%20to%20Poverty,%201970-2020%20.xlsx)<br />

#### U.S. Department of Agriculture - Economic Research Service (USDA-ERS)
[Trends in prevalence rates of food insecurity and very low food security in U.S. households, 1995-2020](https://github.com/NatalinSipes/Final-Project/blob/2e0f817f8952fbf215300f3c93cf7ac16fff6470/Phase%201%20Dataset%20Collection/Trends%20in%20prevalence%20rates%20of%20food%20insecurity%20and%20very%20low%20food%20security_US%20households,%201995-2020.xlsx)<br />
[Percentage of households reporting indicators of adult food insecurity, by food security status, 2020](https://github.com/NatalinSipes/Final-Project/blob/482c777f33fc0e21769e473fdacbdc0abda6629c/Phase%201%20Dataset%20Collection/Perc.%20of%20households%20reporting%20indicators%20of%20adult%20FI,%20by%20food%20security%20status,%202020.xlsx)<br />
[Prevalence of very low food security by selected household characteristics, 2020](https://github.com/NatalinSipes/Final-Project/blob/64ff02c6ae434dd381451ebcdde28cc66261f524/Phase%201%20Dataset%20Collection/Prevalence%20of%20Very%20Low%20FI%20by%20selected%20household%20characteristics,%202020.xlsx)<br />

#### Bureau of Economic Analysis (BEA)
[Regional Price Parities: 2008-2020](https://github.com/NatalinSipes/Final-Project/blob/2692c71008e07da8e59ff86ae895cd1b85217e84/Phase%201%20Dataset%20Collection/Original%20RPPs.xlsx)<br />

#### Bureau of Labor Statistics (BLS)
[State Unemployment 2009](https://github.com/NatalinSipes/Final-Project/blob/47fefebcaa3daa20549fec0b7fc8fc5eaf5d21de/Phase%201%20Dataset%20Collection/Unemployment/STATE-UI-RATES-2009.pdf)<br />
[State Unemployment 2010](https://github.com/NatalinSipes/Final-Project/blob/47fefebcaa3daa20549fec0b7fc8fc5eaf5d21de/Phase%201%20Dataset%20Collection/Unemployment/STATE-UI-RATES-2010.pdf)<br />
[State Unemployment 2011](https://github.com/NatalinSipes/Final-Project/blob/47fefebcaa3daa20549fec0b7fc8fc5eaf5d21de/Phase%201%20Dataset%20Collection/Unemployment/STATE-UI-RATES-2011.pdf)<br />
[State Unemployment 2012](https://github.com/NatalinSipes/Final-Project/blob/47fefebcaa3daa20549fec0b7fc8fc5eaf5d21de/Phase%201%20Dataset%20Collection/Unemployment/STATE-UI-RATES-2012.pdf)<br />
[State Unemployment 2013](https://github.com/NatalinSipes/Final-Project/blob/47fefebcaa3daa20549fec0b7fc8fc5eaf5d21de/Phase%201%20Dataset%20Collection/Unemployment/STATE-UI-RATES-2013.pdf)<br />
[State Unemployment 2014](https://github.com/NatalinSipes/Final-Project/blob/47fefebcaa3daa20549fec0b7fc8fc5eaf5d21de/Phase%201%20Dataset%20Collection/Unemployment/STATE-UI-RATES-2014.pdf)<br />
[State Unemployment 2015](https://github.com/NatalinSipes/Final-Project/blob/47fefebcaa3daa20549fec0b7fc8fc5eaf5d21de/Phase%201%20Dataset%20Collection/Unemployment/STATE-UI-RATES-2015.pdf)<br />
[State Unemployment 2016](https://github.com/NatalinSipes/Final-Project/blob/47fefebcaa3daa20549fec0b7fc8fc5eaf5d21de/Phase%201%20Dataset%20Collection/Unemployment/StateUnemploymentRates2016.pdf)<br />
[State Unemployment 2017](https://github.com/NatalinSipes/Final-Project/blob/47fefebcaa3daa20549fec0b7fc8fc5eaf5d21de/Phase%201%20Dataset%20Collection/Unemployment/StateUnemploymentRates2017.pdf)<br />
[State Unemployment 2018](https://github.com/NatalinSipes/Final-Project/blob/47fefebcaa3daa20549fec0b7fc8fc5eaf5d21de/Phase%201%20Dataset%20Collection/Unemployment/State-UI-2018_19.pdf)<br />
[State Unemployment 2019](https://github.com/NatalinSipes/Final-Project/blob/47fefebcaa3daa20549fec0b7fc8fc5eaf5d21de/Phase%201%20Dataset%20Collection/Unemployment/State-UI-2018_19.pdf)<br />
[State Unemployment 2020](https://github.com/NatalinSipes/Final-Project/blob/47fefebcaa3daa20549fec0b7fc8fc5eaf5d21de/Phase%201%20Dataset%20Collection/Unemployment/State%20UI%202020_21.pdf)<br />
[State Unemployment 2021](https://github.com/NatalinSipes/Final-Project/blob/47fefebcaa3daa20549fec0b7fc8fc5eaf5d21de/Phase%201%20Dataset%20Collection/Unemployment/State%20UI%202020_21.pdf)<br />



# Phase 2: Data Wrangling, Cleaning, and Recoding
### (Completed February 27, 2022)

Data was cleaned and recoded for analysis using RStudio, Python, and Microsoft Excel.

#### Data Wrangling and Cleaning: (RPP’s, State Data all years, Unemployment, and others)
[Regional Price Parities in R](https://github.com/NatalinSipes/Final-Project/blob/3857952d38ff53994d1898b8aa19e77cbd309bfb/Phase%202%20Data%20Wrangling/Notebooks%20and%20R.Scripts/FinalRPPs.R)<br />
[State Unemployment in R](https://github.com/NatalinSipes/Final-Project/blob/40e777b518a3978b5c995efccaed0dd692e65268/Phase%202%20Data%20Wrangling/Notebooks%20and%20R.Scripts/stateunemployment.R)<br />

#### Included variables:
-	Population percentage below poverty 
-	Cost per meal and regional price parities
-	State and regional
-	Food insecurity
-	Unemployment
-	Inflation
-	Child food insecurity

#### Dataset creation:
[State_Data_Multiple_Years](https://github.com/NatalinSipes/Final-Project/blob/64ff02c6ae434dd381451ebcdde28cc66261f524/Phase%202%20Data%20Wrangling/State_Data_Multiple_Years.xlsx)<br />
[RPP Breakdown](https://github.com/NatalinSipes/Final-Project/blob/482c777f33fc0e21769e473fdacbdc0abda6629c/Phase%203%20Exploratory%20Analysis/RPP%20breakdown.xlsx)<br />
[RPP All](https://github.com/NatalinSipes/Final-Project/blob/3857952d38ff53994d1898b8aa19e77cbd309bfb/Phase%203%20Exploratory%20Analysis/RPPall_py.xlsx)<br />
[RPP Goods](https://github.com/NatalinSipes/Final-Project/blob/40e777b518a3978b5c995efccaed0dd692e65268/Phase%203%20Exploratory%20Analysis/RPPgoods_py.xlsx)<br />
[RPP Housing](https://github.com/NatalinSipes/Final-Project/blob/a258409c4e8ef8f71b715a0972acfcc5476bb69a/Phase%203%20Exploratory%20Analysis/RPPhousing_py.xlsx)<br />
[RPP Utilities](https://github.com/NatalinSipes/Final-Project/blob/520c9ec24e1159e984988d3e79729fe5f710e9e3/Phase%203%20Exploratory%20Analysis/RPPutilities_py.xlsx)<br />
[]()<br />

# Phase 3: Exploratory Analysis
#### (Completed March 6, 2022)

Exploratory analyses included visualization and standardization of audio feature variables, as well as correlation analysis and plotting.

#### Exploratory Analysis in RStudio and Python: 
#### State projections & Heatmaps in Python by Ivette, RPP’s & Unemployement in Python/RStudio done by Nicole, Natalin done in Rstudio that week

[Exploratory Analysis Notebook](https://github.com/NatalinSipes/Final-Project/blob/0ece120f9569e0492de3669537694953df4cb7e9/Phase%203%20Exploratory%20Analysis/Week%203-%20State_Data_Multiple_Years.xlsx%20%20Exploratory%20Analysis.ipynb)<br />
[Exploratory Analysis Notebook](https://github.com/NatalinSipes/Final-Project/blob/58051b89b29e5a9760482b525ca1a8d67b00e0f3/Phase%203%20Exploratory%20Analysis/Unemployment%20Rates%20of%20States%20ranging%202017-2018%20&%202020-2021%20and%20Ratio%20of%20Income%20Poverty.ipynb)<br />
[Exploratory Analysis Notebook](https://github.com/NatalinSipes/Final-Project/blob/1e3f06e8864d61cc6cd30aee8c981021dc112d4d/Phase%203%20Exploratory%20Analysis/StateUI_explanalysis.ipynb)<br />
[Exploratory Analysis Notebook](https://github.com/NatalinSipes/Final-Project/blob/47833b7e75e912076ac51904303d16c1f6620126/Phase%203%20Exploratory%20Analysis/RPP_explanalysis.ipynb)<br />

# Phase 4: Data Analysis
#### (Completed March 13, 2022)

Dependent t-tests and histograms were used to analyze the variables and make correlations between them. The best use of our time was to create new spreadsheets in Microsoft Excel and Google Sheets. Once the spreadsheets had been created, we imported our data into RStudio and Python for analysis. We also continued to work with datasets and notebooks which analyzed regional price parities and state unemployment rates.

#### Data Analysis in RStudio and Python: (Dependent t-tests, histograms for 300 set)

[Data Analysis in Google Sheets](https://github.com/NatalinSipes/Final-Project/blob/328ce7ea4ad843cdb557867b24095c40a74534d0/Phase%203%20Exploratory%20Analysis/AnnualStateUI_DepTtest.xlsx)<br />
[Data Analysis in RStudio](https://github.com/NatalinSipes/Final-Project/blob/7acd5628f51bd80650a360efbfb7a370986a64f8/Phase%204%20Data%20Analysis/Week4FPDataAnalysisinR.R)<br />
[Data Analysis in RStudio](https://github.com/NatalinSipes/Final-Project/blob/2c04725bc76242a0981180dd9ee61fe870e92019/Phase%204%20Data%20Analysis/Week4FPDataAnalysisinR2010-2019.R)<br />

# Phase 5: Data Visualization
#### (Completed March 20, 2022)

Visualizations were created in Python, Tableau, and RStudio for analyses.(Natalin created Heatmaps & Histograms(2010 & 2016), Ivette created in Tableau Line graphs for Cost Per Meal(2013-2015, 2016-2018, 2009-2019), Nicole created charts combining stats2010 & 2016-2020)<br />

[Cost Per Meal 2013-2015 Line graph](https://public.tableau.com/app/profile/ivette8594/viz/CostPerMeal2013-2015/CostPerMeal2013-2015?publish=yes)<br />
[Cost Per Meal 2016-2018 Line graph](https://public.tableau.com/app/profile/ivette8594/viz/2016-2018CostPerMealinStates/Story1?publish=yes)<br />
[Cost Per Meal 2009-2019 Line graph](https://public.tableau.com/app/profile/ivette8594/viz/2009-2019CostPerMeal/CostPerMealin2009-2019?publish=yes)<br />
[]()<br />
[]()<br />

# Phase 6: Presentation, Food Insecurity in the United States of America
#### (Presented March 25, 2022)

Project was presented via Zoom to Woz U faculty and students for internal review on March 25, 2022. <br /><br />

View the project presentation slides on Google Docs: <br />
[Food Insecurity in the United States of America](https://github.com/NatalinSipes/Final-Project/blob/917b8b1b3093fae250a59f186e793a11db7493c7/Phase%206%20Project%20Presentation/Food%20Insecurity%20Final%20Presentation%20.pdf)
