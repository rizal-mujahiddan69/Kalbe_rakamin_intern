-- Tentukan nama store dengan total 
-- quantity terbanyak!

select p."Product Name" , sum(t.totalamount) as "total amount"
from product p 
right join "transaction" t 
on p.productid = t.productid 
group by p."Product Name" 
order by "total amount" desc
limit 1
;