-- Active: 1708953613720@@127.0.0.1@5432@ph
create table employees (
    emp_id int ,
    emp_name VARCHAR(50),
    dept_id int
)

create table departments (
    dept_id int,
    dept_name VARCHAR(50)
)

insert into employees values (1,'jhon Doe', 101);
insert into employees values (2,'jhon Smith', 102 );
;insert into departments values (101,'HR');
insert into departments values (102,'MARKEting' )


select * from employees ;
select * from departments ;
drop table employeesl;
drop table departments 


-- corss join
-- select * from employees CROSS join departments  

-- narural JOIN
select * from employees NATURAL join departments
