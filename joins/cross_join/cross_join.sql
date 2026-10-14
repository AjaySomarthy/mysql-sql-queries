-- CROSS JOIN

-- Creation of students_data, department_data tables are avialable in tables

-- first check the table data
select * from school.students_data;

select * from school.department_data;

-- cross join
select *
from school.students_data
cross join school.department_data;

-- if we add where class then this cross join become inner join
select *
from school.students_data s 
cross join school.department_data d 
where s.student_id=d.dept_id;
