--1.select from employee table  number, last name, first name, sex, and join with salary table
--and disply the employee salary.
SELECT e.emp_no 		AS "Employee Number", 
	e.last_name			AS "Last Name", 
	e.first_name		AS "First NAme", 
	e.sex				AS "Sex", 
	s. salary			AS "Salary"
FROM employees e
JOIN salaries s
ON e.emp_no=s.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name		AS "First Name", 
		last_name		AS "Last Name", 
		hire_date		AS "Hire Date"
FROM employees
WHERE ((hire_date>='1/1/1986'::date)AND(hire_date<='31/12/1986'::date));

--3.List the manager of each department
SELECT d.dept_no		AS "Department Number",
		d.dept_name		AS "Department Name",
		e.emp_no		AS "Employee Number",
		e.last_name		AS "Last Name",
		e.first_name	AS "First Name"
FROM employees e
JOIN dept_manager dm
ON e.emp_no=dm.emp_no
JOIN departments d
on d.dept_no=dm.dept_no;


--4. List the department of each employee
SELECT e.emp_no			AS "Employee Number", 
		e.last_name		AS "Last Name", 
		e.first_name	AS "First Name",
		d.dept_name		AS "Dapertment Name"
FROM employees e
JOIN dept_emp demp
ON e.emp_no=demp.emp_no
JOIN departments d
on d.dept_no=demp.dept_no;

--5. List first name, last name, and sex for employees
SELECT e.first_name		AS "First Name", 
		e.last_name		AS "Last Name",  
		e.sex			AS "Sex"
FROM employees e
WHERE e.first_name='Hercules'
AND e.last_name LIKE 'B%';


--6. List all employees in the Sales department
SELECT e.emp_no			AS "Employee Number", 
		e.last_name		AS "Last Name", 
		e.first_name	AS "First Name",
		d.dept_name		AS "Department Name"
FROM employees e
JOIN dept_emp demp
	ON e.emp_no=demp.emp_no
JOIN departments d
	ON d.dept_no=demp.dept_no
	WHERE d.dept_name='Sales';


--7. List all employees in the Sales and Development departments,
SELECT e.emp_no		AS "Employee Number", 
	e.last_name		AS "Last Name", 
	e.first_name	AS "First Name",
	d.dept_name		AS "Department Name"
FROM employees e
JOIN dept_emp demp
	ON e.emp_no=demp.emp_no
JOIN departments d
	ON d.dept_no=demp.dept_no
WHERE 	d.dept_name='Sales'
	OR 	d.dept_name='Development';




--8. In descending order, list the frequency count of employee last names
SELECT last_name 		AS "Last Name",
	COUNT (last_name )  AS "Number of Repeats"
FROM employees
GROUP BY last_name;