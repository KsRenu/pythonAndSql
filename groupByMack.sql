-- select distinct category from coins_transaction_histories;

select name,category, avg(coins)
from userpublics as u
inner join 
coins_transaction_histories as c
on c.user_id = u.id
where c.created_at>='2023-01-01 00:00:00'
group by category having category = 'li' or category = 'blog';