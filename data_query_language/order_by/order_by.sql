-- ORDER BY usage

-- Creation of Drivers table is avialable in tables

-- first check the table data
select * from company.drivers;

-- order by on single column
-- without any asc or desc
select * from company.drivers
order by salary;

-- with asc
select * from company.drivers
order by salary asc;

-- with desc
select * from company.drivers
order by salary desc;


-- order by on multiple columns
-- with asc and asc
select * from company.drivers
order by Shift asc, salary asc;

-- with asc and desc
select * from company.drivers
order by shift asc, salary desc;
