-- SUM() usage

-- Creation of Students table is avialable in tables

-- first check the table data
select * from School.Students;

-- finding the sum of all students marks from the entire table
select sum(marks) SumMarks from school.students;

-- finding the sum of the students marks who are passed from the entire table
select sum(marks) SumMarks from school.students
where marks >= 35;

-- finding the sum of the students marks who are failed from the entire table
select sum(marks) SumMarks from school.students
where marks < 35;

-- finding the sum of students marks from each branch
select branch, sum(marks) SumMarks
from school.students
group by branch;

-- finding the sum of students marks who are passed from each branch
select branch, sum(marks) SumMarks
from school.students
where marks >= 35
group by branch;

-- finding the sum of students marks who are failed from each branch
select branch, sum(marks) SumMarks
from school.students
where marks < 35
group by branch;
