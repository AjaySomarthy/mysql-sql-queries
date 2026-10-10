select * from company.drivers;

-- ORDER BY usage
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
-- ============================================================================================================
-- AND usage
select * from company.drivers
where shift = "Day" and salary >= 60000;
-- ============================================================================================================
-- OR usage
select * from company.drivers
where shift = "Day" or shift = "Night";
-- ============================================================================================================
-- AND , OR in one query
-- This and following, both give different output
select * from company.drivers
where shift = "Day" and (salary = 55000 or salary = 45000);

select * from company.drivers
where shift = "Day" and salary = 55000 or salary = 45000;
-- ============================================================================================================
-- NOT usage
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
