 SELECT * FROM employees WHERE hire_date = '2017-01-01'
SELECT * FROM employee WHERE hire_date = '2017-01-01';


SELECT * FROM salary WHERE salary >= 60000;

SELECT * FROM employee ORDER BY hire_date ASC;

UPDATE salary SET salary= 120000 WHERE first_name = 'John';

-- Select employees hired after January 1, 2020
SELECT * FROM employees WHERE hire_date > '2020-01-01';

-- Select employees with a salary greater than 60000
SELECT * FROM salary WHERE salary > 60000;

-- Select employees hired between January 1, 2019, and December 31, 2020
SELECT * FROM employee WHERE hire_date BETWEEN '2019-01-01' AND '2020-12-31';

-- Select employees with a salary between 60000 and 80000
SELECT * FROM salary WHERE salary BETWEEN 60000 AND 80000;

--- Select employees whose first name starts with 'J'
SELECT * FROM employee WHERE first_name LIKE 'J%';

-- Select employees whose email contains 'example'
SELECT * FROM employee WHERE email LIKE '%example%';

-- Select employees whose last name is either 'Smith' or 'Jones'
SELECT * FROM employee WHERE last_name IN ('Smith', 'Jones');

-- Select employees with salaries of either 60000, 70000, or 80000
SELECT * FROM salary WHERE salary IN (60000, 70000, 80000);

-- Select all employees ordered by hire date ascending
SELECT * FROM employee ORDER BY hire_date ASC;

-- Select all salaries ordered by salary in descending order
SELECT * FROM salary ORDER BY salary DESC;

-- Group employees by hire date
SELECT hire_date, COUNT(*) FROM employee GROUP BY hire_date;

-- Group salaries by hire date
SELECT hire_date, COUNT(*) FROM salary GROUP BY hire_date;

-- Group salaries by first name and hire date
SELECT first_name, hire_date, COUNT(*) FROM salary GROUP BY first_name, hire_date;

-- Group by hire date and filter groups with more than 1 employee 
SELECT first_name,last_name, COUNT(*) AS employee_count FROM employee GROUP BY first_name,last_name,hire_date HAVING COUNT(*) = 1;

-- Group by hire date and filter groups with more than 1 salary record
SELECT first_name,last_name, COUNT(*) AS employee_count FROM salary GROUP BY first_name,last_name,hire_date HAVING COUNT(*) > 1;

-- Select the first 5 employees
SELECT * FROM employee LIMIT 5;

-- Select 5 employees starting from the 6th record
SELECT * FROM employee WHERE id >=6;

-- Select the first 3 salary records
SELECT * FROM employee LIMIT 3;

-- Select 3 salary records starting from the 4th record
SELECT * FROM employee WHERE id >=4 LIMIT 3;
