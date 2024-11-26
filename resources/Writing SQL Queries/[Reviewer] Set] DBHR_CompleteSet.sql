/*

[README]

This file contains 55 SQL query questions ranging in difficulty from very easy to very difficult. 
The problems test a wide variety of SQL concepts such as filtering, sorting, joins, date 
manipulation, and aggregate functions, among others.

FAQs

1. How are the questions ordered?

		The questions are not strictly ordered by difficulty, but they generally get harder as you go along.
    
2. Can I use subqueries or CTEs?

		Yes, this file includes subqueries by design to emphasize the SQL skills needed for the exam. The use 
    of CTEs are entirely optional.

3. What the heck are CTEs?

		A CTE (common table expression) is a named subquery defined in a WITH clause. Essentially, it is
    a subquery factored out and can be called in a later query. Think about functions in programming, 
    so to speak. 

4. Are CTEs part of the exam?

		If it was, God save us all (dw it isn't).

5. Do the queries involve dealing with real-world data issues?

		Yes, there are questions related to data inconsistencies such as nulls and invalid data. This 
		reflects real-world challenges in data management. MAKE SURE TO READ DBHR_DATABASE_REFERENCE.pdf!

6. How should I prepare for the exam using this file?

		Focus on understanding how subqueries work in different contexts (e.g., subqueries in the WHERE 
    clause vs. subqueries in the FROM clause). Practice their use for filtering data, aggregation, 
    and complex joins.
*/

-- You can run these queries to see all of the data stored within the database.

SELECT * FROM countries;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM job_history;
SELECT * FROM jobs;
SELECT * FROM locations;
SELECT * FROM regions;

-- The DESCRIBE keyword shows the structure of the table. You can run these queries to get all 
-- of the information of each field in the table.

DESCRIBE countries;
DESCRIBE departments;
DESCRIBE employees;
DESCRIBE job_history;
DESCRIBE jobs;
DESCRIBE locations;
DESCRIBE regions;

-- Question 1: Returns 107 row(s)
-- Retrieve all columns from the employees table.



-- Question 2: Returns 107 row(s)
-- Retrieve only the first_name, last_name, and job_id from the employees table.



-- Question 3: Returns 14 row(s)
-- Find the full name of employees whose job_title contains 'Manager'.



-- Question 4: Returns 1 row(s)
-- Retrieve all departments where the department name contains the word 'Human'.



-- Question 5: Returns 46 row(s)
-- Find the full name of all employees who were hired on or before August 1, 1987.



-- Question 6: Returns 11 row(s)
-- Find the total number of employees in each department ordered by the highest number of 
-- employees and the department name.



-- Question 7: Returns 1 row(s)
-- Calculate the average salary of employees in the 'Sales' department rounded off to 2 digits.



-- Question 8: Returns 1 row(s)
-- Find the highest salary in the employees table.



-- Question 9: Returns 1 row(s)
-- Find the number of employees whose salary exceeds the mean salary.



-- Question 10: Returns 35 row(s)
-- Find all of the details of employees who earns from commissions.



-- Question 11: Returns 15 row(s)
-- Retrieve the full names of employees who were hired on a Monday.



-- Question 12: Returns 1 row(s)
-- Find all of the details of the employee who has been with the company the longest.



-- Question 13: Returns 3 row(s)
-- Find the 3rd, 4th, and 5th highest salaries among the employees.



-- Question 14: Returns 16 row(s)
-- Retrieve the full names of employees whose first name starts with the letter 'J'.



-- Question 15: Returns 3 row(s)
-- Retrieve the full name of all employees whose last name ends with 'son'.



-- Question 16: Returns 1 row(s)
-- Calculate the difference between the highest and lowest salary in the employees table.



-- Question 17: Returns 1 row(s)
-- Find the average salary of employees, rounded to two decimal places.



-- Question 18: Returns 107 row(s)
-- For each employee, calculate 10% of their salary as a performance bonus.



-- Question 19: Returns 1 row(s)
-- Retrieve the name and salary of employees where the salary is below 0 or above 20,000.



-- Question 20: Returns 0 row(s)
-- Find all employees with NULL values in their job_id column.



-- Question 21: Returns 0 row(s)
-- Find all departments where the location field is NULL.



-- Question 22: Returns 11 row(s)
-- Retrieve all employees where the hire date is within 2 days (inclusive) after their manager's 
-- hire date. Return the full name and hire date of both employee and their manager.



-- Question 23: Returns 107 row(s)
-- Retrieve a list of all employees along with the names of the departments they work in, if applicable.



-- Question 24: Returns 27 row(s)
-- Find the total salary for each department ordered by the total. Include departments with a 
-- total salary of zero.



-- Question 25: Returns 106 row(s)
-- For each employee, retrieve their full name and the full name of their superior, if applicable.



-- Question 26: Returns 27 row(s)
-- Retrieve all departments and the number of employees in each department, including departments 
-- with zero employees.



-- Question 27: Returns 4 row(s)
-- Find the full name of all employees who have the same job title as their manager. Include 
-- the full name of their manager.



-- Question 28: Returns 1 row(s)
-- Retrieve the name of the department with the highest average salary and include said salary.



-- Question 29: Returns 5 row(s)
-- Find the number of employees hired per month. Only include months where employees have been hired in.


  
-- Question 30: Returns 50 row(s)
-- Find the full name of all employees and their cities who work in a department located in 
-- American Cities containing the word 'South'.



-- Question 31: Returns 31 row(s)
-- Retrieve the full names of employees who were hired within the last 30 days (inclusive) of the 
-- most recent hire date.



-- Question 32: Returns 11 row(s)
-- Find the full name of all employees, their salary, and their department ID whose salary is 
-- within 10% of the highest salary in their department ordered decreasingly by their salary.



-- Question 33: Returns 89 row(s)
-- List the full name of employees who do not have any subordinates (employees reporting to them).



-- Question 34: Returns 1 row(s)
-- Retrieve the full name of all employees where at least 1 field in the department's location is 
-- empty (different from NULL or INVALID).



-- Question 35: Returns 2 row(s)
-- Display the name and total salary of only those departments where the total salary is more than 
-- 100,000 ordered by the total salary in decreasing order.



-- Question 36: Returns 1 row(s)
-- Find the average number of months employees have been working at the company in the year 1987.



-- Question 37: Returns 9 row(s)
-- Retrieve the names of the employees who have the second highest salary in each department 
-- and their department name.



-- Question 38: Returns 4 row(s)
-- List the ID of all departments and the NUMBER AND PERCENT of employees where at least 
-- 40% of the employees earn more than the department’s average salary rounded off to 2 decimal places.


  
-- Question 39: Returns 24 row(s)
-- Find the full name of employees who have the same first or last name. Do not include redundant records.



-- Question 40: Returns 1 row(s)
-- Retrieve the name of the department with the biggest difference between the highest and 
-- lowest salaries and its pay difference.



-- Question 41: Returns 1 row(s)
-- Find the number of employees whose salary is greater than 1.5 times the average salary of the 
-- company and whose job_title does not contain manager.



-- Question 42: Returns 8 row(s)
-- For all departments, get its name and calculate the number of employees who earn more than 
-- the department’s average salary. Order the results by the number of employees in descending order.



-- Question 43: Returns 7 row(s)
-- Find the full name of all superiors who joined the company at least 30 days after its company president.



-- Question 44: Returns 20 row(s)
-- List the full name and hiring date of employees in the Americas whose hire date falls 
-- on a weekend (Saturday or Sunday).



-- Question 45: Returns 20 row(s)
-- For each department, retrieve the department name, full name and salary of the employee 
-- with the highest salary and the employee with the lowest salary. Only include departments
-- with at least one employee.



-- Question 46: Returns 2 row(s)
-- List the regions where the total number of locations in the region exceeds the number 
-- of employees working in that particular region. Include said data in the resulting table.


  
-- Question 47: Returns 4 row(s)
-- Find the number of employees per region whose salary is greater than the average salary in their 
-- region. Include all regions.


  
-- Question 48: Returns 1 row(s)
-- Find the region whose maximum salary is the lowest compared to all other regions. Include said salary
-- in the resulting table



-- Question 49: Returns 4 row(s)
-- Find the city and country of all locations where the average salary is higher than the 
-- average salary of the entire company.



-- Question 50: Returns 10 row(s)
-- List the department name, country name, and number of employees working in each department, 
-- grouped by country, and ordered by the number of employees in descending order.



-- Question 51: Returns 18 row(s)
-- Retrieve the records of employees with three or more consecutive hire dates where 
-- their salary is at least 9000. Return the name, hire date, and salary of the employees 
-- ordered by hire_date in ascending order.



-- Question 52: Returns 14 row(s)
-- List the full name employees who have five or more direct reports (i.e., five or more 
-- subordinates) and their number of subordinates.



-- Question 53: Returns 1 row(s)
-- Calculate the difference in the average salary between employees hired in the third 
-- quarter of the year and employees hired in the fourth quarter of the year.



-- Question 54: Returns 8 row(s)
-- Find all invalid locations.



-- Question 55: Returns 11 row(s)
-- For all department managers, calculate the number of employees in their department who joined 
-- the company in July or August. Include those who do not have other employees in the department or those
-- with no employees who fit the criteria.



-- BONUS 1: Returns 107 row(s)
-- Get the last name and first name of each employee using at least ONE subquery.


