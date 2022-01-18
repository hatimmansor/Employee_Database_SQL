--1.select from employee table  number, last name, first name, sex, and join with salary table
--and disply the employee salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s. salary
FROM employees e
JOIN salaries s
ON e.emp_no=s.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE ((hire_date>='1/1/1986'::date)AND(hire_date<='31/12/1986'::date));

--3.List the manager of each department
SELECT d.dept_no,d.dept_name,e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_manager dm
ON e.emp_no=dm.emp_no
JOIN departments d
on d.dept_no=dm.dept_no;


--4. List the department of each employee
SELECT e.emp_no, e.last_name, e.first_name,d.dept_name
FROM employees e
JOIN dept_emp demp
ON e.emp_no=demp.emp_no
JOIN departments d
on d.dept_no=demp.dept_no;

--5. List first name, last name, and sex for employees
SELECT e.first_name, e.last_name,  e.sex
FROM employees e
WHERE e.first_name='Hercules'
AND e.last_name LIKE 'B%';


--6. List all employees in the Sales department
SELECT e.emp_no, e.last_name, e.first_name,d.dept_name
FROM employees e
JOIN dept_emp demp
ON e.emp_no=demp.emp_no
JOIN departments d
on d.dept_no=demp.dept_no
WHERE d.dept_name='Sales';


--7. List all employees in the Sales and Development departments,
SELECT e.emp_no, e.last_name, e.first_name,d.dept_name
FROM employees e
JOIN dept_emp demp
ON e.emp_no=demp.emp_no
JOIN departments d
on d.dept_no=demp.dept_no
WHERE d.dept_name='Sales'
OR d.dept_name='Development';

--8. In descending order, list the frequency count of employee last names
SELECT last_name,COUNT (last_name )  
FROM employees
GROUP BY last_name;