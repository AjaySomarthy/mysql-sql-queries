-- Transaction , Commit , Rollback

select * from company.drivers;

start transaction;

update company.drivers
set salary = 90000
where id = 101;

Commit;

Rollback;
