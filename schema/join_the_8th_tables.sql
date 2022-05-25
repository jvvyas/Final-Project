SELECT *
FROM vaccine_provider_locations

CREATE TABLE vaccine_provider_locations(
	index VARCHAR,
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
	min_age_years VARCHAR,
	county_fips_code VARCHAR
)

-- Vaccine provider locations: count the total number of stores, get the mean of vaccine supply level, and group them by fips code

SELECT vpl.county_fips_code, COUNT(vpl.provider_location_guid) as "the_number_of_providers", AVG(vpl.supply_level) as "the_average_supply_level"
INTO new_vaccine_providers
FROM vaccine_provider_locations as vpl
GROUP BY vpl.county_fips_code
ORDER BY AVG(vpl.supply_level)


-- Join the new_vaccine_providers with the rest of 7 tables
SELECT *
INTO joined_8_tables_county_level
FROM new_vaccine_providers
JOIN joined_table_updated ON new_vaccine_providers.county_fips_code = joined_table_updated.fips_code


SELECT *
FROM joined_8_tables_county_level