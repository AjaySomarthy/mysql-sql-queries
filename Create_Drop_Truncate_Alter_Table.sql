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
-- ============================================================================================================
-- DROP TABLE usage
-- dropping a table, it will delete the entire table from database
drop table Company.LowPayEmployees;

-- this will throw an error as LowPayEmployees1 is not available
drop table Company.LowPayEmployees1;

-- to avoid these errors use if exists
drop table if exists Company.LowPayEmployees1;

-- now use if exists
drop table if exists Company.LowPayEmployees;
-- ============================================================================================================
-- TRUNCATE TABLE usage
-- truncating a table, it will delete all the rows only
truncate table Company.LowPayEmployees;

select * from Company.Employees;
-- ============================================================================================================
-- ALTER TABLE usage
-- altering a table, adding a column
alter table Company.Employees
add department varchar(255);

-- altering a table, deleting a column
alter table Company.Employees
drop column salary;

-- altering a table, renaming a column
alter table Company.Employees
rename column name to fullname;

-- altering a table, modifying column datatype
alter table Company.Employees
modify id varchar(255);

-- altering a table, modifying column datatype with adding a constraint
alter table Company.Employees
modify fullname varchar(200) not null;

-- altering a table, adding a constraint
alter table Company.Employees
add constraint chk_id check (id >= 100);

-- altering a table, renaming the table name
alter table Company.Employees
rename to Company.NewEmployees;
