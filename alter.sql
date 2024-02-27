-- Active: 1708953613720@@127.0.0.1@5432@ph
SELECT * from person2;

-- add a colomn
-- alter Table person2 add COLUMN email VARCHAR(50) default ('default@mail.com') not null;



-- insert into person2 VALUES(12,'marufa',33,'marifa@gnail.com');

-- delete a column
-- alter table person2 drop column email;

-- renameAColumn
-- alter table person2 RENAME column age to user_age;

select * from person2;

-- modify column type
-- alter table person2 Alter column user_name type VARCHAR(50) ;

-- add constrain
-- alter table person2 alter column user_age set  not null;

-- remove a constrain
alter table person2 alter COLUMN user_age drop not null;