-- PRIMARY KEY usage

create table persons.persons_data3 (
id int primary key,
name varchar(255),
age int not null,
area varchar(255));

select * from persons.persons_data3;

insert into persons.persons_data3 (id, name, age, area)
values
(1, "Anusha", 21, "Ahmedabad"),
(2, "Bindhu", 22, "Bangalore");

-- this gets executed as name, age, area can be repeated
insert into persons.persons_data3 (id, name, age, area)
values
(3, "Anusha", 21, "Chennai");

-- this throws an error as id is primary so can not be repeated
insert into persons.persons_data3 (id, name, age, area)
values
(3, null, 21, "Ahmedabad");

-- this throws an error as id is primary so can not be null
insert into persons.persons_data3 (id, name, age, area)
values
(null, null, 21, "Delhi");

-- this gets executed as name can be null
insert into persons.persons_data3 (id, name, age, area)
values
(4, null, 21, "Delhi");

-- this throws an error as multiple primary key columns are not allowed
alter table persons.persons_data3
modify name varchar(255) primary key;

-- So first drop primary key constraint
alter table persons.persons_data3
drop primary key;

-- this throws an error as name is having null values so can not be primary key
alter table persons.persons_data3
modify name varchar(255) primary key;

-- this also throws an error as age is getting repeated so can not be primary key
alter table persons.persons_data3
modify age int primary key;

-- this gets executed as area column did not have nulls and repeated values
alter table persons.persons_data3
modify area varchar(255) primary key;
