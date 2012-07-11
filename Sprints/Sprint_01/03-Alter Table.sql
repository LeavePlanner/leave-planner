
-- ==========================================
-- 	 ALTER GEOGRAPHY INFO TABLES
-- ==========================================

-- alter table infodb.geo_countries
ALTER TABLE infodb.geo_countries ADD FOREIGN KEY (continent_id) REFERENCES infodb.geo_continents(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_countries ADD FOREIGN KEY (capital) REFERENCES infodb.geo_cities(id) ON DELETE SET NULL;

-- alter table infodb.geo_states
ALTER TABLE infodb.geo_states ADD FOREIGN KEY (country_id) REFERENCES infodb.geo_countries(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_states ADD FOREIGN KEY (capital) REFERENCES infodb.geo_cities(id) ON DELETE SET NULL;

-- alter table infodb.geo_union_territories
ALTER TABLE infodb.geo_union_territories ADD FOREIGN KEY (country_id) REFERENCES infodb.geo_countries(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_union_territories ADD FOREIGN KEY (capital) REFERENCES infodb.geo_cities(id) ON DELETE SET NULL;

-- alter table infodb.geo_districts
ALTER TABLE infodb.geo_districts ADD FOREIGN KEY (state_id) REFERENCES infodb.geo_states(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_districts ADD FOREIGN KEY (capital) REFERENCES infodb.geo_cities(id) ON DELETE SET NULL;

-- alter table infodb.geo_cities

ALTER TABLE infodb.geo_cities ADD FOREIGN KEY (district_id) REFERENCES infodb.geo_districts(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_cities ADD FOREIGN KEY (state_id) REFERENCES infodb.geo_states(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_cities ADD FOREIGN KEY (union_territory_id) REFERENCES infodb.geo_union_territories(id) ON DELETE SET NULL;
ALTER TABLE infodb.geo_cities ADD FOREIGN KEY (city_type) REFERENCES infodb.geo_city_types(id) ON DELETE SET NULL;

-- ==========================================
-- 	 ALTER LEAVE INFO TABLES
-- ==========================================

-- alter table infodb.leave_days
ALTER TABLE infodb.leave_days ADD FOREIGN KEY (leave_type) REFERENCES infodb.leave_types(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_countries
ALTER TABLE infodb. leave_in_countries ADD FOREIGN KEY (leave_id) REFERENCES infodb.leave_days(id) ON DELETE SET NULL;
ALTER TABLE infodb. leave_in_countries ADD FOREIGN KEY (country_id) REFERENCES infodb.geo_countries(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_states
ALTER TABLE infodb.leave_in_states ADD FOREIGN KEY (leave_id) REFERENCES infodb.leave_days(id) ON DELETE SET NULL;
ALTER TABLE infodb.leave_in_states ADD FOREIGN KEY (state_id) REFERENCES infodb.geo_states(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_union_territories 
ALTER TABLE infodb.leave_in_union_territories ADD FOREIGN KEY (leave_id) REFERENCES infodb.leave_days(id) ON DELETE SET NULL;
ALTER TABLE infodb.leave_in_union_territories ADD FOREIGN KEY (union_territory_id) REFERENCES infodb.geo_union_territories(id) ON DELETE SET NULL;

-- alter table infodb.leave_in_cities 
ALTER TABLE infodb.leave_in_cities ADD FOREIGN KEY (leave_id) REFERENCES infodb.leave_days(id) ON DELETE SET NULL;
ALTER TABLE infodb.leave_in_cities ADD FOREIGN KEY (city_id) REFERENCES infodb.geo_cities(id) ON DELETE SET NULL;

-- alter table infodb.leave_calendars
ALTER TABLE infodb.leave_calendars ADD FOREIGN KEY (leave_type) REFERENCES infodb.leave_types(id) ON DELETE SET NULL;
