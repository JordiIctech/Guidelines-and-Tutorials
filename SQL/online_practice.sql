/*All commands can be tested on: https://www.programiz.com/sql/online-compiler/ */

--1. Obtain all last names and count their repetations.
SELECT last_name, count(customer_id) AS Repetitions FROM Customers GROUP BY last_name;
