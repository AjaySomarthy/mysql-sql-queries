-- DROP TABLE usage

-- dropping a table, it will delete the entire table from database
drop table Company.LowPayEmployees;

-- this will throw an error as LowPayEmployees is not available now
drop table Company.LowPayEmployees;

-- to avoid these errors use if exists
drop table if exists Company.LowPayEmployees;


-- deleting all the associated tables for fresh start to learn create, alter, truncate, and delete
drop table Company.Employees;
drop table Company.HighPayEmployees;
drop table Company.LowPayEmployees;
drop table Company.NewEmployees;
