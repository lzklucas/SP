-- PRAC C6 Aggregate (Column Wise Functions)
use [Royal_Poly_DB]

--Section A: - Average Function

/*
1. Write the SQL statement to list the average course fee, relabeling this column as ‘Mean
Course Fee’. Sort the result in descending order of average course fee. Is there any
redundant clause here?
*/
/*
select 
	avg(crse_fee) as 'Mean Course Fee'
from
	course_relation
order by 
	'Mean Course Fee'
*/

/*
2. Write the SQL statement to list the average lab fee, treating null as it is, and average lab fee,
treating null as zero. Relabeling the first column as ‘Mean Lab Fee’ and the second column
as ‘Mean Lab Fee – Null treated as zero’. Explain the difference in the answers.
*/
/*
select 
	avg(crse_fee) as 'Mean Course Fee',
	avg(isnull(lab_fee,0)) as 'Mean Lab Fee - Null treated as zero'
from
	course_relation
*/
/*
3. First, write the SQL statement to list the total fee: course fee plus lab fee, leaving the null
value as it is, and the total fee: course fee plus lab fee, treating the null value as zero. Order
by first column. Re-label first column as 'Total fee (null as it is)' second column as 'Total fee (null as
zero)'.
Second, write the SQL statement to list the average total fee: course fee plus lab fee, leaving
the null value as it is, and the average total fee: course fee plus lab fee, treating the null
value as zero. Order by first column. Re-label first column as 'Mean total fee (null as it is)',
second column as 'Mean total fee (null as zero)'.
*/


-- Section B: - Sum Function
/*
1. Write the SQL statement to list the total pay of all staff in Royal Poly. Re-label it as ‘Total
pay’. Does applying ISNULL function on pay to treat null as zero has any effect on the final
answer?
*/
/*
select 
	sum(pay) as 'sum of pay',
	sum(isnull(pay,0)) as 'sum of pay - use 0 for NULL'
from staff_relation
*/

/*
Section C: - String Operator in Column Expression
1. Write the SQL statement to list following output and figure out how the results are
computed:
*/


/*
Section D: Count Function
1. Write the SQL statement to find out how many staff is there in Royal Poly.
*/
/*
select
	count(staff_no) 'Number of Staff in Royal Poly'
from
	staff_relation
*/

/*
2. Write the SQL statement to find out how many courses charge lab fee.
*/
/*
select
	count(lab_fee)
from
	course_relation
*/

/*
Section E: Max/Min (highest/lowest) Function
1. Write the SQL statement to list the highest and the lowest pay in Royal Poly.
*/
/*
select
	max(pay) as 'Max Pay',
	min(pay) as 'Min Pay'
from 
	staff_relation
*/

/*
Section F: Effects of DISTINCT on Argument of Aggregate Function
1. Write the SQL statement to list the 'Number of staff on hourly pay', 'Number of different hourly pay'
*/

select 
	count(hourly_rate) as 'Number of staff on hourly pay',
	count(distinct hourly_rate) as 'Number of different hourly pay'
from
	staff_relation