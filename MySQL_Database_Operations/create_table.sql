-- Creating a table
create table School.Students (
id int,
name varchar(255),
marks int);

-- Creating a table from another table
create table School.PassedStudents as
select * from School.Students
where Students.marks >= 35;

-- Creating a table from another table with required columns
create table School.FailedStudents as
select name, marks from School.Students
where Marks < 35;
