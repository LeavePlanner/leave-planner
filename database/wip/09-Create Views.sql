-- list holidays / leaves country wise
CREATE OR REPLACE VIEW infodb.country_wise_holidays AS(
SELECT 
    c.name AS 'Country',
    l.name AS 'Occassion',
    lo.leave_date AS 'Date',
    lo.week_day AS 'Day'
FROM
    infodb.leave_in_country lo,
    infodb.country c,
    infodb.day l
WHERE
    lo.country_id = c.id AND lo.leave_id = l.id
ORDER BY lo.country_id ASC, lo.leave_date ASC
);



-- fetch the leaves in india -- country public leaves
CREATE OR REPLACE VIEW infodb.india_holidays AS(
SELECT 
    c.name as 'Country',
    l.name as 'Occassion',
    lc.leave_date as 'Date',
    lc.week_day as 'Day'
FROM
    infodb.leave_in_country lc,
    infodb.country c,
    infodb.day l
where
    lc.country_id = c.id and lc.leave_id = l.id and lc.country_id=100
order by lc.leave_date asc
);



-- fetch the leaves for komli in all locations
CREATE OR REPLACE VIEW infodb.komli_holidays AS(
SELECT 
    o.name as 'Company',
    c.name as 'City',
    l.name as 'Occassion',
    lo.leave_date as 'Date',
    lo.week_day as 'Day'
FROM
    infodb.leave_in_organization lo,
    infodb.organization o,
    infodb.city c,
    infodb.day l
where
    lo.city_id = c.id and lo.leave_id = l.id and lo.org_id = o.id
order by lo.city_id asc, lo.leave_date asc
);



-- fetch the leaves for komli in bangalore
CREATE OR REPLACE VIEW infodb.komli_holidays_in_bangalore AS(
SELECT 
    o.name as 'Company',
    c.name as 'City',
    l.name as 'Occassion',
    lo.leave_date as 'Date',
    lo.week_day as 'Day'
FROM
    infodb.leave_in_organization lo,
    infodb.organization o,
    infodb.city c,
    infodb.day l
where
    lo.city_id = c.id and lo.leave_id = l.id and lo.org_id = o.id and lo.org_id = 1 and lo.city_id = 187
order by lo.leave_date asc
);
