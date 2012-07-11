-- drop table continents
DROP TABLE  IF  EXISTS lpdb.continents;

-- create continents table
CREATE  TABLE IF NOT EXISTS lpdb.continents (
   id integer NOT NULL AUTO_INCREMENT,
   name  varchar(52) NOT NULL DEFAULT '',
   description varchar(5000),
   PRIMARY KEY ( id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- drop table countries
DROP TABLE  IF  EXISTS lpdb.countries;

-- create countries table
CREATE  TABLE IF NOT EXISTS  lpdb.countries  (
   id integer NOT NULL AUTO_INCREMENT,
   code  char(3) NOT NULL DEFAULT '',
   name  char(52) NOT NULL DEFAULT '',
   continent_id integer,
   region  char(26) NOT NULL DEFAULT '',
   surface_area  float(10,2) NOT NULL DEFAULT '0.00',
   independence_year  smallint(6) DEFAULT NULL,
   population  int(11) NOT NULL DEFAULT '0',
   life_expectancy  float(3,1) DEFAULT NULL,
   gnp  float(10,2) DEFAULT NULL,
   gnp_old  float(10,2) DEFAULT NULL,
   local_name  char(45) NOT NULL DEFAULT '',
   government_form  char(45) NOT NULL DEFAULT '',
   head_of_state  char(60) DEFAULT NULL,  
   code2  char(2) NOT NULL DEFAULT '',
   PRIMARY KEY (id),
   FOREIGN KEY (continent_id) REFERENCES lpdb.continents(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- drop table states
DROP TABLE  IF  EXISTS lpdb.states;

-- create table states
CREATE  TABLE IF NOT EXISTS  lpdb.states  (
   id integer NOT NULL AUTO_INCREMENT,
   name  char(255) NOT NULL DEFAULT '',
   code  char(2) NOT NULL DEFAULT '',   
   country_id integer,
   area  integer NOT NULL DEFAULT 0,
   population  float(20,2) NOT NULL DEFAULT '0.00',
   language  char(255) DEFAULT NULL,
   largest_city char(255) DEFAULT NULL,
   number_of_districts  integer DEFAULT 0,
   number_of_villages  integer DEFAULT 0,
   number_of_towns  integer DEFAULT 0,
   population_density  integer DEFAULT 0,
   literacy_rate  float(20,2) DEFAULT '0.00',
   percent_urban_population  float(20,2) DEFAULT '0.00',
   sex_ratio  integer DEFAULT 0,
   sex_ratio_zero_to_six  integer DEFAULT 0,
   PRIMARY KEY (id),
   FOREIGN KEY (country_id) REFERENCES lpdb.continents(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table union_territories
CREATE  TABLE IF NOT EXISTS  lpdb.union_territories  (
   id integer NOT NULL AUTO_INCREMENT,
   name  char(255) NOT NULL DEFAULT '',
   code  char(2) NOT NULL DEFAULT '',   
   country_id integer,
   area  integer NOT NULL DEFAULT 0,
   population  float(20,2) NOT NULL DEFAULT '0.00',
   language  char(255) DEFAULT NULL,
   largest_city char(255) DEFAULT NULL,
   number_of_districts  integer DEFAULT 0,
   number_of_villages  integer DEFAULT 0,
   number_of_towns  integer DEFAULT 0,
   population_density  integer DEFAULT 0,
   literacy_rate  float(20,2) DEFAULT '0.00',
   percent_urban_population  float(20,2) DEFAULT '0.00',
   sex_ratio  integer DEFAULT 0,
   sex_ratio_zero_to_six  integer DEFAULT 0,
   PRIMARY KEY (id),
   FOREIGN KEY (country_id) REFERENCES lpdb.continents(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table capital_types
CREATE  TABLE IF NOT EXISTS  lpdb.capital_types  (
   id integer NOT NULL AUTO_INCREMENT,
   type  char(255),
   from_date date,
   to_date date,
   description char(255),
   PRIMARY KEY (id)   
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- create table districts
CREATE  TABLE IF NOT EXISTS  lpdb.districts  (
   id integer NOT NULL AUTO_INCREMENT,
   name  char(255) NOT NULL DEFAULT '',
   code  char(2) NOT NULL DEFAULT '',   
   state_id integer,
   headquarter  char(255) DEFAULT NULL,
   population  float(20,2) NOT NULL DEFAULT '0.00',
   area  integer NOT NULL DEFAULT 0,   
   density  integer DEFAULT 0,
   official_website char(255),
   PRIMARY KEY (id),
   FOREIGN KEY (state_id) REFERENCES lpdb.states(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- drop table city_types
DROP TABLE  IF  EXISTS lpdb.city_types;

-- create table city_types
CREATE  TABLE IF NOT EXISTS lpdb.city_types (
  id integer NOT NULL AUTO_INCREMENT,
  code char(10) NOT NULL DEFAULT '',
  description char(255),
  PRIMARY KEY (id)
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- drop table cities
DROP TABLE  IF  EXISTS lpdb.cities;

-- create table cities
CREATE  TABLE IF NOT EXISTS lpdb.cities (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL DEFAULT '',
  district_id integer NOT NULL DEFAULT 0,
  state_id integer NOT NULL DEFAULT 0,
  union_territory_id integer NOT NULL DEFAULT 0,
  city_type integer NOT NULL DEFAULT 0,
  pupulation integer NOT NULL DEFAULT 0,
  coordinates char(255),
  region char(255),
  mayor char(255),
  commissioner char(255),
  density  integer NOT NULL DEFAULT 0,
  area integer NOT NULL DEFAULT 0,
  elevation char(255),
  website char(255),
  PRIMARY KEY (id),
  FOREIGN KEY (district_id) REFERENCES lpdb.districts(id) ON DELETE CASCADE,
  FOREIGN KEY (state_id) REFERENCES lpdb.states(id) ON DELETE CASCADE,
  FOREIGN KEY (union_territory_id) REFERENCES lpdb.union_territories(id) ON DELETE CASCADE,
  FOREIGN KEY (city_type) REFERENCES lpdb.city_types(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- drop table country_capitals
DROP TABLE  IF  EXISTS lpdb.country_capitals;

-- create table country_capitals
CREATE  TABLE IF NOT EXISTS  lpdb.country_capitals  (
   id integer NOT NULL AUTO_INCREMENT,
   country_id  integer,
   city_id  integer,
   capital_type integer,
   from_date date,
   to_date date,
   description char(255),
   PRIMARY KEY (id),
   FOREIGN KEY (country_id) REFERENCES lpdb.countries(id) ON DELETE CASCADE,
   FOREIGN KEY (city_id) REFERENCES lpdb.cities(id) ON DELETE CASCADE,
   FOREIGN KEY (capital_type) REFERENCES lpdb.capital_types(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- drop table state_capitals
DROP TABLE  IF  EXISTS lpdb.state_capitals;

-- create table state_capitals
CREATE  TABLE IF NOT EXISTS  lpdb.state_capitals  (
   id integer NOT NULL AUTO_INCREMENT,
   country_id  integer,
   city_id  integer,
   capital_type integer,
   from_date date,
   to_date date,
   description char(255),
   PRIMARY KEY (id),
   FOREIGN KEY (country_id) REFERENCES lpdb.countries(id) ON DELETE CASCADE,
   FOREIGN KEY (city_id) REFERENCES lpdb.cities(id) ON DELETE CASCADE,
   FOREIGN KEY (capital_type) REFERENCES lpdb.capital_types(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- drop table languages
DROP TABLE  IF  EXISTS lpdb.languages;

-- create table languages
CREATE  TABLE IF NOT EXISTS lpdb.languages (
  id integer NOT NULL AUTO_INCREMENT,
  iso_639_2_code char(3) NOT NULL UNIQUE,
  iso_639_1_code char(2) NOT NULL DEFAULT '',
  name char(250) NOT NULL DEFAULT '',  
  name_alias char(250) NOT NULL DEFAULT '',
  description varchar(2500) NOT NULL DEFAULT '',
  history varchar(2500) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- drop table lpdb.country_languages
DROP TABLE  IF  EXISTS lpdb.country_languages;

-- creat table lpdb.country_languages
CREATE  TABLE IF NOT EXISTS lpdb.country_languages (
  id integer NOT NULL AUTO_INCREMENT,
  country_id integer NOT NULL DEFAULT 0,
  language_id integer NOT NULL DEFAULT 0,
  is_official enum('T','F') NOT NULL DEFAULT 'F',
  percentage float(4,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (id),
  FOREIGN KEY (country_id) REFERENCES lpdb.countries(id) ON DELETE CASCADE,
  FOREIGN KEY (language_id) REFERENCES lpdb.languages(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- drop table lpdb.state_languages
DROP TABLE  IF  EXISTS lpdb.state_languages;

-- creat table lpdb.state_languages
CREATE  TABLE IF NOT EXISTS lpdb.state_languages (
  id integer NOT NULL AUTO_INCREMENT,
  state_id integer NOT NULL DEFAULT 0,
  language_id integer NOT NULL DEFAULT 0,
  is_official enum('T','F') NOT NULL DEFAULT 'F',
  percentage float(4,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (id),
  FOREIGN KEY (state_id) REFERENCES lpdb.states(id) ON DELETE CASCADE,
  FOREIGN KEY (language_id) REFERENCES lpdb.languages(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




-- HOLIDAY INFO TABLES --

-- creat table lpdb.holiday_types
CREATE  TABLE IF NOT EXISTS lpdb.holiday_types (
  id integer NOT NULL AUTO_INCREMENT,
  type char(50) NOT NULL,
  description char(255) NOT NULL DEFAULT '',
  alias char(255) DEFAULT '',
  PRIMARY KEY (id)  
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table lpdb.holidays
CREATE  TABLE IF NOT EXISTS lpdb.generic_holidays (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL UNIQUE,
  description varchar(2000) NOT NULL DEFAULT '',
  alias char(255) DEFAULT '',
  holiday_date date,
  since_date date,
  holiday_type integer NOT NULL DEFAULT 0,
  history varchar(2000) NOT NULL DEFAULT '',
  PRIMARY KEY (id)  ,
  FOREIGN KEY (holiday_type) REFERENCES lpdb.holiday_types(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table lpdb.holiday_in_country
CREATE  TABLE IF NOT EXISTS lpdb.holiday_in_country (
  id integer NOT NULL AUTO_INCREMENT,
  holiday_type integer NOT NULL DEFAULT 0,
  holiday_id integer NOT NULL DEFAULT 0,
  country_id integer NOT NULL DEFAULT 0,
  holiday_date date NOT NULL,
  year int(4) NOT NULL,
  week_day char(10),
  PRIMARY KEY (id)  ,
  FOREIGN KEY (holiday_type) REFERENCES lpdb.holiday_types(id) ON DELETE CASCADE,
  FOREIGN KEY (holiday_id) REFERENCES lpdb.generic_holidays(id) ON DELETE CASCADE,
  FOREIGN KEY (country_id) REFERENCES lpdb.countries(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table lpdb.holiday_in_state
CREATE  TABLE IF NOT EXISTS lpdb.holiday_in_state (
  id integer NOT NULL AUTO_INCREMENT,
  holiday_type integer NOT NULL DEFAULT 0,
  holiday_id integer NOT NULL DEFAULT 0,
  state_id integer NOT NULL DEFAULT 0,
  holiday_date date NOT NULL,
  year int(4) NOT NULL,
  week_day char(10),
  PRIMARY KEY (id)  ,
  FOREIGN KEY (holiday_type) REFERENCES lpdb.holiday_types(id) ON DELETE CASCADE,
  FOREIGN KEY (holiday_id) REFERENCES lpdb.generic_holidays(id) ON DELETE CASCADE,
  FOREIGN KEY (state_id) REFERENCES lpdb.states(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table lpdb.holiday_calendar_types
CREATE  TABLE IF NOT EXISTS lpdb.holiday_calendar_types (
  id integer NOT NULL AUTO_INCREMENT,
  name char(255) NOT NULL,
  description varchar(2000) NOT NULL DEFAULT '',
  PRIMARY KEY (id)  
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- creat table lpdb.holiday_calendars
CREATE  TABLE IF NOT EXISTS lpdb.holiday_calendars (
  id integer NOT NULL AUTO_INCREMENT,
  alias char(255) DEFAULT '',
  holiday_date date,
  since_date date,
  holiday_type integer NOT NULL DEFAULT 0,
  PRIMARY KEY (id)  ,
  FOREIGN KEY (holiday_type) REFERENCES lpdb.holiday_types(id) ON DELETE CASCADE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
