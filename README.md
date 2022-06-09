# Final-Project Topic: COVID 19 Vaccine Hesitancy Levels Analysis

[Link to Google Slides presentation](https://docs.google.com/presentation/d/1QMLQhXdtwhx3Y2UqlmNIYpZkR67QkC8ZYHKdYIHn1MU/edit#slide=id.p)

[Link to Tableau Dashboard](https://public.tableau.com/views/Covid19VaccinationHesitancylevelofAnalysis/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link)
## Analysis Overview:
The purpose of this project is to analyze and predict the level of Vaccine Hesitancy in USA in late 2021, a year after the outbreak of the COVID pandemic. The datasets which we will be using for statistical calculations and other technology libraries will help identify and display trends, and predict the outcomes accordingly.

#### Questions Addressed:

- What counties will rank hesitant versus strongly hesitant to vaccination based on local `public mask mandates,` 'stay-at-home orders', 'gathering bans' and the prevalence of certain `health conditions`? 

- What counties will rank hesitant versus strongly hesitant based on `CVAC levels` measuring a county's ability to handle a COVID outbreak?

- What counties will rank hesitant versus strongly hesitant based on its `SVI levels` measuring a county's social vulnerability to disaster?

- What counties will rank hesitant versus strongly hesitant based on the local COVID transimission level?

 
## Data Sources:

https://data.cdc.gov/Vaccinations/Vaccines-gov-COVID-19-vaccinating-provider-locatio/5jp2-pgaw

https://data.cdc.gov/Vaccinations/Fully-Vaccinated-Adults/jm79-dz78

https://data.cdc.gov/Vaccinations/COVID-19-Vaccinations-in-the-United-States-County/8xkx-amqh

https://data.cdc.gov/Policy-Surveillance/U-S-State-and-Territorial-Public-Mask-Mandates-Fro/42jj-z7fa

https://data.cdc.gov/Policy-Surveillance/U-S-State-and-Territorial-Stay-At-Home-Orders-Marc/y2iy-8irm

https://data.cdc.gov/Policy-Surveillance/U-S-State-and-Territorial-Gathering-Bans-March-11-/7xvh-y5vh

https://chronicdata.cdc.gov/500-Cities-Places/PLACES-Census-Tract-Data-GIS-Friendly-Format-2021-/yjkw-uj5s

https://data.cdc.gov/Public-Health-Surveillance/United-States-COVID-19-County-Level-of-Community-T/nra9-vzzn


| Software & Libraries |   |
| --- | --- |
| Data Retrieval, Cleaning, and Analysis:  | Python, API |
| Database Management/Storage:  | PostgreSQL |
| Predictive Analysis:  | ML |
| Data Visualization:  | Tableau |

***

## Project Developmental Planning:
### Project planning can be split into four cetegories:

- **Data Cleaning and Analysis**: Python technology with Pandas library will be used to clean the data and perform an exploratory analysis. Further Trending analysis will be completed using NumPy.

- **Database Storage**: PostgreSQL is the database we intend to use, and we will integrate pgAdmin to display the data.

- **Machine Learning**: SciKitLearn is the ML library we'll be using to create a regressor. We will split the data into training and testing datasets using a 75-25 split setup.  Afterwards, we will use several regression models to validate our machine learning as listed below.
     - `Regression Tree`: Regression Tree model is similar to decision tree classifier, it runs like a tree with branches to sub-divide all records in training sets and recursively partition until a simple model can fit them. It is suitable for non-linear regression, when interactions are complicated.
     - `Linear Regression`: Linear Regression is the supervised Machine Learning model in which the model finds the best fit linear line between the independent and dependent variable.
     -  `Support Vector Regression (SVR)`:  This model improves the flexibility from the linear regression to give an acceptable areas of errors and find a hyperplane to fit the data. 

- **Dashboard**:  Tableau will be used for the final report and integrated with TABLEAU for a fully functioning and interactive dashboard. Finally, the finished data visualizations will be hosted on Google Slides.

***

## Initial Objective:

### Our team members will present a provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
1. Takes in raw data from the provisional database
2. Outputs label(s) for input data
3. Manage repositories rendered by team members 

### Our team members handling Data Management will present a provisional database that stands in for the final database and accomplishes the following:
1. Images of code 
2. Sample data that mimics the expected final database structure/schema
3. Provisional draft of machine learning module with code showing connection to the provisional database 
