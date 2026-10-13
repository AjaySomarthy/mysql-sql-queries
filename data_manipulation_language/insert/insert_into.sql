-- INSERT INTO usage

-- first creting a table
create table company.managers (
id int, name varchar(255), department varchar(255));


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
