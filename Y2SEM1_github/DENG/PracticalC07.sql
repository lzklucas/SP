use [Royal_Poly_DB];

/*
1. (a) Write the SQL statement to list the mean pay, total pay and the number of staff in each
department. Include only full-time staff. Sort the result in ascending order of the number
of staff.
*/
/*
select
	dept_cd,-- Your grouping column
	avg(pay) as 'Mean Pay', -- Your aggregate columns
	sum(pay) as 'Total Pay',
	count(staff_no) as 'Number of Staff'
from
	staff_relation
where -- Row filtering
	type_of_employment = 'FT'
group by
	dept_cd
order by
	'Number of Staff' asc
*/

/*
(b) Include only the department with more than 2 staff.
*/
/*
select
	dept_cd,-- Your grouping column
	avg(pay) as 'Mean Pay', -- Your aggregate columns
	sum(pay) as 'Total Pay',
	count(staff_no) as 'Number of Staff'
from
	staff_relation
where -- Row filtering
	type_of_employment = 'FT'
group by
	dept_cd
having -- Group filtering
	count(staff_no) > 2
order by
	'Number of Staff' asc
*/
/*
2. (a) Write the SQL statement to list the mean pay, total pay and the number of staff by grade.
Include only full-time staff. Sort the result in ascending order of the number of staff.
*/
/*
(b) Include only the grade with more than 2 staff.
*/
/*
select
	Grade, --Your Grouping column
	AVG(pay) as 'Average Pay', --Your Aggerate Columns
	Sum(pay) as 'Total Pay',
	count(Staff_No) as 'Number of Staff'
from
	staff_relation
where
	Type_of_Employment = 'FT'
group by
	Grade
having
	count(Staff_No) > 2
order by
	'Number of Staff' asc
*/

/*
3. Write the SQL statement to list the highest and lowest pay and highest and lowest allowance of
each department in ascending order of department code.
*/
/*
select
	dept_cd,-- Your grouping column
	max(pay) as 'Highest Pay', -- Your aggregate columns
	max(allowance) as 'Highest Pay',
	min(pay) as 'Lowest Pay',
	min(allowance) as 'Lowest Allowance'
from
	staff_relation
/*
where -- Row filtering
	type_of_employment = 'FT'*/
group by
	dept_cd
order by
	dept_cd asc
*/

/*
4. Write the SQL statement to verify that staff names in the staff relation are unique. You should
display any staff names that are not unique.
*/
/*
select
	staff_name as 'Staff Name', -- Grouping column
	count(staff_name) as 'Number of times staff name occurs'-- Aggregate columns
from
	staff_relation
group by
	staff_name
having
	count(staff_name) > 1
*/
/*
5. (a) Write the SQL statement to compute the total manpower cost by department, displayed n
descending. Exclude the cost due to Principal and Deputy Principal’s Office (PO and
DPO) by the using the IN set membership operator. Total manpower cost is computed a
sum( isnull(pay,0) + isnull(allowance,0) ). List the No of Staff for each department as
well.
*/


/*
(b) Exclude those departments with one or two staff.
*/

/*
(c) Exclude those departments with one or two staff and total manpower cost less than
$20,000.
*/

/*
6. Write the SQL statement to list first alphabet of staff number, number of staff and mean age
of staff ordered by descending order of number of staff. . 
*/
/*
select 
	substring(staff_no,1,1) 'First letter of start_no', -- Group column
	count(staff_no), -- Aggregate column
	avg(datediff(year, date_of_birth, getdate())) 'Mean Age'
from
	staff_relation
group by 
	substring(staff_no,1,1)
*/
