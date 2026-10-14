-- CASE usage

-- Creation on Students table is available in tables

-- First check the table data 
select * from school.students;

-- case usage
select *,
case
when marks > 80 then "Distinction"
when marks >= 35 then "Pass"
else "Fail"
end as "Result"
from school.students;