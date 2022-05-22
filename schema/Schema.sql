create table Stay_at_Home_order(
State_Tribe_Territory varchar,               
County_Name  varchar ,              
FIPS_State   varchar ,                        
FIPS_County  varchar ,                        
date     date ,                          
Order_code   int ,                        
Stay_at_Home_Order_Recommendation varchar ,  
Express_Preemption  varchar,              
Source_of_Action varchar,                   
URL    varchar,                           
Citation   varchar         
);

create table _Community_Transmission_Historical_Changes(
state_name varchar,                                            
county_name  varchar,                                          
fips_code int,                                          
date  date ,                                              
cases_per_100K_7_day_count_change  varchar,                   
percent_test_results_reported_positive_last_7_days varchar, 
community_transmission_level varchar   

);

create table PLACES_Census_Tract_Data(
StateAbbr varchar, 
StateDesc varchar, 
CountyName varchar, 
CountyFIPS varchar,
TractFIPS varchar,
TotalPopulation varchar,
ACCESS2_CrudePrev varchar, 
ACCESS2_Crude95CI varchar,
ARTHRITIS_CrudePrev varchar,
ARTHRITIS_Crude95CI varchar,
BINGE_CrudePrev varchar,
BINGE_Crude95CI varchar, 
BPHIGH_CrudePrev varchar, 
BPHIGH_Crude95CI varchar,
BPMED_CrudePrev varchar, 
BPMED_Crude95CI varchar,
CANCER_CrudePrev varchar,
CANCER_Crude95CI varchar, 
CASTHMA_CrudePrev varchar,
CASTHMA_Crude95CI varchar,
CERVICAL_CrudePrev varchar,
CERVICAL_Crude95CI varchar, 
CHD_CrudePrev varchar,
CHD_Crude95CI varchar,
CHECKUP_CrudePrev varchar,
CHECKUP_Crude95CI varchar,
CHOLSCREEN_CrudePrev varchar, 
CHOLSCREEN_Crude95CI varchar,
COLON_SCREEN_CrudePrev varchar, 
COLON_SCREEN_Crude95CI varchar, 
COPD_CrudePrev varchar,
COPD_Crude95CI varchar, 
COREM_CrudePrev varchar,
COREM_Crude95CI varchar,
COREW_CrudePrev varchar,
COREW_Crude95CI varchar, 
CSMOKING_CrudePrev varchar,
CSMOKING_Crude95CI varchar, 
DENTAL_CrudePrev varchar, 
DENTAL_Crude95CI varchar,
DEPRESSION_CrudePrev varchar,
DEPRESSION_Crude95CI varchar,
DIABETES_CrudePrev varchar,
DIABETES_Crude95CI varchar,
GHLTH_CrudePrev varchar,
GHLTH_Crude95CI varchar,
HIGHCHOL_CrudePrev varchar,
HIGHCHOL_Crude95CI varchar,
KIDNEY_CrudePrev varchar,
KIDNEY_Crude95CI varchar,
LPA_CrudePrev varchar, 
LPA_Crude95CI varchar,
MAMMOUSE_CrudePrev varchar,
MAMMOUSE_Crude95CI varchar,
MHLTH_CrudePre varchar,
MHLTH_Crude95CI varchar, 
OBESITY_CrudePrev varchar,
OBESITY_Crude95CI varchar,
PHLTH_CrudePrev varchar,
PHLTH_Crude95CI varchar, 
SLEEP_CrudePrev varchar,
SLEEP_Crude95CI varchar, 
STROKE_CrudePrev varchar,
STROKE_Crude95CI varchar,
TEETHLOST_CrudePrev  varchar,
TEETHLOST_Crude95CI varchar,
Geolocation varchar
);

create table Gathering_bans(
State_Tribe_Territory varchar,                        
County_Name   varchar ,                              
FIPS_State    int ,                               
FIPS_County  int ,                                
date        date ,                                
General_GB_order_group varchar,                   
General_GB_order_code decimal,                        
General_or_Under_6ft_Bans_Gatherings_Over  varchar , 
Express_Preemption   varchar,                        
Indoor_Outdoor   varchar,                            
Source_of_Action varchar,                            
URL    varchar,                                      
Citation varchar         
);

-- create tables and load the datasets
CREATE TABLE vaccine_provider_locations(
	provider_location_guid VARCHAR,
	loc_store_no VARCHAR,
	loc_phone VARCHAR,
	loc_name VARCHAR,
	loc_admin_street1 VARCHAR,
	loc_admin_street2 VARCHAR,
	loc_admin_city VARCHAR,
	loc_admin_state VARCHAR,
	loc_admin_zip VARCHAR,
	sunday_hours VARCHAR,
	monday_hours VARCHAR,
	tuesday_hours VARCHAR,
	wednesday_hours VARCHAR, 
	thursday_hours VARCHAR,
	friday_hours VARCHAR,
	saturday_hours VARCHAR,
	web_address VARCHAR,
	pre_screen VARCHAR,
	insurance_accepted BOOLEAN,
	walkins_accepted BOOLEAN,
	provider_notes VARCHAR,
	ndc VARCHAR,
	med_name VARCHAR,
	in_stock BOOLEAN,
	supply_level INT,
	quantity_last_updated VARCHAR,
	latitude VARCHAR,
	longitude VARCHAR,
	Category VARCHAR,
	Unnamed_Column VARCHAR,
	offers_free_masks BOOLEAN,
	min_age_months VARCHAR,
	min_age_years VARCHAR
)


CREATE TABLE Vaccine_Hesitancy(
	FIPS_Code int,
	County_Name varchar,
	State varchar,
	Estimated_hesitant varchar,
	Estimated_hesitant_or_unsure varchar,
	Estimated_strongly_hesitant  varchar,
	Social_Vulnerability_Index_SVI varchar,
	SVI_Category  varchar,
	CVAC_level_of_concern_for_vaccination_rollout varchar,
	CVAC_Level_of_Concern  varchar,
	Percent_adults_fully_vaccinated_against_COVID_19_as_of_6_10_21 varchar,
	Percent_Hispanic decimal,
	Percent_non_Hispanic_American_Indian_Alaska_Native decimal,
	Percent_non_Hispanic_Asian decimal,
	Percent_non_Hispanic_Black decimal,
	Percent_non_Hspanic_Native_Hawaiian_or_Pasific_Islander decimal,
	Percent_non_Hispanic_White decimal,
	Geographical_Point varchar,
	State_Code varchar,
	County_Boundary varchar,
	State_Boundary varchar
);

CREATE TABLE mask_mandate(
	State_Tribe_Territory varchar,
	County_Name varchar,
	FIPS_Code int,
	mandate_Date date,
	Masks_Order_Code int,
	Face_Masks_Required_in_Public varchar,
	Citations  varchar
);

CREATE TABLE vaccine_county(
	Date varchar,
	FIPS varchar,
	MMWR_week varchar,
	Recip_County varchar,
	Recip_State varchar,
    Completeness_pct varchar,
	Administered_Dose1_Recip varchar,
    Administered_Dose1_Pop_Pct varchar,
	Administered_Dose1_Recip_5Plus varchar,
    Administered_Dose1_Recip_5PlusPop_Pct varchar,
    Administered_Dose1_Recip_12Plus varchar,
    Administered_Dose1_Recip_12PlusPop_Pct varchar,
    Administered_Dose1_Recip_18Plus varchar,
    Administered_Dose1_Recip_18PlusPop_Pct varchar,
    Administered_Dose1_Recip_65Plus varchar,
    Administered_Dose1_Recip_65PlusPop_Pct varchar,
	Series_Complete_Yes varchar,
    Series_Complete_Pop_Pct  varchar,
	Series_Complete_5Plus varchar,
    Series_Complete_5PlusPop_Pct varchar,
	Series_Complete_5to17 varchar,
    Series_Complete_5to17Pop_Pct varchar,
	Series_Complete_12Plus varchar,
    Series_Complete_12PlusPop_Pct varchar,
	Series_Complete_18Plus varchar,
    Series_Complete_18PlusPop_Pct varchar,
	Series_Complete_65Plus varchar,
    Series_Complete_65PlusPop_Pct varchar,
	Booster_Doses varchar,
    Booster_Doses_Vax_Pct varchar,
	Booster_Doses_12Plus varchar,
    Booster_Doses_12Plus_Vax_Pct varchar,
	Booster_Doses_18Plus varchar,
    Booster_Doses_18Plus_Vax_Pct varchar,
	Booster_Doses_50Plus varchar,
    Booster_Doses_50Plus_Vax_Pct varchar,
	Booster_Doses_65Plus varchar,
    Booster_Doses_65Plus_Vax_Pct varchar,
	SVI_CTGY varchar,
    Series_Complete_Pop_Pct_SVI varchar,
	Series_Complete_5PlusPop_Pct_SVI varchar,
    Series_Complete_5to17Pop_Pct_SVI varchar,
	Series_Complete_12PlusPop_Pct_SVI varchar,
    Series_Complete_18PlusPop_Pct_SVI varchar,
    Series_Complete_65PlusPop_Pct_SVI varchar,
	Metro_status varchar,
    Series_Complete_Pop_Pct_UR_Equity varchar,
    Series_Complete_5PlusPop_Pct_UR_Equity varchar,
    Series_Complete_5to17Pop_Pct_UR_Equity varchar,
    Series_Complete_12PlusPop_Pct_UR_Equity varchar,
    Series_Complete_18PlusPop_Pct_UR_Equity varchar,
    Series_Complete_65PlusPop_Pct_UR_Equity varchar,
	Booster_Doses_Vax_Pct_SVI varchar,
    Booster_Doses_12PlusVax_Pct_SVI varchar,
	Booster_Doses_18PlusVax_Pct_SVI varchar,
    Booster_Doses_65PlusVax_Pct_SVI varchar,
	Booster_Doses_Vax_Pct_UR_Equity varchar,
    Booster_Doses_12PlusVax_Pct_UR_Equity varchar,
    Booster_Doses_18PlusVax_Pct_UR_Equity varchar,
    Booster_Doses_65PlusVax_Pct_UR_Equity varchar,
	Census2019 varchar,
    Census2019_5PlusPop varchar,
	Census2019_5to17Pop varchar,
	Census2019_12PlusPop varchar,
    Census2019_18PlusPop varchar,
	Census2019_65PlusPop varchar
);

SELECT *
FROM vaccine_provider_locations

SELECT *
FROM Vaccine_Hesitancy

SELECT *
FROM mask_mandate

SELECT *
FROM vaccine_county

select * 
from Stay_at_Home_order

select *
from _Community_Transmission_Historical_Changes

select *
from PLACES_Census_Tract_Data

select *
from Gathering_bans