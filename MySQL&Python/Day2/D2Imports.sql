#SHOW Databases;
#SELECT * FROM employees.salaries; # To Specify DB from query

USE Employees;
SHOW TABLES;

SELECT * FROM employees;
SELECT * FROM current_dept_emp;
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM salaries;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;

SELECT t1.emp_no, t1.first_name, t1.last_name, t2.dept_no, t3.title, t4.salary FROM Employees t1
JOIN current_dept_emp t2 ON t1.emp_no = t2.emp_no
JOIN titles t3 ON t1.emp_no = t3.emp_no
JOIN salaries t4 ON t1.emp_no = t4.emp_no 
WHERE t4.to_date = '9999-01-01';


SELECT t1.emp_no, t1.first_name, t1.last_name, t2.title, t3.salary, t5.dept_name FROM Employees t1
JOIN titles t2 ON t2.emp_no = t1.emp_no
JOIN salaries t3 ON t3.emp_no = t1.emp_no
JOIN dept_emp t4 on t1.emp_no = t4.emp_no
JOIN departments t5 on t4.dept_no = t5.dept_no
WHERE t2.to_date = '9999-01-01' AND t3.to_date = '9999-01-01' AND t4.to_date = '9999-01-01'
ORDER BY t3.salary DESC, t1.first_name DESC;


#=======================================================================================================================

#Current highest 5
WITH 
CTE1 AS (SELECT t1.emp_no, t1.first_name, t1.last_name FROM employees AS t1),
CTE2 AS (SELECT t1.emp_no, t1.salary, DENSE_RANK() OVER (ORDER BY t1.Salary DESC) AS Ranking FROM Salaries AS t1
WHERE t1.to_date = '9999-01-01')
Select * FROM CTE1 
JOIN CTE2 ON CTE1.emp_no = CTE2.emp_no
WHERE Ranking <= 5;

#Current lowest 5
WITH 
CTE1 AS (SELECT t1.emp_no, t1.first_name, t1.last_name FROM employees AS t1),
CTE2 AS (SELECT t1.emp_no, t1.salary, DENSE_RANK() OVER (ORDER BY t1.Salary ASC) AS Ranking FROM Salaries AS t1
WHERE t1.to_date = '9999-01-01')
Select * FROM CTE1 
JOIN CTE2 ON CTE1.emp_no = CTE2.emp_no
WHERE Ranking <= 5;

#Current highest 5 for d005 = development, 
WITH CTE1 AS 
(SELECT t1.emp_no, t1.first_name, t1.last_name, t2.title, t5.dept_name, t3.salary,
RANK() OVER (ORDER BY t3.salary DESC) AS Ranking FROM employees AS t1
JOIN titles t2 ON t2.emp_no = t1.emp_no
JOIN salaries t3 ON t3.emp_no = t1.emp_no
JOIN dept_emp t4 on t1.emp_no = t4.emp_no
JOIN departments t5 on t4.dept_no = t5.dept_no
WHERE  t2.to_date = '9999-01-01' AND t3.to_date = '9999-01-01' AND t4.to_date = '9999-01-01' AND t5.dept_name = 'Development') #Could be t4 = d005
SELECT * FROM CTE1 WHERE Ranking <= 5;

#Current lowest five for d002 = Finance
WITH CTE1 AS 
(SELECT t1.emp_no, t1.first_name, t1.last_name, t2.title, t5.dept_name, t3.salary,
RANK() OVER (ORDER BY t3.salary ASC) AS Ranking FROM employees AS t1
JOIN titles t2 ON t2.emp_no = t1.emp_no
JOIN salaries t3 ON t3.emp_no = t1.emp_no
JOIN dept_emp t4 on t1.emp_no = t4.emp_no
JOIN departments t5 on t4.dept_no = t5.dept_no
WHERE  t2.to_date = '9999-01-01' AND t3.to_date = '9999-01-01' AND t4.to_date = '9999-01-01' AND t5.dept_name = 'Finance') #Could be t4 = d002
SELECT * FROM CTE1 WHERE Ranking <= 5 ORDER BY salary DESC;

#=======================================================================================================================

WITH CTE1 AS 
(SELECT t5.dept_name, AVG(t1.salary) AS AVGDep
FROM salaries AS t1
JOIN dept_emp t4 on t1.emp_no = t4.emp_no
JOIN departments t5 on t4.dept_no = t5.dept_no
WHERE t1.to_date = '9999-01-01' AND t4.to_date = '9999-01-01'
GROUP BY t5.dept_name),
CTE2 AS (SELECT t1.emp_no, t1.first_name, t1.last_name, t5.dept_name, t3.salary
FROM employees AS t1
JOIN titles t2 ON t2.emp_no = t1.emp_no
JOIN salaries t3 ON t3.emp_no = t1.emp_no
JOIN dept_emp t4 on t1.emp_no = t4.emp_no
JOIN departments t5 on t4.dept_no = t5.dept_no
WHERE  t2.to_date = '9999-01-01' AND t3.to_date = '9999-01-01' AND t4.to_date = '9999-01-01')
SELECT * FROM CTE1
JOIN CTE2 WHERE CTE1.dept_name = CTE2.dept_name AND CTE1.AVGDep < CTE2.salary;

#Prof Version

SELECT e.emp_no, e.first_name, e.last_name, s.salary, d.dept_no, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
JOIN salaries s ON e.emp_no = s.emp_no,
	(SELECT d.dept_no, AVG(s.salary) as AvgSalary
	FROM departments d
	JOIN dept_emp de ON d.dept_no = de.emp_no
	JOIN salaries s ON de.emp_no = s.emp_no
	WHERE s.to_date = '9999-01-01'
	AND de.to_date = '9999-01-01'
	GROUP BY d.dept_no) e2
WHERE e2.dept_no = d.dept_no
AND s.salary > e2.AvgSalary
AND s.to_date = '9999-01-01'
AND de.to_date = '9999-01-01';

#=================================================================================================================================================

SELECT dm.dept_no, dn.dept_name, e.first_name, e.last_name, COUNT(cde.dept_no)-1 AS No_Employees
FROM dept_manager dm
JOIN employees e ON dm.emp_no = e.emp_no
JOIN current_dept_emp cde ON dm.dept_no = cde.dept_no
JOIN departments dn ON dm.dept_no = dn.dept_no
WHERE dm.to_date = '9999-01-01' AND cde.to_date = '9999-01-01'
GROUP BY cde.dept_no;

SELECT COUNT(emp_no) FROM current_dept_emp WHERE to_date = '9999-01-01';








