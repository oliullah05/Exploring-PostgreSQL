-- Active: 1708953613720@@127.0.0.1@5432@ph
-- A trigger is a database object in PostgreSQL (and other database management systems) that automatically executes a specified set of actions in response to certain database events or conditions. */ Table-Level Events: INSERT, UPDATE, DELETE, TRUNCATE Database-Level Events Database Startup, Database Shutdown, Connection start and end etc …


-- CREATE TRIGGER trigger_name
--  (BEFORE / AFTER |INSTEAD OF) (INSERT /UPDATE /DELETE /TRUNCATE)  ON table name
--  [FOR EACH ROW] 
-- EXECUTE FUNCTION function_name();


-- crearte TRIGGER
CREATE Trigger TR 
before delete 
on user 
for each row 
execute function function_name();


-- create table 

create table my_users 
(
    user_name varchar(50),
    email VARCHAR(100)
)

insert into my_users values('oli','oli@gmail.com'),('hasan','hasan@gmail.com')

select * from my_users


-- create TABLE
create table deleted_user_audit 
(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
)

select * from deleted_user_audit;


-- create function for trigger
create or replace function save_deleted_user() RETURNS TRIGGER language plpgsql as 
$$
BEGIN

insert into deleted_user_audit values (old.user_name,now());
raise notice 'deletd user audit log created';
RETURN old;
END
$$




-- create TRIGGER
create or REPLACE trigger save_deleted_user_trigger
 before delete 
 on my_users 
 for each row 
 execute FUNCTION save_deleted_user();

 delete from my_users where user_name='hasan';

 