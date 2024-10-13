#duplicate departments table
set sql_safe_updates=0;
create table departments2 as select * from departments;
select * from departments2 order by dept_no;
delete from departments2 where dept_no= "d001";

alter table departments2
modify dept_no char(4);

update departments2
set dept_no=null
where dept_no="d002";

#duplicate dept_manager table
create table dept_manager2 as select * from dept_manager;
select * from dept_manager2;

alter table dept_manager2
modify dept_no char(4);

update dept_manager2
set dept_no=null
where dept_no="d002";


select * from departments2;
select * from dept_manager2;
#inner join
select departments2.dept_name, departments2.dept_no, dept_manager2.emp_no
from departments2
inner join dept_manager2 on dept_manager2.dept_no=departments2.dept_no;

select departments2.dept_name, departments2.dept_no, dept_manager2.emp_no
from departments2
join dept_manager2 on dept_manager2.dept_no=departments2.dept_no;

select A.dept_name, A.dept_no, B.emp_no
from departments2 A
inner join dept_manager2 B on B.dept_no = A.dept_no
where A.dept_no="d006"
order by B.emp_no;


#join on multiple columns

CREATE TABLE Marketting(
	Month char(4),
    Year int,
    MarkettingSpend INT
);

CREATE TABLE Revenue(
	Month char(4),
    Year int,
    Revenue INT
);

INSERT INTO Marketting
values ("Jan", 2020, 20000),
("Jan", 2021, 10000),
("Feb",2020,30000),
("Feb", 2021, 40000);

INSERT INTO Revenue
values ("Jan", 2020, 30000),
("Jan", 2021, 15000),
("Feb",2020,20000),
("Feb", 2021, 50000);

select * from marketting;
select * from revenue;

select M.Month, M.Year, M.MarkettingSpend, R.Revenue
from marketting M
JOIN revenue R on M.Month = R.Month and M.Year = R.Year;


#LEFT JOIN

select * from departments2 order by dept_no;
select * from dept_manager2 order by dept_no;
select A.dept_no, A.dept_name, B.emp_no
from departments2 A left OUTER join dept_manager2 B   #it can left join or left outer join
on A.dept_no = B.dept_no
order by A.dept_no;

#reversing the table
select A.dept_no, A.emp_no, B.dept_name
from dept_manager2 A left OUTER join departments2 B   #it can left join or left outer join
on A.dept_no = B.dept_no
order by A.dept_no;

#displaying dept_no =d004
select A.dept_no, A.emp_no, B.dept_name
from dept_manager2 A left OUTER join departments2 B   #it can left join or left outer join
on A.dept_no = B.dept_no
where A.dept_no="d004"
order by A.dept_no;


#RIGHT JOIN
select * from departments2 order by dept_no;
select * from dept_manager2 order by dept_no;
select B.dept_no, B.dept_name, A.emp_no
from dept_manager2 A right join departments2 B
on A.dept_no = B.dept_no
order by B.dept_no;

/* Find emp id,name, salary of employees earning more than $150k*/
select a.emp_no,a.first_name,a.last_name,a.gender,b.salary
from employees a join salaries b
on a.emp_no=b.emp_no
where b.salary > 150000 and a.gender="M"
order by b.salary desc;

#join by group by
select a.emp_no, a.first_name, a.last_name, max(b.salary)
FROM employees a
join salaries b
on a.emp_no = b.emp_no
group by a.emp_no
having max(salary) > 150000
order by max(b.salary) desc;

select a.gender, avg(b.salary), max(salary)
from employees a
join salaries b
on a.emp_no = b.emp_no
group by a.gender;

#CROSS JOIN (its also nown as cartesian product)
/* It will combine all the rows from the left table to all the rows from right table*/
select a.* , b.*
from dept_manager a cross join departments b
order by a.emp_no, b.dept_no;

select a.* , b.*
from dept_manager a, departments b  #another way
order by a.emp_no, b.dept_no;

CREATE TABLE year(
year int);

CREATE TABLE month(
month varchar(40));

insert into year
values (2024),(2025);

insert into month
values ("JAN"),("FEB"),("MAR"),("APR"),("MAY");

select a.*,b.*
from year a cross join month b
order by a.year;

#CROSS JOIN + WHERE CLAUSE and INNER JOIN + ON is same
# cross join and inner join

select a.*, b.*
from dept_manager a cross join departments b  #cross join
where a.dept_no=b.dept_no
order by a.emp_no,b.dept_no;

select a.*, b.*
from dept_manager a join departments b  #inner join
on a.dept_no=b.dept_no
order by a.emp_no,b.dept_no;
