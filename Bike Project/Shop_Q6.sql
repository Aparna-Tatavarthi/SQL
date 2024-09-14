select * from membership_type
select * from membership


select extract(year from start_date) as yr,
		extract(month from start_date) as mnth,
	mt.name as membership_type	, sum(total_paid) as total_revenue 
from membership_type mt
join membership m on mt.id=m.membership_type_id
group by membership_type,yr,mnth
order by yr,mnth,membership_type


