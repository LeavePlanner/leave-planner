{\rtf1\ansi\ansicpg1252\cocoartf1038\cocoasubrtf360
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww9000\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\ql\qnatural\pardirnatural

\f0\fs24 \cf0 CREATE OR REPLACE VIEW infodb.country_holidays AS(\
SELECT \
    c.name AS 'Country',\
    l.name AS 'Occassion',\
    lo.leave_date AS 'Date',\
    lo.week_day AS 'Day'\
FROM\
    infodb.leave_in_countries lo,\
    infodb.geo_countries c,\
    infodb.leave_days l\
WHERE\
    lo.country_id = c.id AND lo.leave_id = l.id\
ORDER BY lo.country_id ASC, lo.leave_date ASC\
);}