select name
from SalesPerson
where sales_id not in(
    select sales_id
    from Orders o
    inner join
    Company c
    on o.com_id = c.com_id
    where c.name = 'RED'
)


// inner joins didnt work here as query asks to return "all other" except RED company, inner joins gave wrong results and missed out on some names.