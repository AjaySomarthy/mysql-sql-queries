-- ALL operator usage

-- Creation of Drivers table is avialable in tables

-- first check the table data
select * from company.drivers;
select * from company.developers_data;

-- any usage
select *
from company.drivers
where name = all (
select dev_name from company.developers_data);

-- first check the table data
select * from products.books_data;
select * from products.clothes_data;

-- all usage
select * from products.books_data 
where book_area = all (
select clothes_area from products.clothes_data);


-- all usage
select * from products.books_data;
select * from products.pens_data;

select book_id, book_name, book_cost, book_area from products.books_data
where book_area = all (
select pen_area from products.pens_data);
