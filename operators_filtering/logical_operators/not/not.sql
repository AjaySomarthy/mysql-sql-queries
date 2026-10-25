-- NOT usage

-- Creation of Drivers table is avialable in tables

-- first check the table data
select * from company.drivers;

-- Not EQUAL
select * from company.drivers
where not shift = "Day";

select * from company.drivers
where id != 101;

select * from company.drivers
where salary <> 55000;


-- NOT >
select * from company.drivers
where not salary > 55000;

-- NOT >=
select * from company.drivers
where not salary >= 55000;

-- NOT <
select * from company.drivers
where not salary < 55000;

-- NOT <=
select * from company.drivers
where not salary <= 55000;

-- NOT LIKE
select * from company.drivers
where not name like "A%";

-- NOT IN 
select * from company.drivers
where not id in (101, 201);

-- NOT BETWEEN
select * from company.drivers
where not id between 101 and 301;
