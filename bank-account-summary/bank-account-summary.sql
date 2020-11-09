with balance as (
    select t.account, sum(t.amount) as balance
    from Transactions t
    group by t.account
    having sum(t.amount) > 10000
)
select u.name, b.balance
from Users u
inner join balance b on (b.account = u.account);