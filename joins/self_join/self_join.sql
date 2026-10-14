-- SELF JOIN

-- Creation of students_data, department_data tables are avialable in tables

-- first check the table data
select * from school.students_data;

select * from school.department_data;

-- self join
select *
from school.students_data s1, school.students_data s2
where s1.student_name = s2.student_name;

select *
from school.students_data s1, school.students_data s2
where s1.student_name <> s2.student_name;
