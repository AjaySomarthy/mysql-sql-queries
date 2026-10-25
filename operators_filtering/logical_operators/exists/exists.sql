-- EXISTS operator usage

-- Creation of Drivers table is avialable in tables

-- first check the table data
select * from company.developers_data;
select * from company.drivers;

-- EXISTS usage
select dev_name 
from company.developers_data
where exists (
select name from company.drivers);

-- EXISTS usage
select * 
from company.developers_data
where exists (
select name from company.drivers);
