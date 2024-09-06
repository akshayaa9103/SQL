SELECT 
    *
FROM
    employees;
select count(*) from employees;
select count(emp_no) from employees;
select count(gender) from employees;
#so no null values

select count(distinct gender) from employees;
select count(distinct emp_no) from employees;

SELECT 
    first_name, COUNT(first_name) AS Count
FROM
    employees
GROUP BY first_name;

select * from salaries;
select sum(salary) from salaries;

#need to count of records in emp_no and sum of salary by emp_no?
SELECT 
    emp_no, COUNT(emp_no) AS count, SUM(salary) AS total_salary
FROM
    salaries
GROUP BY emp_no;

#need to find the average of salary per emp_no and to find the top employees
SELECT 
    emp_no, AVG(salary) AS avg_salary
FROM
    salaries
GROUP BY emp_no
order by avg_salary desc;

#round
select round(avg(salary),2) from salaries;
select round(avg(salary),0) from salaries;
select round(avg(salary),-1) from salaries;
select round(avg(salary),-2) from salaries;
select round(avg(salary),-3) from salaries;

#need to find maximum salary per employee in salaries table
SELECT 
    emp_no, MAX(salary)
FROM
    salaries
GROUP BY emp_no;

select * from employees;
select max(first_name) from employees;
select min(first_name) from employees;
select max(hire_date) from employees;
select min(hire_date) from employees;

#need to find top 5 employees with maximum salary
select * from salaries;
SELECT 
    emp_no, MAX(salary) AS max_salary
FROM
    salaries
GROUP BY emp_no
ORDER BY max_salary desc
LIMIT 5;
#need to find bottom 5 employees with maximum salary
SELECT 
    emp_no, MAX(salary) AS min_salary
FROM
    salaries
GROUP BY emp_no
ORDER BY min_salary asc
LIMIT 5;
