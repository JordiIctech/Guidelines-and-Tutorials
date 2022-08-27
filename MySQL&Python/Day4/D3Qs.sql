USE employees;

SHOW tables;

SELECT * FROM employees;
SELECT * FROM current_dept_emp;
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM salaries;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;

#1 write a SQL query to find those employees who do not belong to the department d005.
SELECT e.emp_no, e.first_name, e.last_name, cde.dept_no FROM employees AS e
JOIN current_dept_emp AS cde ON e.emp_no = cde.emp_no
WHERE cde.dept_no != 'd005' AND cde.to_date = '9999-01-01';

#2 write a SQL query to find those employees who joined before 1991.
SELECT e.emp_no, e.first_name, e.last_name, e.hire_date FROM employees AS e
WHERE e.hire_date < '1991-01-01';
#WHERE YEAR(e.hire_date) < '1991';

#3 write a SQL query to calculate the average salary of employees who works as "Technique Leader".
SELECT AVG(salary) AS AvgSalary FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
JOIN salaries s ON s.emp_no = e.emp_no
WHERE t.title = 'Technique Leader' AND t.to_date = '9999-01-01' AND s.to_date = '9999-01-01';

#4 write a SQL query to find out which employees joined in the month of January.
SELECT e.emp_no, e.first_name, e.last_name, e.hire_date FROM employees AS e
WHERE MONTH(e.hire_date) = 1;

#5 write a SQL query to identify employees with more than 25 years of experience.
SELECT e.emp_no, e.first_name, e.last_name, e.hire_date, de.to_date FROM employees AS e
JOIN dept_emp de ON de.emp_no = e.emp_no
WHERE YEAR(de.to_date)-YEAR(e.hire_date) > 25 AND curdate() - e.hire_date > 25 ;

#6 write a SQL query to find those employees whose salaries are less than 53000.
SELECT e.emp_no, e.first_name, e.last_name, s.salary FROM employees e
JOIN salaries s ON s.emp_no = e.emp_no
WHERE s.salary < 53000 AND s.to_date = '9999-01-01';

#7 write a SQL query to find out which employees joined the company before the 19th of the month.
SELECT e.emp_no, e.first_name, e.last_name, e.hire_date FROM employees AS e
WHERE DAY(e.hire_date) < 19;

# New employees check, newer than 1997
SELECT e.emp_no, e.hire_date, de.to_date FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
WHERE hire_date > '1997-01-01';
