-- Active: 1708953613720@@127.0.0.1@5432@ph
-- Creating the departments table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Creating the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
);

INSERT INTO departments (department_name)
VALUES
('HR'),
('Marketing'),
('Finance'),
('IT'),
('Sales'),
('Engineering'),
('Customer Support'),
('Administration'),
('Research'),
('Quality Assurance')


INSERT INTO employees (employee_name, department_id, salary, hire_date)
VALUES
('John Doe', 1, 60000.00, '2022-01-10'),
('Jane Smith', 2, 75000.50, '2021-05-22'),
('Bob Johnson', 3, 80000.75, '2020-11-15'),
('Alice Williams', 4, 90000.25, '2019-08-03'),
('David Lee', 5, 65000.50, '2020-03-18'),
('Sara Brown', 6, 70000.00, '2021-09-28'),
('Mike Miller', 7, 55000.75, '2022-02-05'),
('Emily Davis', 8, 95000.00, '2015-12-12'),
('Chris Wilson', 9, 72000.50, '2020-06-30'),
('Amy White', 10, 68000.25, '2021-11-09'),
('John Johnson', 1, 62000.00, '2022-01-15'),
('Jessica Thompson', 2, 78800.50, '2021-06-05'),
('Michael Harris', 3, 85000.75, '2021-03-15'),
('Emma Martinez', 4, 92000.25, '2019-09-15'),
('James Taylor', 5, 67000.50, '2020-04-08'),
('Sophia Anderson', 6, 72000.00, '2021-10-10'),
('William Jackson', 7, 56000.75, '2022-02-10'),
('Olivia Nelson', 8, 97000.00, '2018-12-20'),
('Daniel White', 9, 73000.50, '2020-07-05'),
('Eva Johnson', 10, 69000.25, '2021-12-15'),
('Thomas Brown', 1, 61000.00, '2022-03-20'),
('Lily Davis', 2, 77000.50, '2021-07-12'),
('Andrew Smith', 3, 88000.75, '2021-04-25'),
('Grace Wilson', 4, 91000.25, '2019-10-30'),
('Kevin Lee', 5, 66000.50, '2020-01-15'),
('Natalie Harris', 6, 71000.00, '2021-11-01'),
('Robert Taylor', 7, 54000.75, '2022-01-28'),
('Ava Martinez', 8, 96000.00, '2018-11-05'),
('Henry White', 9, 74000.50, '2020-08-18'),
('Sophie Johnson', 10, 70000.25, '2021-05-09');



select * from departments;
select * from employees;


-- Inner Join to Retrieve Employee and Department Information:
-- select * from employees INNER join "departments" on employees.department_id = departments.department_id;
-- select * from employees INNER join "departments" USING(department_id)

-- Show Department Name with Average Salary:

select department_name , round(avg(salary)) as avg_salary,count(*) from employees join departments on departments.department_id=employees.department_id GROUP BY department_name order by avg_salary desc;

