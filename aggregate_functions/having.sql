-- HAVING usage

-- Creation of Students table is avialable in tables

-- first check the table data
select * from School.Students;

-- finding minimum marks of students from each branch using group by and filtering the result using having
select branch, min(marks) MinMarks
from school.students
group by branch
having MinMarks > 20;

-- finding maximum marks of students from each branch using group by and filtering the result using having
select branch, max(marks) MaxMarks
from school.students
group by branch
having MaxMarks > 90;

-- finding total number of students from each branch using group by and filtering the result using having
select branch, count(marks) TotalStudents
from school.students
group by branch
having TotalStudents >= 4;

-- finding total marks of all the students from each branch using group by and filtering the result using having
select branch, sum(marks) TotalMarks
from school.students
group by branch
having TotalMarks > 200;

-- finding average marks of students from each branch using group by and filtering the result using having
select branch, avg(marks) AvgMarks
from school.students
group by branch
having AvgMarks > 50;


-- now group by with where condition
-- finding the minimum marks of students who are passed from each branch and filtering the result using having
select branch, min(marks) MinMarks
from school.students
where marks >= 35
group by branch
having MinMarks > 50;

-- finding the maximum marks of students who are failed from each branch and filtering the result using having
select branch, max(marks) MaxMarks
from school.students
where marks < 35
group by branch
having MaxMarks > 25;

-- finding the total number of students who are passed from each branch and filtering the result using having
select branch, count(marks) TotalStudents
from school.students
where marks >= 35
group by branch
having TotalStudents >= 2;

-- finding the total number of students who are failed from each branch and filtering the result using having
select branch, count(marks) TotalStudents
from school.students
where marks < 35
group by branch
having TotalStudents >= 2;

-- finding the total marks of students who are passed from each branch and filtering the result using having
select branch, sum(marks) TotalMarks
from school.students
where marks >= 35
group by branch
having TotalMarks > 150;

-- finding the total marks of students who are failed from each branch and filtering the result using having
select branch, sum(marks) TotalMarks
from school.students
where marks < 35
group by branch
having TotalMarks > 50;

-- finding the average marks of students who are passed from each branch and filtering the result using having
select branch, avg(marks) AvgMarks
from school.students
where marks >= 35
group by branch
having AvgMarks > 80;

-- finding the average marks of students who are passed from each branch and filtering the result using having
select branch, avg(marks) AvgMarks
from school.students
where marks < 35
group by branch
having AvgMarks > 20;
