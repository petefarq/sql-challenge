CREATE TABLE employees (
emp_no INT PRIMARY KEY,
birth_date DATE,
first_name VARCHAR(30),
last_name VARCHAR(30),
gender VARCHAR(1),
hire_date DATE
);

SELECT * from employees;

CREATE TABLE departments (
dept_no VARCHAR(4) PRIMARY KEY,
dept_name VARCHAR	
);

SELECT * from departments;

CREATE TABLE dept_emp (
emp_no INT,
dept_no VARCHAR(4),
from_date DATE,
to_date DATE,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * from dept_emp;

CREATE TABLE dept_manager (
dept_no VARCHAR(4),
emp_no INT,  DEpt
from_date DATE,
to_date DATE,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * from dept_manager;

CREATE TABLE salaries (
emp_no INT,
salary INT,
from_date DATE,
to_date DATE,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

SELECT * from salaries;

CREATE TABLE titles (
emp_no INT,
title VARCHAR,
from_date DATE,
to_date DATE,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

SELECT * from titles;

