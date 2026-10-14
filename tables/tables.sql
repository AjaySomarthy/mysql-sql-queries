-- Tables list :
-- Company.Employees for DDL operations (create, alter, rename, truncate, drop)
-- Company.Managers for DML operations (insert, update, delete)
-- Company.Drivers for DQL operations (select, distinct, where, order by, limit, offset)
-- School.Students for aggregate functions (min, max, sum, avg, count)
-- School.Teachers for null values (is null, is not null)
-- School.students_data for joins (inner, left, right, cross, and self joins)
-- School.department_data for joins (inner, left, right, cross, and self joins)
-- Company.developers_data for combining data operations (union, union all)
-- Company.testers_data for combining data operations (union, union all)
-- products.books_data for logical operators (any, all, exists)
-- products.clothes_data for logical operators (any, all, exists)
-- products.pens_data for logical operators (any, all, exists)
-- School.workers_data for null functions (coalesce, ifnull)
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
-- 4) students_data table :

create table school.students_data (
student_id int, student_name varchar(255), student_marks int);

insert into school.students_data
values
(101, "Anusha", 90),
(201, "Bindhu", 80),
(301, "Chitra", 50);

select * from school.students_data;
-- ============================================================================================================
-- 5) department_data table :

create table school.department_data (
dept_id int, dept_name varchar(255));

insert into school.department_data 
values
(101, "Sales"),
(201, "Banking"),
(101, "Marketing"),
(401, "Finance");

select * from school.department_data;
-- ============================================================================================================
-- 6) developers_data table :

create table company.developers_data (
dev_id int, dev_name varchar(255), dev_salary int);

insert into company.developers_data 
values
(101, "Anusha", 55000),
(201, "Bindhu", 45000),
(201, "Bindhu", 45000),
(301, "Chitra", 30000);

select * from company.developers_data;
-- ============================================================================================================
-- 7) testers_data table :

create table company.testers_data (
test_id int, test_name varchar(255), test_salary int);

insert into company.testers_data 
values
(301, "Chitra", 30000),
(401, "Divya", 25000),
(501, "Eesha", 25000);

select * from company.testers_data;
-- ============================================================================================================
-- 8) books_data table :

create database products;

create table products.books_data (
book_id int, book_name varchar(255), book_cost int, book_area varchar(255));

insert into products.books_data 
values
(1, "C", 100, "Hyderabad"),
(2, "Java", 200, "Bangalore"),
(3, "Python", 300, "Mumbai"),
(4, "R", 400, "Chennai"),
(5, "Scala", 500, "Delhi");

select * from products.books_data;
-- ============================================================================================================
-- 9) clothes_data table :

create table products.clothes_data (
clothes_id int, clothes_name varchar(255), clothes_area varchar(255));

insert into products.clothes_data 
values
(6, "Shirt", "Mumbai"),
(7, "Pant", "Kolkata"),
(8, "Baniyan", "Hyderabad"),
(9, "Hoodie", "Pune");

select * from products.clothes_data;
-- ============================================================================================================
-- 10) pens_data table :

create table products.pens_data (
pen_id int, pen_name varchar(255), pen_area varchar(255));

insert into products.pens_data 
values
(6, "White Pen", "Delhi"),
(7, "Black Pen", "Chennai"),
(8, "Blue Pen", "Mumbai"),
(9, "Red Pen", "Bangalore"),
(10, "Green Pen", "Hyderabad");

select * from products.pens_data;
-- ============================================================================================================
-- 11) workers_data table : 

create table school.workers_data (
worker_id int, worker_name varchar(255),
worker_salary int, worker_expenses int);

insert into school.workers_data
values
(1, "Anusha", 55000, 15000),
(2, "Bindhu", 40000, null),
(3, "Chitra", 30000, 10000);

select * from school.workers_data;
-- ============================================================================================================