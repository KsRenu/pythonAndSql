-- DDL - create,drop,alter,truncate,rename
-- https://www.geeksforgeeks.org/ddl-commands-syntax/
-- create

create table t1(userId int primary key auto_increment, fname varchar(10), lname varchar(20));

describe t1;

drop table t1;

alter table t1 add age int not null;

ALTER TABLE t1 DROP PRIMARY KEY, CHANGE userId id int(11);


truncate table t1;

rename table t1 to t2;
