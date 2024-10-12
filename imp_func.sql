select * from employees;
SELECT 
    CONCAT(first_name, ' ', last_name)
FROM
    employees;

SELECT 
    concat_ws('-',first_name,last_name,gender)
FROM
    employees;
    
select first_name,length(first_name) as len from employees order by len desc;
select first_name,length(first_name) as len from employees order by len;

select left(hire_date,4) from employees;
select left(first_name,4) from employees;

CREATE TABLE demo (
    name VARCHAR(10)
);
insert into demo
values("   Krithik"),("   Aadhav"),("Akshay   "),("   lila   ");
select * from demo;
select ltrim(name) from demo;
select name,ltrim(name) from demo;
select ltrim(rtrim(name))as namet ,length(ltrim(rtrim(name))) as len from demo;
select trim(name) as namet ,length(trim(name)) as len from demo;

select * from employees;
select replace(first_name,"Ge","Ze") from employees;
SELECT 
    SUBSTRING(first_name, 1, 3)
FROM
    employees;
    
#date function
select * from salaries;
SELECT 
    *,
    MONTH(from_date) AS month_num,
    MONTHNAME(from_date) AS month_name,
    QUARTER(from_date) AS quarter_num,
    WEEK(from_date) AS week_,
    YEAR(from_date) AS year_,
    DAY(from_date),
    DAYNAME(from_date),
    DAYOFWEEK(from_date)
FROM
    salaries;
    
#Date-Time Function
select makedate(2024,10);
select maketime(22,45,10);
SELECT 
    MINUTE('2021-10-09 00:45:20') AS minutes,
    HOUR('2021-10-09 10:45:20') AS hours,
    SECOND('2021-10-09 10:45:20') AS seconds;
SELECT DATE('2021-10-09 10:45:20');

select* from salaries;
select *, date_add(from_date,interval 5 DAY) from salaries;
select *, date_add(from_date,interval -5 DAY) from salaries;
select *, date_add(from_date,interval 5 MONTH) from salaries;
select *, date_add(from_date,interval -5 MONTH) from salaries;
select *, date_add(from_date,interval 5 YEAR) from salaries;
select *, date_add(from_date,interval -5 YEAR) from salaries;

select *,datediff(from_date,to_date) from salaries;