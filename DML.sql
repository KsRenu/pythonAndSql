-- DML
-- insert, update, delete, call,explain plan,lock
select * from t1;

insert into t1 values("t2fname1","t2lname1",45);

insert into t1 select * from t2;

-- ALTER TABLE t1 DROP PRIMARY KEY, CHANGE userId id int(11);

update t1 set fname = 'fnameFromT2' where id=1;

delete from t1 where id=0; -- delete * from t2;
