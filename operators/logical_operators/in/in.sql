-- IN operator usage

-- Creation of Drivers table is avialable in tables

-- first check the table data
select * from company.drivers;

-- IN operator on Integers
select * from company.drivers
where id in (201,401,601);

-- IN operator on Strings
select * from company.drivers
where name in ("Anusha", "CHitra", "Divya");
