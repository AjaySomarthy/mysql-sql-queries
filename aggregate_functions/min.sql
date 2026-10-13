-- MIN() usage

-- Creation of Students table is avialable in tables

-- first check the table data
select * from School.Students;

-- Finding minimum marks of students from entire table
select min(marks) as MinMarks from school.students;

-- finding minimum marks of students who are passed from the entire table
select min(marks) MinMarks from school.students
where marks >= 35;

-- finding minimum marks of students from each branch
select branch, min(marks) MinMarks
from school.students
group by branch;

-- finding the minimum marks of students who are passed from each branch
select branch, min(marks) MinMarks
from school.students
where marks >= 35
group by branch;
