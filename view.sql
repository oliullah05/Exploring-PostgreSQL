-- create view function

create view dept_avg_salary  as select department_name, avg(salary) from employees group by department_name;


-- use view function
select * from dept_avg_salary;