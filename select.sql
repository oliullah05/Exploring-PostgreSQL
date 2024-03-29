-- create a table

-- CREATE TABLE students (
--   student_id SERIAL PRIMARY KEY,
--   first_name VARCHAR(50) not null,
--   last_name VARCHAR(50) not null,
--   age INT ,
--   grade CHAR(2),
--   course VARCHAR(50),
--   email VARCHAR(100),
--   dob DATE,
--   blood_group VARCHAR(5),
--   country VARCHAR(50)
-- );

-- add data into table 
-- INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
-- VALUES
-- ('John', 'Doe', 20, 'A', 'Math', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
-- ('Jane', 'Smith', 21, 'B', 'History', 'jane.smith@example.com', '2003-05-20', 'A-', 'Canada'),
-- ('Alice', 'Johnson', 19, 'A', 'Physics', 'alice.johnson@example.com', '2002-11-08', 'B+', 'UK'),
-- ('Bob', 'Williams', 22, 'C', 'Chemistry', 'bob.williams@example.com', '2001-07-03', 'AB-', 'Australia'),
-- ('Charlie', 'Brown', 20, 'B', 'English', NULL, '2004-03-30', 'A+', 'New Zealand'),
-- ('Emma', 'Jones', 23, 'B', 'Biology', 'emma.jones@example.com', '2000-09-12', 'A-', 'USA'),
-- ('Michael', 'Johnson', 22, 'C', 'Physics', 'michael.johnson@example.com', '2002-04-05', 'O', 'Canada'),
-- ('Olivia', 'Davis', 21, 'A', 'Math', 'olivia.davis@example.com', '2003-12-18', 'B-', 'UK'),
-- ('William', 'Taylor', 20, 'B', 'Chemistry', NULL, '2004-08-30', 'A+', 'Australia'),
-- ('Sophia', 'Brown', 24, 'A', 'English', 'sophia.brown@example.com', '1999-06-25', 'AB+', 'New Zealand'),
-- ('Liam', 'Miller', 19, 'C', 'History', 'liam.miller@example.com', '2002-02-10', 'A-', 'USA'),
-- ('Ava', 'Anderson', 22, 'B', 'Biology', 'ava.anderson@example.com', '2000-11-15', 'B+', 'Canada'),
-- ('Noah', 'Martinez', 21, 'A', 'Physics', NULL, '2001-04-28', 'O+', 'UK'),
-- ('Isabella', 'Clark', 20, 'C', 'Chemistry', 'isabella.clark@example.com', '2003-10-03', 'A-', 'Australia'),
-- ('Ethan', 'Garcia', 23, 'B', 'Math', 'ethan.garcia@example.com', '2000-07-22', 'B-', 'New Zealand'),
-- ('Sophie', 'Moore', 22, 'A', 'English', 'sophie.moore@example.com', '2002-12-05', 'A+', 'USA');


-- INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
-- VALUES
-- ('Landon', 'Hall', 20, 'B', 'Chemistry', 'landon.hall@example.com', '2004-02-18', 'AB+', 'USA'),
-- ('Chloe', 'Wright', 21, 'A', 'Math', 'chloe.wright@example.com', '2003-08-10', 'B-', 'Canada'),
-- ('Jackson', 'Lee', 19, 'C', 'Biology', 'jackson.lee@example.com', '2002-05-27', 'O-', 'UK'),
-- ('Grace', 'Evans', 22, 'B', 'History', 'grace.evans@example.com', '2001-11-14', 'A+', 'Australia'),
-- ('Carter', 'King', 20, 'A', 'Physics', 'carter.king@example.com', '2004-05-01', 'A-', 'New Zealand'),
-- ('Harper', 'Brown', 23, 'B', 'English', 'harper.brown@example.com', '2000-10-28', 'B+', 'USA'),
-- ('Mason', 'Thomas', 22, 'A', 'Chemistry', 'mason.thomas@example.com', '2002-03-15', 'O+', 'Canada'),
-- ('Aubrey', 'Harris', 21, 'C', 'Physics', 'aubrey.harris@example.com', '2003-09-22', 'A-', 'UK'),
-- ('Evelyn', 'Johnson', 24, 'B', 'History', 'evelyn.johnson@example.com', '1999-07-07', 'B-', 'Australia'),
-- ('Logan', 'Wilson', 19, 'A', 'Biology', 'logan.wilson@example.com', '2002-01-24', 'AB+', 'New Zealand');



-- see all data 
-- select * from students;

-- see only one COLUMN
-- select email from students;

-- see multiple column
-- select email,first_name,age from students;


-- hide orginal column name 
-- select email as "student email" from students;

--  sort by 
-- select * from students ORDER BY (dob) desc
-- find unique country/property
-- select distinct blood_group from students;

-- filter 
-- select * from students WHERE (country='USA' or country ='Australia') and age =20
-- select * from  students WHERE age<>20

-- upperCase
-- select upper(first_name) as first_name_upper_case,* from students

-- concat two field
-- select concat(first_name,' ',last_name) as fullName from students;

-- see first_name length
-- select length(first_name) from students

-- see age avararage
-- select avg(age) from students

-- max aged person
-- select max(age) from students;

-- sum
-- select sum(age) from students

-- count row
-- select count(*) from students;

-- biggest name 
-- select max(length(first_name)) from students;

-- filter not this country
-- select * from students WHERE country <>'USA'

-- filter where email is NULL
-- select * from students WHERE not email is null



-- null default value
-- select COALESCE(email,'default@gmail.com') as "Email",* from students

-- filter
-- select * from students WHERE country = 'USA' or country ='UK' or country = 'Canada'
-- select * from students WHERE country IN('USA','Canada')
-- select * from students WHERE age BETWEEN 19 and 20;
-- select * from students WHERE dob BETWEEN '2000-01-01' and '2005-01-01'  order by(dob) DESC;

-- like 
-- SELECT * from students WHERE first_name like 'J%'
-- SELECT * from students WHERE first_name Ilike 'a%'


-- pagination 
-- select * from students limit 2 OFFSET 4*1

-- delete  row
-- delete from students WHERE grade = 'C' and country = 'UK'
-- delete from students


SELECT * from students ;

-- update
update students set email='default@mail.com' , age=200 WHERE student_id=45



