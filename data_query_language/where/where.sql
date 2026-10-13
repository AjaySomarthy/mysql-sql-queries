--  WHERE usage

-- WHERE usage with different operators [ = , > , >= , < , <= , <> , != , BETWEEN , LIKE , IN ]

-- Creation of Drivers table is avialable in tables

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
