-- stored procedures usage without parameter

-- Creation od Students table is available in tables

-- First check the table data
select * from school.students;
-- ------------------------------------------------------------------------------------------------------------
-- 1) Finding the distinction students from the students table

delimiter //
create procedure school.GetDistinctionStudents()
begin 
  select * from school.students
  where marks >= 80;
end //
delimiter ;

-- calling the stored procedure
call school.GetDistinctionStudents();

-- the above should give this result
select * from school.students
where marks >= 80;
-- ------------------------------------------------------------------------------------------------------------
-- 2) Finding the passed students from the students table

delimiter //
create procedure school.GetPassedStudents()
begin 
  select * from school.students
  where marks >= 35;
end //
delimiter ;

-- calling the stored procedure
call school.GetPassedStudents();

-- the above should give this result
select * from school.students
where marks >= 35;
-- ------------------------------------------------------------------------------------------------------------
-- 3) Finding the failed students from the table students

delimiter //
create procedure school.GetFailedStudents()
begin
  select * from school.students
  where marks < 35;
end //
delimiter ;

-- calling the stored procedure
call school.GetFailedStudents();

-- the above should give this result
select * from school.students
where marks < 35;
-- ------------------------------------------------------------------------------------------------------------
-- deleting the stored procedure
drop procedure school.GetPassedStudents;
