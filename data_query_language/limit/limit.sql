-- LIMIT usage

-- Creation of Drivers table is avialable in tables

-- first check the table data
select * from company.drivers;

-- top 2 rows from table
select * from company.drivers
limit 2;

-- top 2 drivers who are having salary >= 60000
select * from company.drivers
where salary >= 60000
limit 2;
