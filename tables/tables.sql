-- Tables list :
-- Company.Employees for DDL operations (might be deleted due to drop command usage)
-- Company.Managers for DML operations (data may not present due to dlete command usage)
-- School.Students for aggregate functions (min, max, sum, avg, count)
-- School.Teachers for null values

-- ============================================================================================================
-- 1) Students table : 

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
-- 2) Teachers table : 

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