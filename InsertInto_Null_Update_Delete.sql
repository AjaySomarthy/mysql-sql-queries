create table company.managers (
id int, name varchar(255), department varchar(255));

-- INSERT INTO usage
-- inserting into all the columns
insert into company.managers (id, name, department)
values
(101, "Anusha", "Sales"),
(201, "Bindhu", "Marketing"),
(301, "Chitra", "Finance"),
(401, "Divya", "IT");

select * from company.managers;

-- inserting into all the columns without mentioning column names
insert into company.managers
values
(501, "Eesha",  "Banking"),
(601, "Fathima", "Non-IT");

-- insert into to required columns
insert into company.managers (id,name)
values
(701, "Geetha"),
(801, "Haima");
-- ============================================================================================================
-- NULL usage
-- is null
select * from company.managers
where department is null;

-- is not null
select * from company.managers
where department is not null;
-- ============================================================================================================
-- UPDATE usage
-- updating a single value of one column
update company.managers
set name = "Anusha Patel"
where id = 101;

select * from company.managers;

alter table company.managers
add Area varchar(255);

-- updating all the values of one column
update company.managers
set Area = "Hyderabad";

alter table company.managers
add Salary int;

-- updating all the values of multiple columns
update company.managers
set Area = "Bangalore", Salary = 50000;
-- ============================================================================================================
-- DELETE usage
-- deleting a single row from the table
delete from company.managers
where id = 401;

select * from company.managers;

-- deleting multiple rows from the table
delete from company.managers
where id >= 600;

-- deleting all the rows from the table
delete from company.managers;
-- ============================================================================================================
-- to delete the entire table we use drop command
drop table company.managers;