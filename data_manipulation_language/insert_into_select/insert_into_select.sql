-- INSERT INTO SELECT usage

-- first creting a table
create table company.managers2 (
id2 int, name2 varchar(255), department2 varchar(255));

-- first check the table data
select * from company.managers;
select * from company.managers2;

-- inserting all the data from managers to managers2
insert into company.managers2 
select * from company.managers;

-- inserting only id, name from managers to id2, name2 in managers2
insert into company.managers2 (id2, name2)
select id, name from company.managers;
