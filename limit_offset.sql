-- LIMIT usage
-- top 2 rows from table
select * from company.drivers
limit 2;

-- top 2 drivers who are having salary >= 60000
select * from company.drivers
where salary >= 60000
limit 2;

-- OFFSET usage
-- it will leave first 3 rows and list next 3 rows
select * from company.drivers
limit 3 offset 3;
