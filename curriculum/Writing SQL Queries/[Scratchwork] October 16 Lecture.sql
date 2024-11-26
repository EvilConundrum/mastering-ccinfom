/*
Functions to practice for the exam:

Range Conditions
	BETWEEN()
	IN()
	EXISTS()

Aggregate Queries
	SUM()
	COUNT()
	AVG()
	MIN()
	MAX()

Join Queries
	Inner Join()
	Left Join()
	Right Join()
	Self Join()

Numeric Functions
	ROUND()

String Functions
	CONCAT()

Date and Time Functions
	DATE()
	TIME()
	TIMESTAMP()
	DATE_ADD()
	TIMESTAMPDIFF()
	DATEDIFF()
	DAYNAME()
	MONTHNAME()
	NOW()
	DAY()
	MONTH()
	YEAR()
	INTERVAL()
*/

SELECT * FROM countries;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM job_history;
SELECT * FROM jobs;
SELECT * FROM locations;
SELECT * FROM regions;

-- Find the full name of each employee and the full name of their manager, if applicable.

SELECT
	e1.EMPLOYEE_ID
, e1.FIRST_NAME
, e1.LAST_NAME
, e1.MANAGER_ID
, e2.EMPLOYEE_ID
, e2.FIRST_NAME
, e2.LAST_NAME
, e2.MANAGER_ID
FROM
	employees e1
		LEFT JOIN employees e2
			ON	e1.MANAGER_ID = e2.EMPLOYEE_ID
WHERE
	e2.EMPLOYEE_ID IS NULL;

-- Return the value of PI rounded to 5 decimal places.

SELECT ROUND(3.14159265, 5);

-- State a fact.

SELECT CONCAT('bertumen', ' is', ' great!');

-- Demonstrate DATETIME functions.

SELECT 
	NOW()
, DATE(NOW())
, TIME(NOW())
, DATE_ADD(NOW(), INTERVAL 1 DAY);

/*
	The date difference can ALSO be written as: (NOTE THE ORDER OF HIRE_DATES COMPARED)
  
		TIMESTAMPDIFF(DAY, e2.HIRE_DATE, e1.HIRE_DATE) BETWEEN 0 AND 2
		TIMESTAMPDIFF(DAY, e2.HIRE_DATE, e1.HIRE_DATE) <= 2
		DATEDIFF(e1.HIRE_DATE, e2.HIRE_DATE) BETWEEN 0 AND 2
		DATEDIFF(e1.HIRE_DATE, e2.HIRE_DATE) <= 2
*/

-- Find the employees who were hired in the months of July, August, and September

SELECT
	*
FROM
	employees em
WHERE
	MONTHNAME(em.HIRE_DATE) IN ('July', 'August', 'September');