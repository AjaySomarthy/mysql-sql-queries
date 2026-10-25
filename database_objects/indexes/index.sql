-- INDEX usage

create table persons.persons_data6 (
id int,
name varchar(255),
age int,
area varchar(255));

select * from persons.persons_data6;

insert into persons.persons_data6 (id, name, age, area)
values
(1, "Anusha", 21, "Ahmedabad"),
(2, "Bindhu", 22, "Bangalore"),
(3, "Chitra", 23, "Chennai"),
(1, "Anusha", 21, "Ahmedabad");

create index indx_data_6
on persons.persons_data6 (id,name,age);

-- inspecting index properties
show index from persons.persons_data6;

SELECT TABLE_NAME, INDEX_NAME, COLUMN_NAME, SEQ_IN_INDEX 
FROM INFORMATION_SCHEMA.STATISTICS 
WHERE TABLE_SCHEMA = 'persons';

alter table persons.persons_data6
drop index indx_data_6;