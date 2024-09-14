
select * from bike

select id,category, price_per_hour as old_price_per_hour,
case when category='electric' then round(price_per_hour -(price_per_hour*0.1),2)
 	when category='mountain bike' then round(price_per_hour -(price_per_hour*0.2),2)
else round(price_per_hour -(price_per_hour*0.5),2)
end as new_price_per_hour,
price_per_day as old_price_per_day,
case when category='electric' then round(price_per_day-(price_per_day*0.2),2)
 when category='mountain bike' then round(price_per_day-(price_per_day*0.5),2)
else round(price_per_day-(price_per_day*0.5),2)
end as new_price_per_day
from bike
	



