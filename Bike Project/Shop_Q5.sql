/*Emily is preparing a sales report. She needs to know the total revenue
from rentals by month, the total by year, and the all-time across all the
years.Display the total revenue from rentals for each month, the total for each
year, and the total across all the years. Do not take memberships into
account. There should be 3 columns: year , month , and revenue .
Sort the results chronologically. Display the year total after all the month
totals for the corresponding year. Show the all-time total as the last row.*/


select extract (year from start_timestamp) as year,
			extract (month from start_timestamp) as month,
			sum(total_paid) as revenue
from rental
group by year,month

union all
select extract (year from start_timestamp) as year,
			null as month,
			sum(total_paid) as revenue
from rental
group by year

union all
select null as year,
			null as month,
			sum(total_paid) as revenue
from rental
order by year,month

/* Query based on grouping sets----> This is much better in terms of small, easier to read and also with regards of performance it is much faster
	// because we are not using the same quey multiple times*/
	
select extract (year from start_timestamp) as year,
			extract (month from start_timestamp) as month,
			sum(total_paid) as revenue
from rental
group by grouping sets ((year,month), (year), ()) 
order by year,month