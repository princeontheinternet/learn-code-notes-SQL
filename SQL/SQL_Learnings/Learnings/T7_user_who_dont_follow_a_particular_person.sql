# Find the user_name who dont have 'Prince' in their follower

--CREATE TABLE
create table my_table(user_name varchar, follower_name varchar);

--INSERT RECORDS
insert into my_table values('A', 'Prince'),('A', 'Rajesh'),('A', 'Vishal'),('B', 'Prince'),('C', 'Rajesh'),('C', 'Vishal');

--QUERYING THE TABLE
select * from my_table;

--Using CTE
with base1 as (
select user_name from my_table where follower_name = 'Prince')
select user_name from my_table where user_name not in (select user_name from base1);

--Using SubQuery
select user_name from my_table where user_name not in (select user_name from my_table where follower_name = 'Prince');





