-- CHECK usage

create table persons.persons_data4 (
id int,
name varchar(255),
age int check (age >= 18),
area varchar(255));

select * from persons.persons_data4;

-- this gets executed as age >= 18 and remaining can be anything like null or not unique
insert into persons.persons_data4 (id, name, age, area)
values
(5, null, 21, "Ahmedabad"),
(6, "Bindhu", 22, "Ahmedabad");

-- this throws an error as age = 16
insert into persons.persons_data4 (id, name, age, area)
values
(7, "Chitra", 16, "Bangalore");

-- this gets executed as age can be null
insert into persons.persons_data4 (id, name, age, area)
values
(7, "Chitra", null, "Bangalore");

-- this gets executed
alter table persons.persons_data4
modify id int check (id >= 5);

