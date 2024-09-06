use employees;
SELECT 
    first_name, last_name, gender, hire_date
FROM
    employees
WHERE
    first_name="PARTO" or first_name="GEORGI";
    
    
SELECT 
    first_name, last_name, gender, hire_date
FROM
    employees
WHERE
    (hire_date BETWEEN "2000-01-01" AND "2000-02-01") AND gender="F";
    
    
SELECT 
    first_name, last_name, gender, hire_date
FROM
    employees
WHERE
    first_name IS NOT NULL AND gender = 'M'
        AND last_name IN ('koblick' , 'Simmel')
        AND first_name LIKE ('ma%');
     
     
SELECT distinct
	hire_date,first_name
from
	employees
    WHERE first_name="GEORGI";
    
    
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;


SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
ORDER BY first_name ASC , last_name DESC;


SELECT 
    first_name, COUNT(first_name) as count
FROM
    employees
GROUP BY first_name
ORDER BY count(first_name) DESC;


SELECT 
    first_name, COUNT(first_name) AS count
FROM
    employees
GROUP BY first_name
HAVING count > 250
ORDER BY COUNT(first_name);

SELECT 
    *
FROM
    Salaries;


SELECT 
    emp_no, AVG(salary) AS avg
FROM
    Salaries
GROUP BY emp_no
HAVING avg > 80000;


SELECT 
    emp_no, MAX(salary) AS Max_salary
FROM
    salaries
GROUP BY emp_no
ORDER BY max_salary asc
LIMIT 10;