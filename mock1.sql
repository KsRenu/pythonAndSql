-- select * from coins_transaction_histories;
-- sum of coins earned after july 1

select  sum(coins) from coins_transaction_histories
where updated_at > '2023-07-01 00:00:00'
-- group by user_id

-- find the user_id who earned the highest coin after july 

select user_id,coins
from coins_transaction_histories as c
where updated_at >='2023-06-30 00:00:00' 
group by user_id
having coins = max(coins)
order by coins desc
-- select sum(coins) from
 
 
 
 
select user_id,coins
from coins_transaction_histories as c
where updated_at > '2023-07-01 00:00:00' and user_id = 109


select  user_id , max(coins) 
from coins_transaction_histories 
where  updated_at > '2023-07-01 00:00:00' -- and coins = 100


-- select * from coins_transaction_histories  where user_id=13 and updated_at >= '2023-07-01 00:00:00'

select user_id,  sum(coins) as tot, updated_at
from coins_transaction_histories as c
group by user_id
having c.updated_at >='2023-06-30 00:00:00' -- and tot = max(coins)


select * from coins_transaction_histories where user_id = 179;

-- select * from userpublics;


-- (select * from coins_transaction_histories where updated_at >='2023-06-30 00:00:00' )

select name,coins
from coins_transaction_histories as c
inner join 
userpublics on c.user_id = userpublics.id
where c.updated_at >='2023-06-30 00:00:00';


 select * from coins_transaction_histories where updated_at >='2023-07-01 00:00:00' and category = 'blog';

update coins_transaction_histories 
set category = 'blog'
where updated_at >='2023-06-30 00:00:00' and category = 'tw';

-- stud after jan and highest 
select user_id,name, coins, max(coins)
from coins_transaction_histories as c
inner join 
userpublics on c.user_id = userpublics.id
 where userpublics.created_at>='2023-01-01 00:00:00';
-- group by user_id
-- having c.updated_at >='2023-06-30 00:00:00' and coins = max(coins);


select name,coins,category
from coins_transaction_histories as c
inner join 
userpublics on c.user_id = userpublics.id
where c.updated_at >='2023-06-30 00:00:00' and category = 'tw';


