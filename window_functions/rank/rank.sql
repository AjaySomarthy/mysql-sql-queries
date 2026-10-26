-- RANK usage

select * from school.students_1;

-- rank() for entire table
select *,
rank() over(order by marks desc) as Rank1
from school.students_1;

-- rank() department wise
select *,
rank() over(partition by branch order by marks desc) as Rank1
from school.students_1;
-- ---------------------------------------------------------------------------------------------------------------

select * from school.students_2;

-- rank() for entire table
select *,
rank() over(order by marks desc) as Rank1
from school.students_2;

-- rank() department wise
select *,
rank() over(partition by branch order by marks desc) as Rank1
from school.students_2;

