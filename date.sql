-- Active: 1708953613720@@127.0.0.1@5432@ph
--see time ZONE
-- show timezone

-- see timestamp 
-- select now()


-- create a table with date
-- create table timeZ(ts TIMESTAMP without TIME zone ,tsz timestamp with time zone);

-- insert imto TABLE
-- insert into  timeZ values('2024-01-12 10:45:05','2024-01-12 10:45:05')

-- see today's date
-- select CURRENT_DATE
-- select now()::date

-- see time
-- select now()::time

-- date formet function
-- select to_char(now(),'DDD')

-- go back one YEAR
-- select current_date -interval '1 month'

-- caculate age using date
-- select age(CURRENT_DATE,'1996-07-29')

-- Calculate age from table data
-- select *,age(CURRENT_DATE,dob) from students;

-- get year from  date 
-- select extract(year from '2021-05-21'::date)


