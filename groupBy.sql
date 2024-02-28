-- Active: 1708953613720@@127.0.0.1@5432@ph
select * from students;

-- groub by country
-- select country , count(*) from students group by country;

-- caculate avarage age for each GROUP
-- select country , count(*), avg(age) from students group by  country;


-- filter GROUP BY result using having kyword
-- select country ,avg(age) from students group by country having avg(age)<21.5

-- count student born in each year
select extract(year from dob) as birth_year , count(*) from students group by birth_year