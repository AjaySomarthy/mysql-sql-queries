-- OR usage

-- Creation of Drivers table is avialable in tables

-- first check the table data
select * from company.drivers;

select * from company.drivers
where shift = "Day" or shift = "Night";

-- AND , OR in one query
-- This and following, both give different output
select * from company.drivers
where shift = "Day" and (salary = 55000 or salary = 45000);

select * from company.drivers
where shift = "Day" and salary = 55000 or salary = 45000;
