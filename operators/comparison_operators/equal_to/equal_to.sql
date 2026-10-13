-- = operator usage

-- Creation of Drivers table is avialable in tables

-- first check the table data
select * from company.drivers;

-- = operator on Strings
select * from company.drivers
where name = "Anusha";

-- = operator on Integers
select * from company.drivers
where salary = 45000;


-- returns 1
select 10=10;

-- returns 0
select 10=9;
