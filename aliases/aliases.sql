-- Aliases

-- Creation of Drivers table is avialable in tables

-- first check the table data
select * from company.drivers;

-- alias on columns
select id as StudentID, name as FullName from company.drivers;

select id StudentID, name FullName from company.drivers;

select id "Student ID", name "Full Name" from company.drivers;

-- alias on table
select id, name from company.drivers as d;

select * from company.drivers as d;
