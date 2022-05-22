CREATE TABLE census_tract_data(
	StateAbbr VARCHAR,
	StateDesc VARCHAR,
	CountyName VARCHAR,
	CountyFIPS VARCHAR,
	TractFIPS VARCHAR,
	TotalPopulation VARCHAR,
	ACCESS2_CrudePrev VARCHAR,
	ACCESS2_Crude95CI VARCHAR,
	ARTHRITIS_CrudePrev VARCHAR,
	ARTHRITIS_Crude95CI VARCHAR,
	BINGE_CrudePrev VARCHAR,
	BINGE_Crude95CI VARCHAR,
	BPHIGH_CrudePrev VARCHAR,
	BPHIGH_Crude95CI VARCHAR,
	BPMED_CrudePrev VARCHAR,
	BPMED_Crude95CI VARCHAR,
	CANCER_CrudePrev VARCHAR,
	CANCER_Crude95CI VARCHAR,
	CASTHMA_CrudePrev VARCHAR,
	CASTHMA_Crude95CI VARCHAR,
	CERVICAL_CrudePrev VARCHAR,
	CERVICAL_Crude95CI VARCHAR,
	CHD_CrudePrev VARCHAR,
	CHD_Crude95CI VARCHAR,
	CHECKUP_CrudePrev VARCHAR,
	CHECKUP_Crude95CI VARCHAR,
	CHOLSCREEN_CrudePrev VARCHAR,
	CHOLSCREEN_Crude95CI VARCHAR,
	COLON_SCREEN_CrudePrev VARCHAR,
	COLON_SCREEN_Crude95CI VARCHAR,
	COPD_CrudePrev VARCHAR,
	COPD_Crude95CI VARCHAR,
	COREM_CrudePrev VARCHAR,
	COREM_Crude95CI VARCHAR,
	COREW_CrudePrev VARCHAR,
	COREW_Crude95CI VARCHAR,
	CSMOKING_CrudePrev VARCHAR,
	CSMOKING_Crude95CI VARCHAR,
	DENTAL_CrudePrev VARCHAR,
	DENTAL_Crude95CI VARCHAR,
	DEPRESSION_CrudePrev VARCHAR,
	DEPRESSION_Crude95CI VARCHAR,
	DIABETES_CrudePrev VARCHAR,
	DIABETES_Crude95CI VARCHAR,
	GHLTH_CrudePrev VARCHAR,
	GHLTH_Crude95CI VARCHAR,
	HIGHCHOL_CrudePrev VARCHAR,
	HIGHCHOL_Crude95CI VARCHAR,
	KIDNEY_CrudePrev VARCHAR,
	KIDNEY_Crude95CI VARCHAR,
	LPA_CrudePrev VARCHAR,
	LPA_Crude95CI VARCHAR,
	MAMMOUSE_CrudePrev VARCHAR,
	MAMMOUSE_Crude95CI VARCHAR,
	MHLTH_CrudePrev VARCHAR,
	MHLTH_Crude95CI VARCHAR,
	OBESITY_CrudePrew VARCHAR,
	OBESITY_Crude95CI VARCHAR,
	PHLTH_CrudePrev VARCHAR,
	PHLTH_Crude95CI VARCHAR,
	SLEEP_CrudePrev VARCHAR,
	SLEEP_Crude95CI VARCHAR,
	STROKE_CrudePrev VARCHAR,
	STROKE_Crude95CI VARCHAR,
	TEETHLOST_CrudePrev VARCHAR,
	TEETHLOST_Crude95CI VARCHAR,
	Geolocation VARCHAR
)

CREATE TABLE transmission_historical_changes(
	state_name VARCHAR,
	county_name VARCHAR,
	fips_code VARCHAR,
	date VARCHAR,
	cases_per_100K_7_day_count_change VARCHAR,
	percent_test_results_reported_positive_last_7_days VARCHAR,
	community_transmission_level VARCHAR
)

CREATE TABLE stay_at_home_orders(
	State_Tribe_Territory VARCHAR,
	County_Name VARCHAR,
	FIPS_State VARCHAR,
	FIPS_County VARCHAR,
	date VARCHAR,
	Order_code VARCHAR,
	Stay_at_Home_Order_Recommendation VARCHAR,
	Express_Preemption VARCHAR,
	Source_of_Action VARCHAR,
	URL VARCHAR,
	Citation VARCHAR
)

CREATE TABLE gathering_bans(
	State_Tribe_Territory VARCHAR,
	County_Name VARCHAR,
	FIPS_State VARCHAR,
	FIPS_County VARCHAR,
	date VARCHAR,
	General_GB_order_group VARCHAR,
	General_GB_order_code VARCHAR,
	General_or_Under_6ft_Bans_Gatherings_Over VARCHAR,
	Express_Preemption VARCHAR,
	Indoor_Outdoor VARCHAR,
	Source_of_Action VARCHAR,
	URL VARCHAR,
	Citation VARCHAR
)

SELECT * 
FROM census_tract_data

SELECT *
FROM transmission_historical_changes

SELECT *
FROM stay_at_home_orders

SELECT *
FROM gathering_bans