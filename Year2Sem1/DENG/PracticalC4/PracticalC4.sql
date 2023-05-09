use [Royal_Poly_DB];

-- select * from department_relation
-- select * from staff_relation
-- select * from course_relation

/*
Section A: Multiple search conditions using AND operator
1. Write the SQL statement to list the citizenship and staff names all foreign staff from the
School of Digital Media and Infocomm Technology (DMIT). Sort the result in ascending order
of staff name within descending order of citizenship.
2. Write the SQL statement to list in ascending order, the staff name of all male staff who are
Singapore citizens born in the sixties (from 1960 to 1969 inclusive). Re-label staff name
column’s header as ‘Singaporean Men’.
*/


/*
select	-- select the columns
	citizenship, staff_name
from	-- select table
	staff_relation
where	-- select the row
	dept_cd = 'DMIT' and citizenship != 'Singapore'
order by	-- order the row
	citizenship desc,
	staff_name asc
*/

/*
select
	staff_name as 'Sinagporean Married & Single Men'
from
	staff_relation
where
	citizenship = 'Singapore' and 
	gender = 'm' and
	year (date_of_birth) between 1960 and 1969
order by
	staff_name
*/

/*
Section B: Multiple search conditions using OR operator
1. Write the SQL statement to list the marital status and staff name of staff that are divorced
or widowed. (use the OR operator first then use the IN operator)
2. Write the SQL statement to list the highest qualification and staff name of staff who are
bachelor degree holders or whose names have the letter n. Sort the result in ascending
order of staff name within ascending order of highest qualification.
*/

/*
select
	staff_name
	marital_status
from
	staff_relation
where
	-- marital_status = 'D' or marital_status = 'W'
	marital_status in ('D', 'W')
*/

/*
select 
	staff_name,
	highest_qln
from
	staff_relation
where
	highest_qln like 'B%' or staff_name like 'n%'
order by
	highest_qln asc,
	staff_name asc
*/

/*
Section C: Multiple search conditions using AND & OR operators
1. Write the SQL statement to list the marital status and staff name of female staff that are
divorced or widowed. (Use the OR operator first then use the IN operator. Remember to
use parentheses to encapsulate two conditions as one for OR. )
*/

-- section c stuff here


/*
Section D: Parentheses within Parentheses
1. Write the SQL statement to list the gender, pay, and staff name of staff who are receiving
pay. List the female staff who are paid between 4000 and 7000 or the male staff who are
paid between 2000 and 6000. Sort in ascending order of pay within ascending order of
gender.
2. List the staff number, name, gender, date of birth, pay, grade and join year of female staff
who are not in grade ‘SSD’ or ‘SSE’ but are either born before 1963 or whose pay is more
than $6,000 or joined between 1997 and 2000.
*/

/*
select 
	staff_name, gender, pay
from 
	staff_relation
where
	(gender = 'F' and pay BETWEEN 4000 AND 7000) or
	(gender = 'M' and pay BETWEEN 2000 AND 6000)
order by
	gender asc,
	pay asc
*/

select 
	staff_no, staff_name, gender, date_of_birth, pay, grade, join_yr
from
	staff_relation
where 
	gender = 'F' and 
	grade not in ('SSD', 'SSE') and 
	(year(date_of_birth) < 1963 or pay > 6000 or
	join_yr between 1997 and 2000)
 
