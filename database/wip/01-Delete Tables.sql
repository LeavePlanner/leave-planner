
-- ==========================================
-- 	 DELETE GEOGRAPHY INFO TABLES
-- ==========================================

-- drop table infodb.geo_continent
DROP TABLE IF EXISTS infodb.geo_continent;

-- drop table infodb.geo_country
DROP TABLE IF EXISTS infodb.geo_country;

-- drop table infodb.geo_state
DROP TABLE IF EXISTS infodb.geo_state;

-- drop table infodb.geo_union_territory
DROP TABLE IF EXISTS infodb.geo_union_territory;

-- drop table infodb.geo_district
DROP TABLE IF EXISTS infodb.geo_district;

-- drop table infodb.geo_city_type
DROP TABLE IF EXISTS infodb.geo_city_type;

-- drop table geo_city
DROP TABLE IF EXISTS infodb.geo_city;

-- drop table infodb.geo_capital_type 
DROP TABLE IF EXISTS infodb.geo_capital_type;

-- drop table infodb.geo_country_capital
DROP TABLE IF EXISTS infodb.geo_country_capital;

-- drop table infodb.geo_state_capital
DROP TABLE IF EXISTS infodb.geo_state_capital;

-- drop table infodb.geo_district_capital
DROP TABLE IF EXISTS infodb.geo_district_capital;

-- ==========================================
-- 	 DELETE ORGANIZATION INFO TABLES
-- ==========================================

-- drop table infodb.organization_type
DROP TABLE IF EXISTS infodb.org_type;

-- drop table infodb.organization
DROP TABLE IF EXISTS infodb.org_organization;

-- drop table infodb.organization_in_city
DROP TABLE IF EXISTS infodb.org_presence_in_city;

-- ==========================================
-- 	 DELETE LEAVE INFO TABLES
-- ==========================================

-- drop table infodb.leave_type
DROP TABLE IF EXISTS infodb.leave_type;

-- drop table infodb.leave_day
DROP TABLE IF EXISTS infodb.leave_day;

-- drop table infodb.leave_in_country
DROP TABLE IF EXISTS infodb.leave_in_country;

-- drop table infodb.leave_in_state
DROP TABLE IF EXISTS infodb.leave_in_state;

-- drop table infodb.leave_in_union_territory
DROP TABLE IF EXISTS infodb.leave_in_union_territory;

-- drop table infodb.leave_in_city
DROP TABLE IF EXISTS infodb.leave_in_city;

-- drop table infodb.leave_calendar_type
DROP TABLE IF EXISTS infodb.leave_calendar_type;

-- drop table infodb.leave_calendar
DROP TABLE IF EXISTS infodb.leave_calendar;









drop table `infodb`.`organization`;
drop table `infodb`.`organization_in_city`;
drop table `infodb`.`organization_type`;
drop table `infodb`.`leave_in_organization`;



