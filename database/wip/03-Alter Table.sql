
-- ==========================================
-- 	 ALTER GEOGRAPHY INFO TABLES
-- ==========================================

-- alter table infodb.country
ALTER TABLE infodb.country ADD FOREIGN KEY (continent_id) REFERENCES infodb.continents(id) ON DELETE SET NULL;

-- alter table infodb.state
ALTER TABLE infodb.state ADD FOREIGN KEY (country_id) REFERENCES infodb.country(id) ON DELETE SET NULL;
ALTER TABLE infodb.state ADD FOREIGN KEY (largest_city) REFERENCES infodb.city(id) ON DELETE SET NULL;

-- alter table infodb.union_territory
ALTER TABLE infodb.union_territory ADD FOREIGN KEY (country_id) REFERENCES infodb.country(id) ON DELETE SET NULL;
ALTER TABLE infodb.union_territory ADD FOREIGN KEY (largest_city) REFERENCES infodb.city(id) ON DELETE SET NULL;

-- alter table infodb.district
ALTER TABLE infodb.district ADD FOREIGN KEY (state_id) REFERENCES infodb.state(id) ON DELETE SET NULL;

-- alter table infodb.city
ALTER TABLE infodb.city ADD FOREIGN KEY (district_id) REFERENCES infodb.district(id) ON DELETE SET NULL;
ALTER TABLE infodb.city ADD FOREIGN KEY (state_id) REFERENCES infodb.state(id) ON DELETE SET NULL;
ALTER TABLE infodb.city ADD FOREIGN KEY (union_territory_id) REFERENCES infodb.union_territory(id) ON DELETE SET NULL;
ALTER TABLE infodb.city ADD FOREIGN KEY (city_type) REFERENCES infodb.city_types(id) ON DELETE SET NULL;

-- alter table infodb.country_capital
ALTER TABLE infodb.country_capital ADD FOREIGN KEY (country_id) REFERENCES infodb.country(id) ON DELETE SET NULL;
ALTER TABLE infodb.country_capital ADD FOREIGN KEY (city_id) REFERENCES infodb.city(id) ON DELETE SET NULL;
ALTER TABLE infodb.country_capital ADD FOREIGN KEY (capital_type) REFERENCES infodb.capital_types(id) ON DELETE SET NULL;

-- alter table infodb.state_capital
ALTER TABLE infodb.state_capital ADD FOREIGN KEY (state_id) REFERENCES infodb.state(id) ON DELETE SET NULL;
ALTER TABLE infodb.state_capital ADD FOREIGN KEY (city_id) REFERENCES infodb.city(id) ON DELETE SET NULL;
ALTER TABLE infodb.state_capital ADD FOREIGN KEY (capital_type) REFERENCES infodb.capital_types(id) ON DELETE SET NULL;

-- alter table infodb.district_capital
ALTER TABLE infodb.district_capital ADD FOREIGN KEY (district_id) REFERENCES infodb.district(id) ON DELETE SET NULL;
ALTER TABLE infodb.district_capital ADD FOREIGN KEY (city_id) REFERENCES infodb.city(id) ON DELETE SET NULL;
ALTER TABLE infodb.district_capital ADD FOREIGN KEY (capital_type) REFERENCES infodb.capital_types(id) ON DELETE SET NULL;

-- ==========================================
-- 	 ALTER ORGANIZATION INFO TABLES
-- ==========================================
-- alter table infodb.organization
ALTER TABLE infodb.organization ADD FOREIGN KEY (org_type) REFERENCES infodb.organization_types(id) ON DELETE SET NULL;
ALTER TABLE infodb.organization ADD FOREIGN KEY (headquarter) REFERENCES infodb.city(id) ON DELETE SET NULL;

-- alter table infodb.organization_in_city
ALTER TABLE infodb.organization_in_city ADD FOREIGN KEY (organization_id) REFERENCES infodb.organization(id) ON DELETE SET NULL;
ALTER TABLE infodb.organization_in_city ADD FOREIGN KEY (city_id) REFERENCES infodb.city(id) ON DELETE SET NULL;
-- ==========================================
-- 	 ALTER LEAVE INFO TABLES
-- ==========================================

-- alter table infodb.day
ALTER TABLE infodb.day ADD FOREIGN KEY (leave_type) REFERENCES infodb.leave_types(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_country
ALTER TABLE infodb. leave_in_countries ADD FOREIGN KEY (leave_id) REFERENCES infodb.day(id) ON DELETE SET NULL;
ALTER TABLE infodb. leave_in_countries ADD FOREIGN KEY (country_id) REFERENCES infodb.country(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_state
ALTER TABLE infodb.leave_in_state ADD FOREIGN KEY (leave_id) REFERENCES infodb.day(id) ON DELETE SET NULL;
ALTER TABLE infodb.leave_in_state ADD FOREIGN KEY (state_id) REFERENCES infodb.state(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_union_territory
ALTER TABLE infodb.leave_in_union_territory ADD FOREIGN KEY (leave_id) REFERENCES infodb.day(id) ON DELETE SET NULL;
ALTER TABLE infodb.leave_in_union_territory ADD FOREIGN KEY (union_territory_id) REFERENCES infodb.union_territory(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_city
ALTER TABLE infodb.leave_in_city ADD FOREIGN KEY (leave_id) REFERENCES infodb.day(id) ON DELETE SET NULL;
ALTER TABLE infodb.leave_in_city ADD FOREIGN KEY (city_id) REFERENCES infodb.city(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_organization 
ALTER TABLE infodb.leave_in_organization ADD FOREIGN KEY (leave_id) REFERENCES infodb.day(id) ON DELETE SET NULL;
ALTER TABLE infodb.leave_in_organization ADD FOREIGN KEY (city_id) REFERENCES infodb.city(id) ON DELETE SET NULL;
ALTER TABLE infodb.leave_in_organization ADD FOREIGN KEY (org_id) REFERENCES org_organizations(id) ON DELETE SET NULL;

-- alter table infodb.calendar
ALTER TABLE infodb.calendar ADD FOREIGN KEY (day_type) REFERENCES infodb.leave_types(id) ON DELETE SET NULL;
