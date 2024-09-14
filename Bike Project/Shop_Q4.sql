select * from bike

select category,count(case when status='available' 
					then 1
					END	) as number_of_available_bikes,
		COUNT(case when status='rented'
					then 1
					end) as number_of_rented_bikes
from bike
group by category