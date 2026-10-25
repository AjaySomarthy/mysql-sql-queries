-- YEAR usage

create table persons.persons_data12 (
id int,
name varchar(255),
dob year);

select * from persons.persons_data12;

insert into persons.persons_data12
values
(1, "Anusha", "2001"),
(2, "Bindhu", "2002"),
(3, "Chitra", "2003");

-- this gets executed
select * from persons.persons_data12
where dob = "2002";

insert into persons.persons_data12
values
(4, "Divya", "2004"),
(5, "Eesha", "2005"),
(6, "Fathima", "2006");

select * from persons.persons_data12
where dob between "2000" and "2003";
-- =======================================================================================================================
create table persons.persons_data13 (
id int,
name varchar(255),
dob year);

select * from persons.persons_data13;

insert into persons.persons_data13
values
(1, "Anusha", "91"),
(2, "Bindhu", "92"),
(3, "Chitra", "93");

select * from persons.persons_data13
where dob = "92";

select * from persons.persons_data13
where dob = "1993";

insert into persons.persons_data13
values
(4, "Divya", "94"),
(5, "Eesha", "95"),
(6, "Fathima", "96");

select * from persons.persons_data13
where dob between "91" and "94";
