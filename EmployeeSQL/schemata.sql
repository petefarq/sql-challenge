CREATE TABLE employees (
emp_no INT PRIMARY KEY NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
gender VARCHAR(1) NOT NULL,
hire_date DATE NOT NULL
);

SELECT * from employees;

CREATE TABLE departments (
dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
dept_name VARCHAR(30) NOT NULL	
);

SELECT * from departments;

CREATE TABLE dept_emp (
de_id SERIAL PRIMARY KEY NOT NULL,
emp_no INT NOT NULL,
dept_no VARCHAR(4) NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * from dept_emp;

CREATE TABLE dept_manager (
dm_id SERIAL PRIMARY KEY NOT NULL,
dept_no VARCHAR(4) NOT NULL,
emp_no INT NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * from dept_manager;

CREATE TABLE salaries (
salary_id SERIAL PRIMARY KEY NOT NULL,
emp_no INT NOT NULL,
salary INT NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

SELECT * from salaries;

CREATE TABLE titles (
title_id SERIAL PRIMARY KEY NOT NULL,
emp_no INT NOT NULL,
title VARCHAR(30) NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

SELECT * from titles;

