/* Next, Emily would like data about memberships purchased in 2023, with
subtotals and grand totals for all the different combinations of membership
types and months.
Display the total revenue from memberships purchased in 2023 for each
combination of month and membership type. Generate subtotals and
grand totals for all possible combinations. There should be 3 columns:
membership_type_name , month , and total_revenue .
Sort the results by membership type name alphabetically and then
chronologically by month.*/

-- total membership revenue for each month specific to each membership type
--total membership revenue specific to each membership type
--total membership revenue


select name,
	extract(month from start_date) as mnth
	sum(total_paid)as total_revenue
	from membership m 
	join membership_type mt on mt.id=m.membership_type_id
	group by name,mnth
	order by name,mnth


select name, sum(total_paid) as total_revenue
from membership m 
join membership_type mt on mt.id=m.membership_type_id
group by name
order by name

select sum(total_paid) as total_revenue
from membership m 
join membership_type mt on mt.id=m.membership_type_id
group by()

--USING GROUPING SETS

select name,
	extract(month from start_date) as mnth,
	sum(total_paid)as total_revenue
	from membership m 
	join membership_type mt on mt.id=m.membership_type_id
	group by grouping sets ((name,mnth),(name),())
	order by name,mnth

select name,
	extract(month from start_date) as mnth,
	sum(total_paid)as total_revenue
	from membership m 
	join membership_type mt on mt.id=m.membership_type_id
	group by CUBE (name,mnth)
	order by name,mnth

--USING GROUPING SETS
GROUP BY GROUPING SETS(C1,C2,C3)
(C1,C2)
(C1)
()

	
--USING CUBE
GROUP BY CUBE(C1,C2,C3)
(C1,C2,C3)
(C1,C2)
(C1,C3)
(C2,C3)
(C1)
(C2)
(C3)
()

--USING ROLL UP
GROUP BY ROLL UP(C1,C2,C3)
(C1,C2,C3)
(C1,C2)
(C1)
()

