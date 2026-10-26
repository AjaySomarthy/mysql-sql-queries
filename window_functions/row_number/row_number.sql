-- ROW NUMBER usage

create table school.students_1 (
id int, name1 varchar(255), branch varchar(255), marks int);

select * from school.students_1;

insert into school.students_1
values
(101, "Anusha", "ECE", 99),
(102, "Bindhu", "ECE", 85),
(103, "Chitra", "ECE", 85),
(104, "Divya", "ECE", 76),
(201, "Eesha", "Mech", 92),
(202, "Fathima", "Mech", 92),
(203, "Ganga", "Mech", 92),
(204, "Harika", "Mech", 74),
(205, "Indhu", "Mech", 36);

-- row_number() for entire table
select *,
row_number() over(order by marks desc) as RowNumber
from school.students_1;

-- row_number() department wise
select *,
row_number() over(partition by branch order by marks desc) as RowNumber
from school.students_1;
-- ---------------------------------------------------------------------------------------------------------------

create table school.students_2 (
id int, name1 varchar(255), branch varchar(255), marks int);

select * from school.students_2;

insert into school.students_2
values
(101, "Anusha", "ECE", 99),
(102, "Bindhu", "ECE", 85),
(103, "Chitra", "ECE", 85),
(104, "Divya", "ECE", 76),
(101, "Anusha", "ECE", 99),
(201, "Eesha", "Mech", 92),
(202, "Fathima", "Mech", 92),
(203, "Ganga", "Mech", 92),
(204, "Harika", "Mech", 74),
(205, "Indhu", "Mech", 36),
(202, "Fathima", "Mech", 92);

-- row_number() for entire table
select *,
row_number() over(order by marks desc) as RowNumber
from school.students_2;

-- row_number() department wise
select *,
row_number() over(partition by branch order by marks desc) as RowNumber
from school.students_2;