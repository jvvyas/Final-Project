-- First, transform the data so to better join them
-- Since the vaccine hesitancy data is updated to 6/10/21, filter the dataset by the date
SELECT *
INTO new_mask_mandate
FROM mask_mandate
WHERE mandate_date = ('2021-06-10')

SELECT *
FROM new_mask_mandate

SELECT *
INTO stay_at_home_orders_updated
FROM stay_at_home_orders
WHERE date = ('6/10/2021')

SELECT *
FROM stay_at_home_orders_updated


SELECT *
INTO transmission_historical_changes_updated
FROM transmission_historical_changes
WHERE date = ('06/10/2021')

SELECT *
FROM transmission_historical_changes_updated

SELECT *
INTO gathering_bans_updated
FROM gathering_bans
WHERE date = ('6/10/2021')

SELECT *
FROM gathering_bans_updated

SELECT v.fips, v.completeness_pct, v.metro_status, v.series_complete_pop_pct, v.series_complete_yes, v.series_complete_pop_pct_svi, v.series_complete_pop_pct_ur_equity
INTO new_vaccine_county
FROM vaccine_county as v
WHERE date = '06/10/2021'

DELETE FROM new_vaccine_county AS n
WHERE n.fips = 'UNK'

SELECT *
FROM new_vaccine_county

-- Since gathering_bans_updated and stay_at_home_orders_updated's fips code are seperated in two columns
-- fips_state and fips_county, we need to add '0' to form a 3-digit code then combine them into one column: fips_code

ALTER TABLE gathering_bans_updated
ADD COLUMN fips_code VARCHAR

UPDATE gathering_bans_updated
SET fips_code = fips_state || LPAD(fips_county,3,'0')

ALTER TABLE stay_at_home_orders_updated
ADD COLUMN fips_code VARCHAR

UPDATE stay_at_home_orders_updated
SET fips_code = fips_state || LPAD(fips_county,3,'0')

-- Vaccine provider locations: count the total number of stores, get the mean of vaccine supply level, and group them by zipcode

SELECT vpl.loc_admin_zip, COUNT(vpl.provider_location_guid), AVG(vpl.supply_level)
INTO new_vaccine_providers
FROM vaccine_provider_locations as vpl
GROUP BY vpl.loc_admin_zip
ORDER BY AVG(vpl.supply_level)

SELECT *
FROM new_vaccine_providers


-- Since gathering_bans_updated and stay_at_home_orders_updated's fips code are seperated in two columns
-- fips_state and fips_county, we need to add '0' to form a 3-digit code then combine them into one column: fips_code, a 6-digit code

ALTER TABLE gathering_bans_updated
ADD COLUMN fips_code VARCHAR

UPDATE gathering_bans_updated
SET fips_code = fips_state || LPAD(fips_county,3,'0')

ALTER TABLE stay_at_home_orders_updated
ADD COLUMN fips_code VARCHAR

UPDATE stay_at_home_orders_updated
SET fips_code = fips_state || LPAD(fips_county,3,'0')


-- Take the average data of census_tract_data based on county fips

SELECT countyfips, AVG(CASTHMA_CrudePrev) "avg_asthma", AVG(CHD_CrudePrev) "avg_chd", AVG(CHECKUP_CrudePrev) "avg_checkup", AVG(COPD_CrudePrev) "avg_copd", AVG(CSMOKING_CrudePrev) "avg_smoking", 
AVG(DEPRESSION_CrudePrev) "avg_depression",AVG(DIABETES_CrudePrev) "avg_diabetes", AVG(GHLTH_CrudePrev) "avg_ghlth", AVG(LPA_CrudePrev) "avg_lpa", 
AVG(MHLTH_CrudePrev) "avg_mhlth", AVG(OBESITY_CrudePrew) "avg_obesity", AVG(SLEEP_CrudePrev) "avg_sleep"
INTO census_updated
FROM census_tract_data
GROUP BY countyfips

SELECT *
FROM census_updated


-- Joined all tables we need, fips_code is our primary key

ALTER TABLE vaccine_hesitancy
ALTER COLUMN fips_code TYPE VARCHAR

ALTER TABLE new_mask_mandate
ALTER COLUMN fips_code TYPE VARCHAR

SELECT DISTINCT vh.fips_code, vh.county_name, vh.Social_Vulnerability_Index_SVI, vh.cvac_level_of_concern_for_vaccination_rollout,vh.Percent_adults_fully_vaccinated_against_COVID_19_as_of_6_10_21,
vh.estimated_hesitant,vh.estimated_hesitant_or_unsure,vh.estimated_strongly_hesitant,nmm.masks_order_code,
v.completeness_pct, v.metro_status, v.series_complete_pop_pct, v.series_complete_yes, v.series_complete_pop_pct_svi, v.series_complete_pop_pct_ur_equity,
gb.General_GB_order_code,gb.General_GB_order_group,gb.General_or_Under_6ft_Bans_Gatherings_Over,gb.Indoor_Outdoor,
sho.Order_code as "stay_at_home_order_code",th.community_transmission_level,th.cases_per_100K_7_day_count_change,
c.avg_asthma,c.avg_chd,c.avg_checkup,c.avg_copd,c.avg_smoking,c.avg_depression,c.avg_diabetes,c.avg_ghlth,c.avg_lpa,c.avg_mhlth,
c.avg_obesity,c.avg_sleep
INTO joined_table_updated
FROM vaccine_hesitancy as vh
JOIN new_mask_mandate as nmm ON nmm.fips_code = vh.fips_code
JOIN new_vaccine_county as v ON v.fips = vh.fips_code
JOIN gathering_bans_updated as gb ON gb.fips_code = vh.fips_code
JOIN stay_at_home_orders_updated as sho ON sho.fips_code = vh.fips_code
JOIN transmission_historical_changes_updated as th ON th.fips_code = vh.fips_code
JOIN census_updated as c ON c.countyfips = vh.fips_code

SELECT *
FROM joined_table_updated

