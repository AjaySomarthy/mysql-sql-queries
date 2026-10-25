-- COUNT() usage

-- Creation of Students table is avialable in tables

-- first check the table data
select * from School.Students;

-- Finding the total number of students from the entire table
select count(*) TotalStudents from School.Students;

-- Finding the total number of passed students from the entire table
select count(*) PassedStudents from School.Students
where marks >= 35;

-- Finding the total number of failed students from the entire table
select count(*) FailedStudents from School.Students
where marks < 35;

-- Finding the total number of students from each branch
select branch, count(*) TotalStudents
from School.Students
group by branch;

-- Finding the total number of passed students from each branch
select branch, count(*) TotalStudents
from School.Students
where marks >= 35
group by branch;

-- Finding the total number of failed students from each branch
select branch, count(*) TotalStudents
from School.Students
where marks < 35
group by branch;
