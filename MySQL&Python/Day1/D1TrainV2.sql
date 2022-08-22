USE TD1;

SELECT Department, SUM(Salary) AS 'DepSalary' FROM Employees GROUP BY Department;

SELECT Department, MIN(Salary) AS 'MinSalary' , MAX(Salary) AS 'MaxSalary' 
FROM Employees WHERE Department != 'CEO'
GROUP BY Department HAVING MaxSalary > 30000;

SELECT E1.EmployeeId, E1.Firstname, E1.Lastname, E1.ReportsTo, E2.Firstname AS 'BossFirst', E2.Lastname  AS 'BossLast'
FROM Employees AS E1
JOIN EMployees AS E2
ON E1.ReportsTo = E2.EmployeeId; 

SELECT * FROM Employees ORDER BY Salary LIMIT 5;
SELECT * FROM Employees ORDER BY Salary DESC LIMIT 5;

WITH CTE
AS
(Select EmployeeId, Firstname, Lastname, Salary, 
DENSE_RANK() OVER (ORDER BY Salary DESC) AS Ranking FROM Employees)
Select * FROM CTE WHERE Ranking <= 5;

#------------------------------------------------Table Set 2-----------------------------------------------------------------

SELECT *, 'Johnson' AS Teacher FROM Johnson 
UNION ALL (SELECT Id, FirstName, LastName, grade, 'Mary' AS Teacher FROM Mary) 
UNION ALL (SELECT Id, FirstName, LastName, grade, 'Angela' AS Teacher FROM Angela);












