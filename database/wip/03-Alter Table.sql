
-- ==========================================
-- 	 ALTER GEOGRAPHY INFO TABLES
-- ==========================================

-- alter table infodb.geo_country
ALTER TABLE infodb.geo_country ADD FOREIGN KEY (continent_id) REFERENCES infodb.geo_continents(id) ON DELETE SET NULL;

-- alter table infodb.geo_state
ALTER TABLE infodb.geo_state ADD FOREIGN KEY (country_id) REFERENCES infodb.geo_country(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_state ADD FOREIGN KEY (largest_city) REFERENCES infodb.geo_city(id) ON DELETE SET NULL;

-- alter table infodb.geo_union_territory
ALTER TABLE infodb.geo_union_territory ADD FOREIGN KEY (country_id) REFERENCES infodb.geo_country(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_union_territory ADD FOREIGN KEY (largest_city) REFERENCES infodb.geo_city(id) ON DELETE SET NULL;

-- alter table infodb.geo_district
ALTER TABLE infodb.geo_district ADD FOREIGN KEY (state_id) REFERENCES infodb.geo_state(id) ON DELETE SET NULL;

-- alter table infodb.geo_city
ALTER TABLE infodb.geo_city ADD FOREIGN KEY (district_id) REFERENCES infodb.geo_district(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_city ADD FOREIGN KEY (state_id) REFERENCES infodb.geo_state(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_city ADD FOREIGN KEY (union_territory_id) REFERENCES infodb.geo_union_territory(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_city ADD FOREIGN KEY (city_type) REFERENCES infodb.geo_city_types(id) ON DELETE SET NULL;

-- alter table infodb.geo_country_capital
ALTER TABLE infodb.geo_country_capital ADD FOREIGN KEY (country_id) REFERENCES infodb.geo_country(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_country_capital ADD FOREIGN KEY (city_id) REFERENCES infodb.geo_city(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_country_capital ADD FOREIGN KEY (capital_type) REFERENCES infodb.geo_capital_types(id) ON DELETE SET NULL;

-- alter table infodb.geo_state_capital
ALTER TABLE infodb.geo_state_capital ADD FOREIGN KEY (state_id) REFERENCES infodb.geo_state(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_state_capital ADD FOREIGN KEY (city_id) REFERENCES infodb.geo_city(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_state_capital ADD FOREIGN KEY (capital_type) REFERENCES infodb.geo_capital_types(id) ON DELETE SET NULL;

-- alter table infodb.geo_district_capital
ALTER TABLE infodb.geo_district_capital ADD FOREIGN KEY (district_id) REFERENCES infodb.geo_district(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_district_capital ADD FOREIGN KEY (city_id) REFERENCES infodb.geo_city(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_district_capital ADD FOREIGN KEY (capital_type) REFERENCES infodb.geo_capital_types(id) ON DELETE SET NULL;

-- ==========================================
-- 	 ALTER ORGANIZATION INFO TABLES
-- ==========================================
-- alter table infodb.organization
ALTER TABLE infodb.organization ADD FOREIGN KEY (org_type) REFERENCES infodb.organization_types(id) ON DELETE SET NULL;
ALTER TABLE infodb.organization ADD FOREIGN KEY (headquarter) REFERENCES infodb.geo_city(id) ON DELETE SET NULL;

-- alter table infodb.organization_in_city
ALTER TABLE infodb.organization_in_city ADD FOREIGN KEY (organization_id) REFERENCES infodb.organization(id) ON DELETE SET NULL;
ALTER TABLE infodb.organization_in_city ADD FOREIGN KEY (city_id) REFERENCES infodb.geo_city(id) ON DELETE SET NULL;
-- ==========================================
-- 	 ALTER LEAVE INFO TABLES
-- ==========================================

-- alter table infodb.leave_day
ALTER TABLE infodb.leave_day ADD FOREIGN KEY (leave_type) REFERENCES infodb.leave_types(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_country
ALTER TABLE infodb. leave_in_countries ADD FOREIGN KEY (leave_id) REFERENCES infodb.leave_day(id) ON DELETE SET NULL;
ALTER TABLE infodb. leave_in_countries ADD FOREIGN KEY (country_id) REFERENCES infodb.geo_country(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_state
ALTER TABLE infodb.leave_in_state ADD FOREIGN KEY (leave_id) REFERENCES infodb.leave_day(id) ON DELETE SET NULL;
ALTER TABLE infodb.leave_in_state ADD FOREIGN KEY (state_id) REFERENCES infodb.geo_state(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_union_territory
ALTER TABLE infodb.leave_in_union_territory ADD FOREIGN KEY (leave_id) REFERENCES infodb.leave_day(id) ON DELETE SET NULL;
ALTER TABLE infodb.leave_in_union_territory ADD FOREIGN KEY (union_territory_id) REFERENCES infodb.geo_union_territory(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_city
ALTER TABLE infodb.leave_in_city ADD FOREIGN KEY (leave_id) REFERENCES infodb.leave_day(id) ON DELETE SET NULL;
ALTER TABLE infodb.leave_in_city ADD FOREIGN KEY (city_id) REFERENCES infodb.geo_city(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_organization 
ALTER TABLE infodb.leave_in_organization ADD FOREIGN KEY (leave_id) REFERENCES infodb.leave_day(id) ON DELETE SET NULL;
ALTER TABLE infodb.leave_in_organization ADD FOREIGN KEY (city_id) REFERENCES infodb.geo_city(id) ON DELETE SET NULL;
ALTER TABLE infodb.leave_in_organization ADD FOREIGN KEY (org_id) REFERENCES org_organizations(id) ON DELETE SET NULL;

-- alter table infodb.leave_calendar
ALTER TABLE infodb.leave_calendar ADD FOREIGN KEY (leave_type) REFERENCES infodb.leave_types(id) ON DELETE SET NULL;
