create table School.A_Section (
id int,
name varchar(255),
marks int);

insert into School.A_Section (id, name, marks)
values
(101, 'Anusha', 90),
(201, 'Bindhu', 90),
(301, 'Chitra', 80),
(401, 'Divya', 70);

-- distinct on one column
select distinct marks
from School.A_Section;

-- distinct on multiple columns
select distinct name, marks
from School.A_Section;
