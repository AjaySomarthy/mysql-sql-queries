-- COALESCE usage

-- Creation on workers_data table is available in tables

-- First check the table data 
select * from school.workers_data;

-- We will get NULL for worker_savings column for worker_id=2
select *, worker_salary - worker_expenses worker_savings
from school.workers_data;

-- coalesce usage
-- To avoid null values in worker_savings column we use coalesce
-- coalesce treats null values as 0
select *, worker_salary - coalesce(worker_expenses, 0) worker_savings
from school.workers_data;
