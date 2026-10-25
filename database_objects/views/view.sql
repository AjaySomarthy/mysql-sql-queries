-- VIEW usage

select * from persons.persons_data12;

create view persons.persons_data_view as
select id, name
from persons.persons_data12
where id <= 4;

select * from persons.persons_data_view;

create or replace view persons.persons_data_view as
select id, name, dob
from persons.persons_data12
where id <= 4;

create or replace view persons.persons_data_view_1 as
select id, name, dob
from persons.persons_data12
where id <= 4;

select * from persons.persons_data_view_1;

drop view persons.persons_data_view_1;

