# Prepare data and Build Machine Models
## Targets
Our team created three regression models to predict U.S. counties' estimated hesitant, hesitant or unsure, and strongly hesistant rates respectively.

## Features
We have 27 features in those fields below:
### Vaccine Availability:

the_number_of_providers per FIPS code
the_average_supply_level for all location providers per FIPS code

### Community Risk/Vaccination Measures:

- social_vulnerability_index_svi ranges from 0 (least) to 1 (most) to measure community's vulnerability to disaster
- cvac_level_of_concern_for_vaccination_rollout ranges from 0 (lowest) to 1 (highest) for concern for difficult vaccine rollout
- percent_adults_fully_vaccinated_against_covid_19_as_of_6_10_21
- community_transmission_level is either low, moderate, substantial, or high rate of transmission:
based on total new COVID-19 cases per 100,000 persons in the last 7 days and percentage of positive SARS-CoV-2 diagnostic nucleic acid amplification tests (NAAT) in the last 7 days (higher of the two if different)
- Percent of Population Fully Vaccinated
- the_number_of_providers: how many providers are in the county.
- the_average_supply_level: the average level of vaccine supply for each county. The supply level is ranging from -1 to 4.

- completeness_pct tells percent of people fully vaccinated with a reported, valid county FIPS code in the jurisdiction
- series_complete_pop_pct_ur_equity combines 'fully vaccinated' percentage and metro/non-metro metric for ages of population:

1 = 0-49.9% fully vaccinated / metro county

2 = 50-64.9% fully vaccinated / metro county

3 = 65-79.9% fully vaccinated / metro county

4 = ≥80% fully vaccinated / metro county

5 = 0-49.9% fully vaccinated / non-metro county

6 = 50-64.9% fully vaccinated / non-metro county

7 = 65-79.9% fully vaccinated /non-metro county

8 = ≥80% fully vaccinated / non-metro county

### Orders/Bans and Other Guidance:

- masks_order_codewhere 1 = public mask mandate; 2 = no public mask mandate
- general_gb_order_code indicates size of gatherings banned:

1 = No order (for gathering ban) found

2 = Ban of gatherings over 101 or more people

4 = Ban of gatherings over 26-50 people

6 = Ban of gatherings over 1-10 people

7 = Bans gatherings of any size

- general_or_under_6ft_bans_gatherings_over tells max number of people that can gather without social distancing:
No ban, 0, 6, 8, 10, 50, 150, or 250
- stay_at_home_order_code based on stay at home order recommendation:

3 = Mandatory only for at-risk individuals in the jurisdiction

6 = Advisory/Recommendation

7 = No order for individuals to stay home or NA

### Health Conditions (county average estimates of prevalence of specified health conditions in adults 2019):

- avg_copd (chronic obstructive pulmonary disease)
- avg_chd (coronary heart disease)
- avg_ghlth for fair or poor health
- avg_lpa for no leisure-time physical activity
- avg_mhlth for mental health not good for >=14 days
- avg_obesity
- avg_sleep for sleeping less than 7 hours
- avg_checkup
- avg_asthma
- avg_smoking
- avg_depression
- avg_diabetes

### Other:
fips_code is Federal Information Processing Standards (FIPS) Code; unique to each county
metro_status for metro (metropolitan county) vs non-metro

## Clean and prepare the data
### Handle the missing values
As we can see from the screenshot, some columns contain nulls needed to be deal with:
![null values](https://github.com/jvvyas/Final-Project/blob/main/screenshots/null_values.png)
- First, we transform some continous data to numeric data type:

`social_vulnerability_index_svi`, `cvac_level_of_concern_for_vaccination_rollout`, `percent_adults_fully_vaccinated_against_covid_19_as_of_6_10_21`, `estimated_hesitant`, `series_complete_pop_pct`, `series_complete_yes`, `cases_per_100k_7_day_count_change`, `series_complete_pop_pct_svi`,`series_complete_pop_pct_ur_equity`,`estimated_hesitant_or_unsure`,`estimated_strongly_hesitant`

![transform to numeric data](https://github.com/jvvyas/Final-Project/blob/main/screenshots/transform_to_numeric.png)

- Second, from the screenshot above we can see that, `avg_asthma`, `avg_chd`,`avg_checkup`, `avg_copd`, `avg_smoking`, `avg_depression`, `avg_diabetes`, `avg_ghlth`, `avg_lpa`, `avg_mhlth`, `avg_obesity`,`avg_sleep`,`social_vulnerability_index_svi`, `series_complete_yes`,`series_complete_pop_pct` only have no more than 21 rows of nulls. Since it's not a lot compared to the whole dataset, so we just directedly dropped those rows.

- Thrid, since `cases_per_100k_7_day_count_change` column contains too many nulls, we dropped this column.

- Fourth, `percent_adults_fully_vaccinated` is continous data and contains more than 200 nulls. It is not affordable for us to directly drop 200 more rows as we may lose lots of information. So we use mean values of this column to fill its nulls.

- Fifth, `series_complete_pop_pct_svi` and `series_complete_pop_pct_ur_equity` are categorical data and also have more than 200 nulls. We will use their modes, or most frequent value to fill their nulls.

 ![Mode_mean_completer](https://github.com/jvvyas/Final-Project/blob/main/screenshots/mean_mode_completer.png)

### Label Categorical Data
After cleaning all the nulls, we are going to encode categorical data.

![categorical data](https://github.com/jvvyas/Final-Project/blob/main/screenshots/categorical_data.png)

According to the screenshot above, each categorical column contains more than 2 but less than 10 unique values, so we decide to adopt LabelEncoder to label each column's values.

![label_encoder](https://github.com/jvvyas/Final-Project/blob/main/screenshots/label_encoder.png)


## Train the models
Since the rates of estimated hesitancy, the strongly hesitancy, and the hesitancy or unsure are continous numbers, we will train regression models to predict each county's hesitancy rate.

### Regression Tree
Regression Tree model is similar to decision tree classifier, it runs like a tree with branches to sub-divide all records in training sets and recursively partition until a simple model can fit them. It is suitable for non-linear regression, when interactions are complicated.
We splited the training and testing set by 75-25, standardly scaled the training set, fit and test the model for three different targets:

![regression_tree](https://github.com/jvvyas/Final-Project/blob/main/screenshots/regression_tree.png)


### Linear Regression


### SVM Regressor


## Results
We used Mean absolute error (MAE), Mean squared error (MSE), Root mean squared error (RMSE), and R Squared score (R2) to test the models and measure their accuracy. 

`Mean absolute error (MAE)`: The mean of the absolute values of the individual prediction errors on over all instances in the test set. It tells us how big of an error we can expect on average.

`Mean squared error (MSE)`: The mean of the squared prediction errors over all instances in the test set.

`Root mean squared error (RMSE)`: The square root of the mean of the square of all of the error.

`R Squared score (R2)`: Explains in percentage terms the amount of variation in the response variable that is due to variation in the feature variables.

### Regression Tree
![regression_tree_results](https://github.com/jvvyas/Final-Project/blob/main/screenshots/tree_results.png)

### Linear Regression

### SVM Regressor


