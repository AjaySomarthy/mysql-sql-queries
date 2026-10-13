-- NULL usage

-- Creation of Teachers table is avialable in tables

-- first check the table data
select * from School.Teachers;

-- is null to check the nulls
select * from School.Teachers
where name is null;

select * from School.Teachers
where salary is null;

-- is not null to check not nulls
select * from School.Teachers
where name is not null;

select * from School.Teachers
where salary is not null;
