-- MAX() usage

-- Creation of Students table is avialable in tables

-- first check the table data
select * from School.Students;

-- Finding maximum marks of students from entire table
select max(marks) MaxMarks from school.students;

-- finding maximum marks of students who are failed from the entire table
select max(marks) MaxMarks from school.students
where marks < 35;

-- finding maximum marks of students from each branch
select branch, max(marks) MaxMarks
from school.students
group by branch;

-- finding the maximum marks of students who are failed from each branch
select branch, max(marks) MaxMarks
from school.students
where marks < 35
group by branch;
