-- TIME usage

create table persons.persons_data11 (
id int,
name varchar(255),
dob time);

select * from persons.persons_data11;

insert into persons.persons_data11
values
(1, "Anusha", "01:31:40"),
(2, "Bindhu", "02:32:40"),
(3, "Chitra", "03:33:40");

-- this gets executed
select * from persons.persons_data11
where dob = "02:32:40";

insert into persons.persons_data11
values
(4, "Divya", "04:34:40"),
(5, "Eesha", "05:35:40"),
(6, "Fathima", "06:36:40");

select * from persons.persons_data11
where dob between "01:00:00" and "05:00:00";

select * from persons.persons_data11
where dob between "01:00:00" and "04:35:00";

select * from persons.persons_data11
where dob between "01:00:00" and "04:34:40";

select * from persons.persons_data11
where dob between "01:00:00" and "04:34:39";

