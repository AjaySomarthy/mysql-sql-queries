-- union all

-- Creation of developers_data, testers_data tables are avialable in tables

-- first check the table data
select * from company.developers_data;


-- union all
select * from company.testers_data;
select * from company.developers_data
union all
select * from company.testers_data;
