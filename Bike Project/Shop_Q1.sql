select * from bike;

select category, count(1) as number_of_bikes
from bike
group by category
having count(1)>2