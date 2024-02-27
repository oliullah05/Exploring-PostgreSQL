-- Active: 1708953613720@@127.0.0.1@5432@ph
SELECT * from person2;

-- add a colomn
-- alter Table person2 add COLUMN email VARCHAR(50) default ('default@mail.com') not null;



-- insert into person2 VALUES(12,'marufa',33,'marifa@gnail.com');

-- delete a column
-- alter table person2 drop column email;

-- renameAColumn
-- alter table person2 RENAME column age to user_age;



-- modify column type
-- alter table person2 Alter column user_name type VARCHAR(50) ;

-- add constrain
-- alter table person2 alter column user_age set  not null;

-- remove a constrain
-- alter table person2 alter COLUMN user_age drop not null;
select * from person2;
-- set unique constrain
-- alter Table person2 add constraint unique_person2_user_age UNIQUE(user_age);

-- delete unique constraint
-- alter table person2  drop constraint unique_person2_user_age;

-- delete all table data
-- TRUNCATE table person2;