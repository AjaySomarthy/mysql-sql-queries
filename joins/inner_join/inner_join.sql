-- INNER JOIN

-- Creation of students_data, department_data tables are avialable in tables

-- first check the table data
select * from school.students_data;

select * from school.department_data;

-- inner join
select * from school.students_data s 
inner join school.department_data d
on s.student_id=d.dept_id;

select s.student_id, s.student_name, d.dept_name
from school.students_data s 
inner join school.department_data d 
on s.student_id=d.dept_id;

select * from school.department_data d 
inner join school.students_data s 
on d.dept_id=s.student_id;
