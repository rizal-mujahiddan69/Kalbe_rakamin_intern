-- Tentukan nama store dengan total 
-- quantity terbanyak!

select storename, sum(t.qty) as "total qty"
from store s 
right join "transaction" t 
on s.storeid = t.storeid 
group by s.storename 
order by "total qty" desc
limit 1
;