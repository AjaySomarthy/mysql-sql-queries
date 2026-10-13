-- LIKE operator usage

-- Creation of Drivers table is avialable in tables

-- first check the table data
select * from company.drivers;

-- LIKE operator on Strings
select * from company.drivers
where name like "%";

select * from company.drivers
where name like "%a";

select * from company.drivers
where name like "%A";

select * from company.drivers
where name like "a%";

select * from company.drivers
where name like "%a%";

select * from company.drivers
where name like "_i%";
