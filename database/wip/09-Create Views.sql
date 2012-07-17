CREATE OR REPLACE VIEW infodb.country_holidays AS(
SELECT 
    c.name AS 'Country',
    l.name AS 'Occassion',
    lo.leave_date AS 'Date',
    lo.week_day AS 'Day'
FROM
    infodb.leave_in_countries lo,
    infodb.geo_countries c,
    infodb.leave_days l
WHERE
    lo.country_id = c.id AND lo.leave_id = l.id
ORDER BY lo.country_id ASC, lo.leave_date ASC
);


