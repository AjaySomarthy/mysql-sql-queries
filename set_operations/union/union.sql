-- UNION

-- Creation of developers_data, testers_data tables are avialable in tables

-- first check the table data
select * from company.developers_data;

select * from company.testers_data;


-- union
select * from company.developers_data
union
select * from company.testers_data;
