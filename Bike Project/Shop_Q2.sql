select * from customer
	
select * from membership

select name, count(membership_type_id) as membership_count
from membership m
right join customer c on m.customer_id=c.id
group by name
order by membership_count desc








