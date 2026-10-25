-- BETWEEN operator usage

-- Creation of Drivers table is avialable in tables

-- first check the table data
select * from company.drivers;

-- BETWEEN operator on Integers
select * from company.drivers
where id between 201 and 401;

-- BETWEEN operator on Strings
select * from company.drivers
where name between "Bindhu" and "Divya";
