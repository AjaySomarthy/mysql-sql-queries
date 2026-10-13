-- DELETE usage

-- first check the table and its data
select * from company.managers;

-- deleting a single row from the table
delete from company.managers
where id = 401;

-- deleting multiple rows from the table
delete from company.managers
where id >= 600;

-- deleting all the rows from the table
delete from company.managers;


-- NOTE : to delete the entire table we use drop command
drop table company.managers;
