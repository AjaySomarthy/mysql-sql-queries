-- MULTI-LINE comment in MySQL

/* This is
multiline
comment */

/* multi-line comment usage */
select * from school.students;

select * from school.students;   /* multi-line comment usage */

-- will return id, marks columns
select id, /* name, branch, */ marks
from school.students;

-- will return id, marks columns
select id,
/*
name,
branch,
*/
marks
from school.students;
