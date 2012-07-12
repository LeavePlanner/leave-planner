-- fetch the leaves for komli in bangalore
SELECT 
    o.name as 'Company',
    c.name as 'City',
    l.name as 'Occassion',
    lo.leave_date as 'Date',
    lo.week_day as 'Day'
FROM
    infodb.leave_in_organizations lo,
    infodb.org_organizations o,
    infodb.geo_cities c,
    infodb.leave_days l
where
    lo.city_id = c.id and lo.leave_id = l.id and lo.org_id = o.id and lo.org_id = 1 and lo.city_id = 187
order by lo.leave_date asc;


-- fetch the leaves for komli in all locations
SELECT 
    o.name as 'Company',
    c.name as 'City',
    l.name as 'Occassion',
    lo.leave_date as 'Date',
    lo.week_day as 'Day'
FROM
    infodb.leave_in_organizations lo,
    infodb.org_organizations o,
    infodb.geo_cities c,
    infodb.leave_days l
where
    lo.city_id = c.id and lo.leave_id = l.id and lo.org_id = o.id
order by lo.city_id asc, lo.leave_date asc;

