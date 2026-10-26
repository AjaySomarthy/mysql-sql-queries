-- DENSE RANK usage

select * from school.students_1;

-- dense_rank() for entire table
select *,
dense_rank() over(order by marks desc) as DenseRank
from school.students_1;

-- dense_rank() department wise
select *,
dense_rank() over(partition by branch order by marks desc) as DenseRank
from school.students_1;
-- ---------------------------------------------------------------------------------------------------------------

select * from school.students_2;

-- dense_rank() for entire table
select *,
dense_rank() over(order by marks desc) as DenseRank
from school.students_2;

-- dense_rank() department wise
select *,
dense_rank() over(partition by branch order by marks desc) as DenseRank
from school.students_2;

