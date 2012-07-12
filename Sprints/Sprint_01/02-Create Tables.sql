
-- ==========================================
-- 	 CREATE GEOGRAPHY INFO TABLES
-- ==========================================

-- create geo_continents table
CREATE TABLE IF NOT EXISTS infodb.geo_continents (
  id integer NOT NULL AUTO_INCREMENT,
  name varchar(52) NOT NULL,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY ( id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create geo_countries table
CREATE TABLE IF NOT EXISTS infodb.geo_countries (
  id integer NOT NULL AUTO_INCREMENT,
  code char(3) NOT NULL,
  name char(52) NOT NULL,
  continent_id integer,
  region char(26) NOT NULL,
  surface_area float(10,2) NOT NULL DEFAULT '0.00',
  independence_year smallint(6) DEFAULT NULL,
  population int(11) NOT NULL DEFAULT '0',
  life_expectancy float(3,1) DEFAULT NULL,
  gnp float(10,2) DEFAULT NULL,
  gnp_old float(10,2) DEFAULT NULL,
  local_name char(45) NOT NULL,
  government_form char(45) NOT NULL,
  head_of_state char(60) DEFAULT NULL, 
  code2 char(2) NOT NULL,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)  
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table geo_states
CREATE TABLE IF NOT EXISTS infodb.geo_states (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL,
  code char(2) NOT NULL,  
  country_id integer,
  area integer NOT NULL DEFAULT 0,
  population float(20,2) NOT NULL DEFAULT '0.00',
  language char(255) DEFAULT NULL,
  largest_city integer,
  number_of_geo_districts integer DEFAULT 0,
  number_of_villages integer DEFAULT 0,
  number_of_towns integer DEFAULT 0,
  population_density integer DEFAULT 0,
  literacy_rate float(20,2) DEFAULT '0.00',
  percent_urban_population float(20,2) DEFAULT '0.00',
  sex_ratio integer DEFAULT 0,
  sex_ratio_zero_to_six integer DEFAULT 0,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)  
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table infodb.geo_union_territories
CREATE TABLE IF NOT EXISTS infodb.geo_union_territories (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL,
  code char(2) NOT NULL,  
  country_id integer,
  area integer NOT NULL DEFAULT 0,
  population float(20,2) NOT NULL DEFAULT '0.00',
  language char(255) DEFAULT NULL,
  largest_city char(255) DEFAULT NULL,
  number_of_geo_districts integer DEFAULT 0,
  number_of_villages integer DEFAULT 0,
  number_of_towns integer DEFAULT 0,
  population_density integer DEFAULT 0,
  literacy_rate float(20,2) DEFAULT '0.00',
  percent_urban_population float(20,2) DEFAULT '0.00',
  sex_ratio integer DEFAULT 0,
  sex_ratio_zero_to_six integer DEFAULT 0,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)  
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table infodb.geo_districts
CREATE TABLE IF NOT EXISTS infodb.geo_districts (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL,
  code char(2) NOT NULL,  
  state_id integer,
  headquarter char(255) DEFAULT NULL,
  population float(20,2) NOT NULL DEFAULT '0.00',
  area integer NOT NULL DEFAULT 0,  
  density integer DEFAULT 0,
  official_website char(255),
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)  
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table infodb.geo_city_types
CREATE TABLE IF NOT EXISTS infodb.geo_city_types (
  id integer NOT NULL AUTO_INCREMENT,
  code char(10) NOT NULL,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table infodb.geo_cities
CREATE TABLE IF NOT EXISTS infodb.geo_cities (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL,
  district_id integer NOT NULL DEFAULT 0,
  state_id integer NOT NULL DEFAULT 0,
  union_territory_id integer NOT NULL DEFAULT 0,
  city_type integer NOT NULL DEFAULT 0,
  pupulation integer NOT NULL DEFAULT 0,
  coordinates char(255),
  region char(255),
  mayor char(255),
  commissioner char(255),
  density integer NOT NULL DEFAULT 0,
  area integer NOT NULL DEFAULT 0,
  elevation char(255),
  website char(255),
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table infodb.geo_capital_types
CREATE  TABLE IF NOT EXISTS  infodb.geo_capital_types  (
   id integer NOT NULL AUTO_INCREMENT,
   name  char(255),
   description varchar(5000),
   create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   update_date TIMESTAMP,
   deleted TINYINT(1) NOT NULL DEFAULT '0',
   active TINYINT(1) NOT NULL DEFAULT '1',
   PRIMARY KEY (id)   
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table infodb.geo_country_capitals
CREATE  TABLE IF NOT EXISTS  infodb.geo_country_capitals (
   id integer NOT NULL AUTO_INCREMENT,
   country_id  integer,
   city_id  integer,
   capital_type integer,   
   capital_from_date date,
   capital_to_date date,
   description varchar(5000),
   create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   update_date TIMESTAMP,
   deleted TINYINT(1) NOT NULL DEFAULT '0',
   active TINYINT(1) NOT NULL DEFAULT '1',
   PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table infodb.geo_state_capitals
CREATE  TABLE IF NOT EXISTS  infodb.geo_state_capitals (
   id integer NOT NULL AUTO_INCREMENT,
   state_id  integer,
   city_id  integer,
   capital_type integer,   
   capital_from_date date,
   capital_to_date date,
   description varchar(5000),
   create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   update_date TIMESTAMP,
   deleted TINYINT(1) NOT NULL DEFAULT '0',
   active TINYINT(1) NOT NULL DEFAULT '1',
   PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table infodb.geo_district_capitals
CREATE  TABLE IF NOT EXISTS  infodb.geo_district_capitals (
   id integer NOT NULL AUTO_INCREMENT,
   district_id  integer,
   city_id  integer,
   capital_type integer,   
   capital_from_date date,
   capital_to_date date,
   description varchar(5000),
   create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   update_date TIMESTAMP,
   deleted TINYINT(1) NOT NULL DEFAULT '0',
   active TINYINT(1) NOT NULL DEFAULT '1',
   PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ==========================================
-- 	 CREATE ORGANIZATION INFO TABLES
-- ==========================================

-- create table infodb.org_types
CREATE TABLE IF NOT EXISTS infodb.org_types (
  id integer NOT NULL AUTO_INCREMENT,
  name char(10) NOT NULL,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table infodb.org_organizations
CREATE TABLE IF NOT EXISTS infodb.org_organizations (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL,  
  org_type integer,
  employees integer NOT NULL DEFAULT 0,
  traded_as varchar(2500),
  industry varchar(2500),
  founders varchar(2500),
  headquarters integer,
  number_of_locations integer,
  area_served varchar(2500),
  presence_in varchar(2500),
  lp_email_id char(255),
  website char(255),
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table infodb.org_presence_in_cities
CREATE TABLE IF NOT EXISTS infodb.org_presence_in_cities (
  id integer NOT NULL AUTO_INCREMENT,
  organization_id  integer,
  city_id  integer,
  since_when date, 
  until_date date,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ==========================================
-- 	 CREATE LEAVE INFO TABLES
-- ==========================================

-- creat table infodb.leave_types
CREATE TABLE IF NOT EXISTS infodb.leave_types (
  id integer NOT NULL AUTO_INCREMENT,
  type char(50) NOT NULL,
  alias char(255) DEFAULT '',
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table infodb.leave_days
CREATE TABLE IF NOT EXISTS infodb.leave_days (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL UNIQUE,
  alias char(255) DEFAULT '',
  leave_date date,
  since_date date,
  leave_type integer NOT NULL DEFAULT 0,
  history varchar(2000) NOT NULL,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table infodb.leave_in_countries
CREATE TABLE IF NOT EXISTS infodb.leave_in_countries (
  id integer NOT NULL AUTO_INCREMENT,
  leave_id integer NOT NULL DEFAULT 0,
  country_id integer NOT NULL DEFAULT 0,
  leave_date date NOT NULL,
  year int(4) NOT NULL,
  week_day char(10),
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table infodb.leave_in_states
CREATE TABLE IF NOT EXISTS infodb.leave_in_states (
  id integer NOT NULL AUTO_INCREMENT,
  leave_id integer NOT NULL DEFAULT 0,
  state_id integer NOT NULL DEFAULT 0,
  leave_date date NOT NULL,
  year int(4) NOT NULL,
  week_day char(10),
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table infodb.leave_in_union_territories
CREATE TABLE IF NOT EXISTS infodb.leave_in_union_territories (
  id integer NOT NULL AUTO_INCREMENT,
  leave_id integer NOT NULL DEFAULT 0,
  union_territory_id integer NOT NULL DEFAULT 0,
  leave_date date NOT NULL,
  year int(4) NOT NULL,
  week_day char(10),
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table infodb.leave_in_cities
CREATE TABLE IF NOT EXISTS infodb.leave_in_cities (
  id integer NOT NULL AUTO_INCREMENT,
  leave_id integer NOT NULL DEFAULT 0,
  city_id integer NOT NULL DEFAULT 0,
  leave_date date NOT NULL,
  year int(4) NOT NULL,
  week_day char(10),
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table infodb.leave_calendar_types
CREATE TABLE IF NOT EXISTS infodb.leave_calendar_types (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table infodb.leave_calendars
CREATE TABLE IF NOT EXISTS infodb.leave_calendars (
  id integer NOT NULL AUTO_INCREMENT,
  alias char(255) DEFAULT '',
  leave_date date,
  since_date date,
  leave_type integer NOT NULL DEFAULT 0,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

