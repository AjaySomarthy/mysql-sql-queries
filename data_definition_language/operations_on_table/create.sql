-- CREATE TABLE usage

-- creating a table
create table Company.Employees (
id int,
name varchar(255),
salary int);

-- it will show only column names because table has no data yet
select * from Company.Employees;

-- adding rows into the table
insert into Company.Employees (id, name, salary)
values
(101, "Anusha", 90500),
(201, "Bindhu", 85600),
(301, "Chitra", 45000),
(401, "Divya", 20500);

-- now it show the data of table
select * from Company.Employees;

-- creating another table from existing table
create table Company.HighPayEmployees as
select * from Company.Employees
where salary >= 50000;

select * from Company.HighPayEmployees;

-- creating another table from existing table with required columns
create table Company.LowPayEmployees as
select name, salary
from Company.Employees
where salary < 50000;

select * from Company.LowPayEmployees;
