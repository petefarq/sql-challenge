
-- 1. To get salary information join salary and employees tables

SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.gender,
	salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

-- 2. To get employees hired in 1986

SELECT * from employees
WHERE EXTRACT(YEAR from "hire_date") = 1986;

--3. Lists the managers of each department by joining 3 tables

SELECT dm.dept_no, 
		d.dept_name, 
		dm.emp_no, 
		e.last_name, 
		e.first_name, 
		dm.from_date, 
		dm.to_date 
FROM dept_manager as dm
INNER JOIN departments as d on dm.dept_no = d.dept_no
INNER JOIN employees as e on dm.emp_no = e.emp_no
ORDER BY "dept_no" ASC;

-- 4. Lists dept. for each emmployee by joining 3 tables
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees as e
INNER JOIN dept_emp as de on e.emp_no = de.emp_no
INNER JOIN departments as d on de.dept_no = d.dept_no
ORDER BY e.emp_no;

-- 5. Lists employees with first name "Hercules" and last name begins with "B."

SELECT * FROM employees 
WHERE 
	first_name = 'Hercules' and 
	last_name like 'B%'

-- 6. Lists all employees in the Sales department, by joining 3 tables

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees as e
INNER JOIN dept_emp as de on e.emp_no = de.emp_no
INNER JOIN departments as d on de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

-- 7. Lists Sales and Development departments with 3 joins

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees as e
INNER JOIN dept_emp as de on e.emp_no = de.emp_no
INNER JOIN departments as d on de.dept_no = d.dept_no
WHERE 
	d.dept_name = 'Sales' or
	d.dept_name = 'Development'
ORDER BY e.emp_no;

-- 8. Frequency count of employee last names

SELECT last_name, count(last_name) as "Name Count"
FROM employees
GROUP By last_name
ORDER BY "Name Count" DESC;