
-- ==========================================
-- 	 CREATE GEOGRAPHY INFO TABLES
-- ==========================================

-- create infodb.geo_continent table
CREATE TABLE IF NOT EXISTS infodb.geo_continent (
  id integer NOT NULL AUTO_INCREMENT,
  name varchar(52) NOT NULL,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY ( id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create infodb.geo_country table
CREATE TABLE IF NOT EXISTS infodb.geo_country (
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

-- create table infodb.geo_state
CREATE TABLE IF NOT EXISTS infodb.geo_state (
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

-- create table infodb.geo_union_territory
CREATE TABLE IF NOT EXISTS infodb.geo_union_territory (
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

-- create table infodb.geo_district
CREATE TABLE IF NOT EXISTS infodb.geo_district (
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

-- create table infodb.geo_city_type
CREATE TABLE IF NOT EXISTS infodb.geo_city_type (
  id integer NOT NULL AUTO_INCREMENT,
  code char(10) NOT NULL,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table infodb.geo_city
CREATE TABLE IF NOT EXISTS infodb.geo_city (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL,
  district_id integer,
  state_id integer,
  union_territory_id integer,
  city_type integer,
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

-- create table infodb.geo_capital_type
CREATE  TABLE IF NOT EXISTS  infodb.geo_capital_type  (
   id integer NOT NULL AUTO_INCREMENT,
   name  char(255),
   description varchar(5000),
   create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   update_date TIMESTAMP,
   deleted TINYINT(1) NOT NULL DEFAULT '0',
   active TINYINT(1) NOT NULL DEFAULT '1',
   PRIMARY KEY (id)   
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table infodb.geo_country_capital
CREATE  TABLE IF NOT EXISTS  infodb.geo_country_capital (
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

-- create table infodb.geo_state_capital
CREATE  TABLE IF NOT EXISTS  infodb.geo_state_capital (
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

-- create table infodb.geo_district_capital
CREATE  TABLE IF NOT EXISTS  infodb.geo_district_capital (
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

-- create table infodb.organization_type
CREATE TABLE IF NOT EXISTS infodb.organization_type (
  id integer NOT NULL AUTO_INCREMENT,
  name char(10) NOT NULL,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table infodb.organization
CREATE TABLE IF NOT EXISTS infodb.organization (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL,  
  org_type integer,
  employees integer NOT NULL DEFAULT 0,
  traded_as varchar(2500),
  industry varchar(2500),
  founders varchar(2500),
  headquarter integer,
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

-- create table infodb.organization_in_city
CREATE TABLE IF NOT EXISTS infodb.organization_in_city (
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

-- creat table infodb.leave_type
CREATE TABLE IF NOT EXISTS infodb.leave_type (
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

-- creat table infodb.leave_day
CREATE TABLE IF NOT EXISTS infodb.leave_day (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL UNIQUE,
  alias char(255) DEFAULT '',
  leave_date date,
  since_date date,
  leave_type integer,
  history varchar(2000) NOT NULL,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table infodb.leave_in_country
CREATE TABLE IF NOT EXISTS infodb.leave_in_country (
  id integer NOT NULL AUTO_INCREMENT,
  leave_id integer,
  country_id integer,
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

-- creat table infodb.leave_in_state
CREATE TABLE IF NOT EXISTS infodb.leave_in_state (
  id integer NOT NULL AUTO_INCREMENT,
  leave_id integer,
  state_id integer,
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

-- creat table infodb.leave_in_union_territory
CREATE TABLE IF NOT EXISTS infodb.leave_in_union_territory (
  id integer NOT NULL AUTO_INCREMENT,
  leave_id integer,
  union_territory_id integer,
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

-- creat table infodb.leave_in_city
CREATE TABLE IF NOT EXISTS infodb.leave_in_city (
  id integer NOT NULL AUTO_INCREMENT,
  leave_id integer,
  city_id integer,
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

-- creat table infodb.leave_in_organization
CREATE TABLE IF NOT EXISTS infodb.leave_in_organization (
  id integer NOT NULL AUTO_INCREMENT,
  leave_id integer,
  org_id integer,
  city_id integer,
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

-- creat table infodb.leave_calendar_type
CREATE TABLE IF NOT EXISTS infodb.leave_calendar_type (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL,
  description varchar(5000),
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_date TIMESTAMP,
  deleted TINYINT(1) NOT NULL DEFAULT '0',
  active TINYINT(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (id) 
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table infodb.leave_calendar
CREATE TABLE IF NOT EXISTS infodb.leave_calendar (
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

