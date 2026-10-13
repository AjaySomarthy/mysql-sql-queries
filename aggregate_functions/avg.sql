-- AVG() usage

-- Creation of Students table is avialable in tables

-- first check the table data
select * from School.Students;

-- finding the avg of all students marks from the entire table
select avg(marks) SumMarks from school.students;

-- finding the avg of the students marks who are passed from the entire table
select avg(marks) SumMarks from school.students
where marks >= 35;

-- finding the avg of the students marks who are failed from the entire table
select avg(marks) SumMarks from school.students
where marks < 35;

-- finding the avg of students marks from each branch
select branch, avg(marks) SumMarks
from school.students
group by branch;

-- finding the avg of students marks who are passed from each branch
select branch, avg(marks) SumMarks
from school.students
where marks >= 35
group by branch;

-- finding the avg of students marks who are failed from each branch
select branch, avg(marks) SumMarks
from school.students
where marks < 35
group by branch;
