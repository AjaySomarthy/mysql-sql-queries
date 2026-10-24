-- DEFAULT usage

create table persons.persons_data5 (
id int,
name varchar(255),
age int default 18,
area varchar(255));

select * from persons.persons_data5;

-- this gets executed as age >= 18 and remaining can be anything like null or not unique
insert into persons.persons_data5 (id, name, age, area)
values
(1, "Anusha", 21, "Ahmedabad"),
(2, "Bindhu", 22, "Bangalore");

-- this gets executed as age is default with 18
insert into persons.persons_data5 (id, name, area)
values
(1, "Anusha", "Ahmedabad");

-- modifying the area column with default value "Chennai"
alter table persons.persons_data5
modify area varchar(255) default "Chennai";

insert into persons.persons_data5 (name, age)
values
("Anusha", 21);

alter table persons.persons_data5
alter area drop default;
