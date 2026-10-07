select now();
select now() + 0;
select now(3);

create database School;

create table School.Students (
id int,
name varchar(255),
marks int);

insert into School.Students (id, name, marks)
values
(101, 'Anusha', 90),
(201, 'Bindhu', 85),
(301, 'Chitra', 70);

select * from School.Students;

select * from School.Students
where marks >= 80;