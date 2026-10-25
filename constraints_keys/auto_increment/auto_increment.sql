-- AUTO INCREMENT usage

create table persons.persons_data7 (
id int auto_increment primary key,
name varchar(255),
age int,
area varchar(255));

select * from persons.persons_data7;

insert into persons.persons_data7 (id, name, age, area)
values
(1, "Anusha", 21, "Ahmedabad"),
(2, "Bindhu", 22, "Bangalore");

-- it will assign id values 3 and 4
insert into persons.persons_data7 (name, age, area)
values
("Anusha", 21, "Ahmedabad"),
("Bindhu", 22, "Bangalore");

alter table persons.persons_data7
auto_increment = 10;

insert into persons.persons_data7 (name, age, area)
values
("Chitra", 23, "Chennai"),
("Divya", 24, "Delhi");

insert into persons.persons_data7 (name, age, area)
values
("Chitra", 23, "Chennai"),
("Divya", 24, "Delhi");
