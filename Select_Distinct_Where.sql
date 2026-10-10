create table Company.Drivers (
id int, name varchar(255), shift varchar(255), salary int);

select * from Company.Drivers;

insert into Company.Drivers (id, name, shift, salary)
values
(101, "Anusha", "Day", 60500),
(201, "Bindhu", "Day", 55000),
(101, "Anusha", "Day", 60500),
(301, "Chitra", "Day", 50000),
(401, "Divya", "Night", 45000),
(501, "Eesha", "Night", 45000),
(601, "Fathima", "Night", 35000);

-- SELECT usage
-- selecting all the columns
select * from Company.Drivers;

-- selecting only required columns
select id, name, salary
from Company.Drivers;
-- ============================================================================================================
-- SELECT DISTINCT usage
-- selecting one distinct column
select distinct salary from Company.Drivers;

-- selecting multiple distinct columns
select distinct name, salary
from Company.Drivers;
-- ============================================================================================================
--  WHERE usage with different Operators

-- where with = operator on Strings
select * from company.drivers
where name = "Anusha";

-- where with = operator on Integers
select * from company.drivers
where salary = 45000;

-- where with > operator
select * from company.drivers
where salary > 50000;

-- where with >= operator
select * from company.drivers
where salary >= 50000;

-- where with < operator
select * from company.drivers
where salary < 50000;

-- where with <= operator
select * from company.drivers
where salary <= 50000;


-- where with <> operator
select * from company.drivers
where salary <> 45000;

select * from company.drivers
where id != 101;

select * from company.drivers
where not id = 201;


-- where with BETWEEN operator on Integers
select * from company.drivers
where id between 201 and 401;

-- where with BETWEEN operator on Strings
select * from company.drivers
where name between "Bindhu" and "Divya";


-- where with LIKE operator on Strings
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


-- where with IN operator on Integers
select * from company.drivers
where id in (201,401,601);

-- where with IN operator on Strings
select * from company.drivers
where name in ("Anusha", "CHitra", "Divya");
