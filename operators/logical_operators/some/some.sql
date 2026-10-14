-- SOME operator usage

-- Creation of Drivers table is avialable in tables

-- first check the table data
select * from company.drivers;
select * from company.developers_data;

-- some usage
select *
from company.drivers
where name = some (
select dev_name from company.developers_data);

-- this will also give same result as above
select * from company.drivers
where name in ("Anusha", "Bindhu", "Chitra");

-- first check the table data
select * from products.books_data;

select * from products.clothes_data;

-- some usage
select * from products.books_data 
where book_area = some (
select clothes_area from products.clothes_data);

-- since clothes_data is having Hyderabad, Mumbai areas in clothes_are, the below will give same result
select * from products.books_data
where book_area in ("Hyderabad", "Mumbai");
