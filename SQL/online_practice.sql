/*All commands can be tested on: https://www.programiz.com/sql/online-compiler/ */

--Obtain all last names and count their repetations.
SELECT last_name, count(customer_id) AS Repetitions FROM Customers GROUP BY last_name;

--Specific element count.
SELECT COUNT(DISTINCT status) AS Repeats FROM Shippings;

--Show only unique rows based on certain elements
SELECT item, amount FROM Orders GROUP BY item, amount;
