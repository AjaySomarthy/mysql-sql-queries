-- TIMESTAMP usage

create table persons.persons_data10 (
id int,
name varchar(255),
dob timestamp);

select * from persons.persons_data10;

insert into persons.persons_data10
values
(1, "Anusha", "2001-01-21 01:31:40"),
(2, "Bindhu", "2002-02-22 02:32:40"),
(3, "Chitra", "2003-03-23 03:33:40");

-- this shows nothing as dob should have time portion
select * from persons.persons_data10
where dob = "2002-02-22";

-- this gets executed
select * from persons.persons_data10
where dob = "2002-02-22 02:32:40";

insert into persons.persons_data10
values
(4, "Divya", "2004-04-24 04:34:40"),
(5, "Eesha", "2005-05-25 05:35:40"),
(6, "Fathima", "2006-06-26 06:36:40");

select * from persons.persons_data10
where dob between "2000-01-01 01:00:00" and "2003-12-31 01:00:00";

select * from persons.persons_data10
where dob between "2000-01-01 01:00:00" and "2003-03-23 01:00:00";

