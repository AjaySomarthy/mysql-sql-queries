-- wildcards usage

-- Creation of Drivers table is avialable in tables

-- first check the table data
select * from company.drivers;


-- % wildcard usage
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


-- _ wildcard usage
select * from company.drivers
where name like "_n_sh_";

select * from company.drivers
where name like "B_ndh_";


-- %_ wildcards both
select * from company.drivers
where name like "_i%";
