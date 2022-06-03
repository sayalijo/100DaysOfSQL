WITH cte as(
select distinct sell_date, product from Activities)
select TO_CHAR(sell_date,'YYYY-MM-DD') as sell_date, count(product) as num_sold,
LISTAGG(product, ',') WITHIN GROUP (ORDER BY product) as products
from cte
group by sell_date
order by sell_date


we wrote cte for distinct sell_date as there were duplicates and we need to consider only unique dates