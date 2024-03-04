-- craete Procedure

create Procedure remove_emp_by_id(p_emp_id int) language plpgsql as $$
begin
declare
test_variable int

select employee_id into test_variable from employees where employee_id=p_emp_id
delete from employees where employee_id=test_variable
raise notice 'employee removed successfully';
end

$$

call remove_emp_by_id(25)



