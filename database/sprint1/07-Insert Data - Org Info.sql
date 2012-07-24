-- insert into infodb.organizations_types

INSERT INTO infodb.organizations_types(name,description)VALUES('Public','Public Organization');
INSERT INTO infodb.organizations_types(name,description)VALUES('Private','Private Organization');
INSERT INTO infodb.organizations_types(name,description)VALUES('Government','Government Organization');

-- insert into infodb.organizations
INSERT INTO infodb.organizations(name,org_type)VALUES('Komli Media India Pvt Ltd',2);
INSERT INTO infodb.organizations(name,org_type)VALUES('Oracle India Pvt Ltd',1);
INSERT INTO infodb.organizations(name,org_type)VALUES('IBM India Pvt Ltd',1);
INSERT INTO infodb.organizations(name,org_type)VALUES('MindTree India Pvt Ltd',1);

-- insert into infodb.organizations_in_cities
INSERT INTO infodb.organizations_in_cities(organization_id,city_id)VALUES(1,841); -- mumbai
INSERT INTO infodb.organizations_in_cities(organization_id,city_id)VALUES(1,1602); -- new delhi
INSERT INTO infodb.organizations_in_cities(organization_id,city_id)VALUES(1,187); -- bangalore
INSERT INTO infodb.organizations_in_cities(organization_id,city_id)VALUES(1,273); -- chennai

-- insert into infodb.leave_in_organizations
-- komli mumbai
-- Thursday, 26th Jan – Republic Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(1,1,841,'2012-01-26',2012,'Thursday');
-- Thursday, 8th March- Holi
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(3,1,841,'2012-03-08',2012,'Thursday');
-- Friday, 23rd March – Gudi Padva
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(25,1,841,'2012-03-23',2012,'Friday');
-- Tuesday, 1st May – Maharashtra Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(58,1,841,'2012-05-01',2012,'Tuesday');
-- Wednesday, 15th Aug - Independence Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(8,1,841,'2012-08-15',2012,'Wednesday');
-- Wednesday, 19th Sep – Ganesh Chaturthi
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(11,1,841,'2012-09-11',2012,'Wednesday');
-- Tuesday, 2nd Oct – Gandhi Jayanti
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(12,1,841,'2012-10-02',2012,'Tuesday');
-- Wednesday, 24th Oct- Vijaya Dashmi (Dussera)
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(13,1,841,'2012-10-24',2012,'Wednesday');
-- Tuesday, 13th Nov – Diwali
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(14,1,841,'2012-11-13',2012,'Tuesday');
-- Tuesday, 25th Dec – Christmas Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(16,1,841,'2012-12-25',2012,'Tuesday');

-- komli delhi
-- Thursday, 26th Jan – Republic Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(1,1,1602,'2012-01-26',2012,'Thursday');
-- Thursday, 8th March- Holi
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(3,1,1602,'2012-03-08',2012,'Thursday');
-- Tuesday, 1st May – Labour Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(6,1,1602,'2012-05-01',2012,'Tuesday');
-- Friday, 10th Aug- Krishna Janmashtami
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(9,1,1602,'2012-08-10',2012,'Friday');
-- Wednesday, 15th Aug - Independence Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(8,1,1602,'2012-08-15',2012,'Wednesday');
-- Tuesday, 2nd Oct – Gandhi Jayanti
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(12,1,1602,'2012-10-02',2012,'Tuesday');
-- Wednesday, 24th Oct- Vijaya Dashmi (Dussera)
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(13,1,1602,'2012-10-24',2012,'Wednesday');
-- Tuesday, 13th Nov – Diwali
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(14,1,1602,'2012-11-13',2012,'Tuesday');
-- Wednesday, 28th Nov - Guru Nanak Jayanti
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(15,1,1602,'2012-11-28',2012,'Wednesday');
-- Tuesday, 25th Dec – Christmas Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(16,1,1602,'2012-12-25',2012,'Tuesday');

-- komli bangalore
-- Thursday, 26th Jan – Republic Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(1,1,187,'2012-01-26',2012,'Thursday');
-- Friday, 23rd March – Ugadi
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(25,1,187,'2012-03-23',2012,'Friday');
-- Tuesday, 1st May – May Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(6,1,187,'2012-05-01',2012,'Tuesday');
-- Wednesday, 15th Aug - Independence Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(8,1,187,'2012-08-15',2012,'Wednesday');
-- Wednesday, 19th Sep – Ganesh Chaturthi
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(11,1,187,'2012-09-19',2012,'Wednesday');
-- Tuesday, 2nd Oct – Gandhi Jayanti
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(12,1,187,'2012-10-02',2012,'Tuesday');
-- Wednesday, 24th Oct- Vijaya Dashmi (Dussera)
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(13,1,187,'2012-10-24',2012,'Wednesday');
-- Thursday, 1st Nov – Kannada Rajostava
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(59,1,187,'2012-11-01',2012,'Thursday');
-- Tuesday, 13th Nov – Diwali
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(14,1,187,'2012-11-13',2012,'Tuesday');
-- Tuesday, 25th Dec – Christmas Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(16,1,187,'2012-12-25',2012,'Tuesday');

-- komli chennai
-- Sunday, 15th Jan - Thiruvalluvar Day (Compulsory)
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(60,1,273,'2012-01-15',2012,'Sunday');
-- Monday, 16th Jan - Uzhavar Thirunal
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(61,1,273,'2012-01-16',2012,'Monday');
-- Thursday, 26th Jan – Republic Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(1,1,273,'2012-01-26',2012,'Thursday');
-- Tuesday, 1st May – May Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(6,1,273,'2012-05-01',2012,'Tuesday');
-- Wednesday, 15th Aug - Independence Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(8,1,273,'2012-08-15',2012,'Wednesday');
-- Monday, 20th Aug - Ramadhan / Eid-ul-Fitr,10
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(10,1,273,'2012-08-20',2012,'Monday');
-- Wednesday, 19th September - Vinayakar Chaturthi
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(62,1,273,'2012-09-19',2012,'Wednesday');
-- Tuesday, 2nd Oct – Gandhi Jayanti
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(12,1,273,'2012-10-02',2012,'Tuesday');
-- Friday, 26th Oct – Bakrid / Eid-ul-Zuha
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(56,1,273,'2012-10-26',2012,'Friday');
-- Tuesday, 25th Dec – Christmas Day
INSERT INTO infodb.leave_in_organizations(leave_id,org_id,city_id,leave_date,year,week_day)VALUES(16,1,273,'2012-12-25',2012,'Tuesday');


-- commit
commit;
