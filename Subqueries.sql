-- Active: 1708953613720@@127.0.0.1@5432@ph
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES
('John Doe', 'HR', 60000.00, '2022-01-10'),
('Jane Smith', 'Marketing', 75000.50, '2021-05-22'),
('Bob Johnson', 'Finance', 80000.75, '2020-11-15'),
('Alice Williams', 'IT', 90000.25, '2019-08-03'),
('David Lee', 'Sales', 65000.50, '2020-03-18'),
('Sara Brown', 'Engineering', 70000.00, '2021-09-28'),
('Mike Miller', 'Customer Support', 55000.75, '2022-02-05'),
('Emily Davis', 'Administration', 95000.00, '2018-12-12'),
('Chris Wilson', 'Research', 72000.50, '2020-06-30'),
('Amy White', 'Quality Assurance', 68000.25, '2021-11-09'),
('John Johnson', 'HR', 62000.00, '2022-01-15'),
('Jessica Thompson', 'Marketing', 78000.50, '2021-06-05'),
('Michael Harris', 'Finance', 85000.75, '2020-11-25'),
('Emma Martinez', 'IT', 92000.25, '2019-09-15'),
('James Taylor', 'Sales', 67000.50, '2020-04-08'),
('Sophia Anderson', 'Engineering', 72000.00, '2021-10-10'),
('William Jackson', 'Customer Support', 56000.75, '2022-02-10'),
('Olivia Nelson', 'Administration', 97000.00, '2018-12-20'),
('Daniel White', 'Research', 73000.50, '2020-07-05'),
('Ava Wilson', 'Quality Assurance', 69000.25, '2021-11-15'),
('Matthew Brown', 'HR', 63000.00, '2022-01-20'),
('Emily Garcia', 'Marketing', 76000.50, '2021-06-15'),
('Christopher Allen', 'Finance', 86000.75, '2020-12-05'),
('Jack Turner', 'Sales', 71000.00, '2021-02-25'),
('Sophie Parker', 'Engineering', 68000.25, '2020-08-12'),
('Brian Hall', 'Customer Support', 59000.50, '2022-03-02'),
('Lily Adams', 'Administration', 94000.75, '2019-11-18'),
('Mark Miller', 'Research', 70000.00, '2020-09-10'),
('Ella Davis', 'Quality Assurance', 72000.50, '2021-12-05'),
('Tom Wilson', 'HR', 67000.25, '2022-01-25');

-- drop table employees;
select * from employees;
-- -Retrieve all employees whose salary is greater than the highest salary of the department;
select max(salary) from employees where department_name='HR';  -- 67000.25
select * from 
-- //! select * from employees where 63000<salary;
select * from employees where (select max(salary) from employees where department_name='HR')<salary;