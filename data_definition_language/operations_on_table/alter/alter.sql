-- ALTER TABLE usage

-- altering a table, adding a column
alter table Company.Employees
add department varchar(255);

-- to check the data in table every time for different actions
select * from Company.Employees;

-- altering a table, deleting a column
alter table Company.Employees
drop column salary;

-- altering a table, renaming a column
alter table Company.Employees
rename column name to fullname;

-- altering a table, modifying column datatype
alter table Company.Employees
modify id varchar(255);

-- altering a table, modifying column datatype with adding a constraint
alter table Company.Employees
modify fullname varchar(200) not null;

-- altering a table, adding a constraint
alter table Company.Employees
add constraint chk_id check (id >= 100);

-- altering a table, renaming the table name
alter table Company.Employees
rename to Company.NewEmployees;

select * from Company.NewEmployees;
