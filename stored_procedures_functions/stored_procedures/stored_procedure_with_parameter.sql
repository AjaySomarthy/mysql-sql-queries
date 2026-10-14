-- stored procedures usage with parameter

-- Creation od Students table is available in tables

-- First check the table data
select * from school.students;
-- ------------------------------------------------------------------------------------------------------------
-- 1) Finding the distinction students & Passed students from the students table

delimiter //
create procedure school.GetDistinctionOrFailedStudents(
    in marks1 int
)
begin
  select * from school.students
  where marks >= marks1;
end //
delimiter //  

-- calling the stored procedure
call school.GetDistinctionOrFailedStudents(80);
call school.GetDistinctionOrFailedStudents(35);
-- ------------------------------------------------------------------------------------------------------------
-- 2) Finding the failed students from the students table

delimiter //
create procedure school.GetFailedStudentsWithParameter(
    in marks1 int
    )
begin 
  select * from school.students 
  where marks < marks1;
end //
delimiter ;  

-- calling the procedure
call school.GetFailedStudentsWithParameter(35);
