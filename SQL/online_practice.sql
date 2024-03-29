/*All commands can be tested on: https://www.programiz.com/sql/online-compiler/ */

--Obtain all last names and count their repetations.
SELECT last_name, count(customer_id) AS Repetitions FROM Customers GROUP BY last_name;

--Specific element count.
SELECT COUNT(DISTINCT status) AS Repeats FROM Shippings;

--Show only unique rows based on certain elements
SELECT item, amount FROM Orders GROUP BY item, amount;

--Age ranked from lowest to highest using Dense_Rank()
SELECT customer_id, age,   
       DENSE_RANK() OVER (ORDER BY age ASC) AS Ranked  --ORDER BY chooses what to rank, you can ORDER BY additional parameters to break ties.
FROM Customers;  

--Age ranked from highest to lowest, compared to their same country using Dense_Rank()
SELECT customer_id, age, country,  
       DENSE_RANK() OVER (PARTITION BY country ORDER BY age DESC) AS Ranked  --PARTITION BY divides the categories to rank against.
FROM Customers ORDER BY ranked ASC, country DESC;  

--Replace all instances of one "like" string to another.

--Join together multiple tables
