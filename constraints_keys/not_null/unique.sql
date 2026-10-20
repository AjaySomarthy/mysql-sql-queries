-- UNIQUE usage

create table persons.persons_data2 (
id int unique,
name varchar(255),
age int unique not null,
area varchar(255));

select * from persons.persons_data2;


-- This will get executed as there are no repeated values for id, age columns
insert into persons.persons_data2
values
(1, "Anusha", 21, "Ahmedabad"),
(2, "Bindhu", 22, "Bangalore");

-- this gets failed as id is repeating
insert into persons.persons_data2
values
(1, "Amala", 41, "Agra");

-- this gets failed as age is repeating
insert into persons.persons_data2
values
(3, "Bhavana", 21, "Barma");

-- This will get executed as there are no repeated values for id, age columns and name, area can be repeated
insert into persons.persons_data2
values
(3, "Anusha", 23, "Ahmedabad"),
(4, "Bindhu", 24, "Bangalore");

-- this gets failed as age is not null column
insert into persons.persons_data2
values
(5, "Anusha", null, "Ahmedabad");

-- This will get executed as there are no repeated values for id, age columns and name, area can be repeated and id can be null
insert into persons.persons_data2
values
(null, "Anusha", 25, "Ahmedabad");

-- This will get executed as there are no repeated values for id, age columns and name, area can be repeated and id can be null
-- Unique allows multiple nulls
insert into persons.persons_data2
values
(null, "Anusha", 26, "Ahmedabad");

-- modifying the table, making name unique
-- but here past values are not unique, so this will throw an error
alter table persons.persons_data2
modify name varchar(255) unique;

-- deleting all the rows and again inserting the data
delete from persons.persons_data2;

insert into persons.persons_data2
values
(1, "Anusha", 21, "Ahmedabad"),
(2, "Bindhu", 22, "Bangalore");

-- now, modifying the table, making name unique
alter table persons.persons_data2
modify name varchar(255) unique;

-- this will throw an error, as age is unique now
insert into persons.persons_data2
values
(3, "Anusha", 23, "Ahmedabad")
