------------------------------------------------------------------------------------------------------3
--SELECT firstname, lastname, hiredate FROM Employees 
--WHERE country = 'USA' AND title = 'Sales Representative';

------------------------------------------------------------------------------------------------------4
--SELECT * FROM Products
--WHERE productname LIKE '%queso%';

------------------------------------------------------------------------------------------------------5
--SELECT supplierid, contactname, contacttitle FROM Suppliers 
--WHERE country = "Germany" or country = 'Canada' AND NOT contacttitle = 'Marketing Manager';

------------------------------------------------------------------------------------------------------6
--SELECT OrderID, CustomerID, ShipCountry FROM Orders 
--WHERE shipcountry IN ('Brazil', 'Mexico', 'Argentina', 'Venezuela');

------------------------------------------------------------------------------------------------------7
--SELECT FirstName, LastName, Title, STRFTIME('%m/%d/%Y', birthdate) AS BirthDay FROM Employees
--ORDER BY birthdate asc;

------------------------------------------------------------------------------------------------------8
--SELECT FirstName, LastName, (firstname || ' ' || lastname) as FullName from Employees;

------------------------------------------------------------------------------------------------------9
--SELECT t1.OrderID, STRFTIME('%d/%m/%Y', t1.orderdate) AS OrderDate, t2.companyname FROM Orders t1
--JOIN Shippers t2 on shipvia = shipperid
--WHERE orderid < 10300 ORDER BY orderid ASC;

------------------------------------------------------------------------------------------------------10
--SELECT COUNT(t1.ProductID) AS TotalNumber, t2.CategoryName 
--FROM Products AS t1 
--JOIN Categories AS t2 ON t1.CategoryID = t2.CategoryID
--GROUP BY t2.CategoryName
--ORDER BY COUNT(t1.ProductID) DESC;

------------------------------------------------------------------------------------------------------11 (Recheck)
--SELECT Country, City, COUNT(CustomerID) AS TotalCustomers FROM Customers
--group BY City ORDER BY country ASC, COUNT(CustomerID) DESC;

------------------------------------------------------------------------------------------------------12
--SELECT t1.EmployeeID, t1.LastName, t2.OrderID, t4.ProductName, t3.quantity FROM Employees t1
--JOIN Orders t2 ON t1.employeeid = t2.employeeid
--JOIN OrderDetails t3 ON t2.orderid = t3.orderid
--JOIN Products t4 ON t3.productid = t4.productid
--Order BY t2.OrderID ASC, t3.ProductID ASC;

------------------------------------------------------------------------------------------------------13
--SELECT CustomerID FROM Customers
--WHERE CustomerID NOT IN (SELECT CustomerID from Orders);

------------------------------------------------------------------------------------------------------14
--Could also use LIMIT 10, but considering many orders tie, the rank() function was used.
/*WITH 
CTE1 AS (Select orderid, COUNT(DISTINCT(productid)) AS Lines,
RANK() OVER (ORDER BY COUNT(DISTINCT(productid)) DESC) Ranked
FROM OrderDetails GROUP BY orderid)
SELECT * FROM CTE1 WHERE Ranked <= 10;*/

------------------------------------------------------------------------------------------------------15
SELECT DISTINCT productid, OrderID, quantity
FROM OrderDetails
WHERE quantity > 60
GROUP BY OrderID, quantity
HAVING COUNT(*) > 1;
--Add extra notes later.
/*Accidentally double-entered a line item on an order, with a different ProductID, 
but the same quantity. She remembers that the quantity was 60 or more. 
Show all the OrderIDs with order details that match this, in order of OrderID.*/
------------------------------------------------------------------------------------------------------16

------------------------------------------------------------------------------------------------------17

------------------------------------------------------------------------------------------------------18

------------------------------------------------------------------------------------------------------19

------------------------------------------------------------------------------------------------------20
