-- UPDATE usage

-- first check the table and its data
select * from company.managers;

-- updating a single value of one column
update company.managers
set name = "Anusha Patel"
where id = 101;

alter table company.managers
add Area varchar(255);

-- updating all the values of one column
update company.managers
set Area = "Hyderabad";

alter table company.managers
add Salary int;

-- updating all the values of multiple columns
update company.managers
set Area = "Bangalore", Salary = 50000;
