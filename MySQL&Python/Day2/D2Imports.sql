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


#d005 = development, d002 = Finance-------------------------------------------------------------------------------------

WITH 
CTE1 AS (SELECT t1.emp_no, t1.first_name, t1.last_name FROM employees AS t1),
CTE2 AS (SELECT t1.emp_no, t1.salary, DENSE_RANK() OVER (ORDER BY t1.Salary DESC) AS Ranking FROM Salaries AS t1
WHERE t1.to_date = '9999-01-01')
Select * FROM CTE1 
JOIN CTE2 ON CTE1.emp_no = CTE2.emp_no
WHERE Ranking <= 5;

WITH 
CTE1 AS (SELECT t1.emp_no, t1.first_name, t1.last_name FROM employees AS t1),
CTE2 AS (SELECT t1.emp_no, t1.salary, DENSE_RANK() OVER (ORDER BY t1.Salary ASC) AS Ranking FROM Salaries AS t1
WHERE t1.to_date = '9999-01-01')
Select * FROM CTE1 
JOIN CTE2 ON CTE1.emp_no = CTE2.emp_no
WHERE Ranking <= 5;

WITH 
CTE1 AS (SELECT t1.emp_no, t1.first_name, t1.last_name FROM employees AS t1),
CTE2 AS (SELECT t1.emp_no, t1.salary, DENSE_RANK() OVER (ORDER BY t1.Salary DESC) AS Ranking FROM Salaries AS t1
WHERE t1.to_date = '9999-01-01')
Select * FROM CTE1 
JOIN CTE2 ON CTE1.emp_no = CTE2.emp_no
WHERE Ranking <= 5;
