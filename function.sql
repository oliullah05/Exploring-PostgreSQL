create function emp_count() returns int language sql 
as  $$

select count(*) from employees
$$

select emp_count()



create or replace function delete_emp() returns void language sql 
as  $$

delete from employees where employee_id=30
$$

select delete_emp();




-- using function by parameter

create or replace function delete_emp_by_id(p_emp_id int) returns void language sql 
as  $$

delete from employees where employee_id=p_emp_id
$$

select delete_emp_by_id(30)







