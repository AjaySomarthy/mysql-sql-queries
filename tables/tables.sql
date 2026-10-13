-- Tables list :
-- Company.Employees for DDL operations (create, alter, rename, truncate, drop)
-- Company.Managers for DML operations (insert, update, delete)
-- Company.Drivers for DQL operations (select, distinct, where, order by, limit, offset)
-- School.Students for aggregate functions (min, max, sum, avg, count)
-- School.Teachers for null values (is null, is not null)

-- ------------------------------------------------------------------------------------------------------------
-- 1) Drivers table : 

create table Company.Drivers (
id int, name varchar(255), shift varchar(255), salary int);

insert into Company.Drivers (id, name, shift, salary)
values
(101, "Anusha", "Day", 60500),
(201, "Bindhu", "Day", 55000),
(101, "Anusha", "Day", 60500),
(301, "Chitra", "Day", 50000),
(401, "Divya", "Night", 45000),
(501, "Eesha", "Night", 45000),
(601, "Fathima", "Night", 35000);

select * from Company.Drivers;
-- ============================================================================================================
-- 2) Students table : 

create database School;

create table School.Students (
id int, name varchar(255), branch varchar(255), marks int);

insert into school.students (id, name, branch, marks)
values
(101, "Anusha", "ECE", 99),
(102, "Bindhu", "ECE", 32),
(103, "Chitra", "ECE", 75),
(104, "Divya", "ECE", 25),
(201, "Eesha", "Mech", 17),
(202, "Fathima", "Mech", 84),
(203, "Ganga", "Mech", 35),
(204, "Harika", "Mech", 10);

select * from school.students;
-- ============================================================================================================
-- 3) Teachers table : 

create table School.Teachers (
name varchar(255), salary int);

insert into School.Teachers (name, salary)
values
("Anusha", 55000),
("Bindhu", null),
(null, 35000),
(null, null);

select * from School.Teachers;
-- ============================================================================================================