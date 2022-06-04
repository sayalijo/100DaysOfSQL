
select p.product_name, s.year, s.price from product p
 inner join sales s
on  p.product_id = s.product_id ;


// I got tricked here bcz I read word "for each",
but there is no aggrigation we need to calculate in sleect clause so no need to use group by.