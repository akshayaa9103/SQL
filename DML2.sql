SELECT 
    *
FROM
    employees
ORDER BY emp_no desc;
insert into employees
values(999997,"2004-03-03","Krithik","Naveen","M","2024-09-09"),
(999996,"2004-07-31","Aadhav","S","M","2024-09-09");


CREATE TABLE sales (
    year INT NOT NULL,
    country VARCHAR(10) NOT NULL,
    sales DECIMAL(10 , 2 ) NOT NULL
);
insert into sales
values (2020,"India","23"),
(2021,"India","19"),
(2020,"China","12"),
(2021,"China","15");
select * from sales;

CREATE TABLE sales1 (
    year INT NOT NULL,
    country VARCHAR(10) NOT NULL,
    sales DECIMAL(10 , 2 ) NOT NULL
);
insert into sales1
values (2020,"India","23"),
(2021,"India","19"),
(2020,"Bangladesh","7"),
(2021,"Bangladesh","11");
select * from sales1;

insert into sales
select * from sales1 where country="Bangladesh";
select * from sales;


select* from employees;
update employees
SET hire_date="1989-01-10",gender="F" 
where emp_no=10001 or emp_no=10002;

select* from employees;
SET autocommit=0;
update employees
SET gender="F" 
where emp_no=10003 or emp_no=10004;
rollback;


CREATE TABLE demo (
    name VARCHAR(10),
    age INT NOT NULL
);
insert into demo
values ("Akshayaa",21),
("Krithik",20),
("Rithika",22),
("varsha",21);
select * from demo;
Truncate table demo;
drop table demo;

