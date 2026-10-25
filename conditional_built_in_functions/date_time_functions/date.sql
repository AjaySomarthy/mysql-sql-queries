-- DATE usage

create table persons.persons_data8 (
id int,
name varchar(255),
dob date);

select * from persons.persons_data8;

insert into persons.persons_data8
values
(1, "Anusha", "2001-01-21"),
(2, "Bindhu", "2002-02-22"),
(3, "Chitra", "2003-03-23");

select * from persons.persons_data8
where dob = "2002-02-22";

insert into persons.persons_data8
values
(4, "Divya", "2004-04-24"),
(5, "Eesha", "2005-05-25"),
(6, "Fathima", "2006-06-26");

select * from persons.persons_data8
where dob between "2000-01-01" and "2003-12-31";