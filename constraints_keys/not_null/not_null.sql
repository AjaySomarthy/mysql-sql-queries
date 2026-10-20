-- NOT NULL constraint

create database persons;

-- not null usage
create table persons.persons_data (
id int not null,
name varchar(255) not null,
age int,
area varchar(255));

select * from persons.persons_data;

-- this will get executed as there are no nulls
insert into persons.persons_data (id, name, age, area)
values
(1, "Anusha", 20, "Ahmedabad"),
(2, "Bindhu", 21, "Bangalore");

-- this will throw an error as id, name are not null columns
insert into persons.persons_data (id, name, age, area)
values
(null, "Chitra", 22, "Chennai"),
(4, null, 23, "Delhi");

-- this will get executed as age, area can be nulls
insert into persons.persons_data (id, name, age, area)
values
(5, "Eesha", 24, null);

-- modifying the table, making age not null
alter table persons.persons_data
modify age int not null;

-- this will throw an error as id is not null column now
insert into persons.persons_data (id, name, age, area)
values
(6, "Fathima", null, "Finland");

-- modifying the table, making id is null
alter table persons.persons_data
modify id int null;

insert into persons.persons_data (id, name, age, area)
values
(null, "Ganga", 26, "Germany");
