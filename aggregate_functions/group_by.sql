-- GROUP BY usage

-- Creation of Students table is avialable in tables

-- first check the table data
select * from School.Students;

-- finding minimum marks of students from each branch using group by
select branch, min(marks) MinMarks
from school.students
group by branch;

-- finding maximum marks of students from each branch using group by
select branch, max(marks) MaxMarks
from school.students
group by branch;

-- finding total number of students from each branch using group by
select branch, count(marks) TotalStudents
from school.students
group by branch;

-- finding total marks of all the students from each branch using group by
select branch, sum(marks) TotalMarks
from school.students
group by branch;

-- finding average marks of students from each branch using group by
select branch, avg(marks) AvgMarks
from school.students
group by branch;


-- now group by with where condition
-- finding the minimum marks of students who are passed from each branch
select branch, min(marks) MinMarks
from school.students
where marks >= 35
group by branch;

-- finding the maximum marks of students who are failed from each branch
select branch, max(marks) MaxMarks
from school.students
where marks < 35
group by branch;

-- finding the total number of students who are passed from each branch
select branch, count(marks) TotalStudents
from school.students
where marks >= 35
group by branch;

-- finding the total number of students who are failed from each branch
select branch, count(marks) TotalStudents
from school.students
where marks >= 35
group by branch;

-- finding the total marks of students who are passed from each branch
select branch, sum(marks) TotalMarks
from school.students
where marks >= 35
group by branch;

-- finding the total marks of students who are failed from each branch
select branch, sum(marks) TotalMarks
from school.students
where marks < 35
group by branch;

-- finding the average marks of students who are passed from each branch
select branch, avg(marks) AvgMarks
from school.students
where marks >= 35
group by branch;

-- finding the average marks of students who are passed from each branch
select branch, avg(marks) AvgMarks
from school.students
where marks < 35
group by branch;
