# Final-Project Topic: COVID 19 Vaccine Hesitancy Levels Analysis

[Click here for Google Slides presentation.](https://docs.google.com/presentation/d/1D6xlwcnExiZ4DOyUKpyyipajtg6ABQZLEv09FY3mhTE/edit?usp=sharing)

## Analysis Overview:
The purpose of this project is to analyze and predict the level of Vaccine Hesitancy in USA in late 2021, a year after the outbreak of the COVID pandemic. The datasets which we will be using for statistical calculations and other technology libraries will help identify and display trends, and predict the outcomes accordingly.

#### Questions Addressed:

- What counties will rank hesitant versus strongly hesitant to vaccination based on local `public mask mandates` and the prevalence of certain `health conditions`? 

- What counties will rank hesitant versus strongly hesitant based on `CVAC levels` measuring a county's ability to handle a COVID outbreak?

- What counties will rank hesitant versus strongly hesitant based on its `SVI levels` measuring a county's social vulnerability to disaster?

 
## Data Sources:

https://data.cdc.gov/Vaccinations/Vaccines-gov-COVID-19-vaccinating-provider-locatio/5jp2-pgaw

https://data.cdc.gov/Vaccinations/Fully-Vaccinated-Adults/jm79-dz78

https://data.cdc.gov/Vaccinations/COVID-19-Vaccinations-in-the-United-States-County/8xkx-amqh

https://data.cdc.gov/Policy-Surveillance/U-S-State-and-Territorial-Public-Mask-Mandates-Fro/42jj-z7fa


| Software & Libraries |   |
| --- | --- |
| Data Retrieval, Cleaning, and Analysis:  | Python, API |
| Database Management/Storage:  | PostgreSQL |
| Predictive Analysis:  | ML |
| Data Visualization:  | Flask, Tableau |

***

## Project Developmental Planning:
### Project planning can be split into four cetegories:

- **Data Cleaning and Analysis**: Python technology with Pandas library will be used to clean the data and perform an exploratory analysis. Further Trending analysis will be completed using NumPy.

- **Database Storage**: PostgreSQL is the database we intend to use, and we will integrate pgAdmin to display the data.

- **Machine Learning**: SciKitLearn is the ML library we'll be using to create a classifier. We will split the data into training and testing datasets using a 75-25 split setup.  Afterwards, we will use several classification models to validate our machine learning as listed below.
     - `Decision Tree`: This algorithm is able to take in multiple features and predict non-binary, discrete outcomes.
     - `Random Forest`: Similar to the Decision Tree model, Random Forest is also able to predict non-binary outcomes taking multiple factors into consideration. However, instead of a single tree, Random Forest divies data into random samples from which several smaller trees are created. Th smaller feature groupings will result in weaker individual trees, but combined will help prevent overfitting wich is common with single, complex decision trees.
     - `Gradient Boosting`: This ensemble machine learning method also combines weaker learners into a single, stronger model by sequentially training and evaluating one small decision tree--called a stump--then adding another stump to minimize the evaluated errors, and repeating the process.
     - `Logistic Regression`: If our analysis identifies targets with binary outcomes, the Logistic Regression model can be used to predict those binary classifiers by assessing multiple features.
     -  `SVM`: Like Logistic Regression, the Support Vector Machine (SVM) model can be used to predict binary outcomes.  

- **Dashboard**:  Flask will be used for the final report and integrated with TABLEAU for a fully functioning and interactive dashboard. Finally, the finished data visualizations will be hosted on Google Slides.

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
