-- OFFSET usage

-- it will leave first 3 rows and list next 3 rows
select * from company.drivers
limit 3 offset 3;

-- for ex if I want to skip first 4 rows and want next 2 rows, then
select * from company.drivers
limit 2 offset 4;
