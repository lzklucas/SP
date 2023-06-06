use [Royal_Poly_DB];

-- select * from staff_relation
-- select * from course_relation
-- select * from department_relation

/*
Section A: - Performing Calculation on Columns in Select Statement/Null Value Problem
1. Write the SQL statement to list the course code, course name (diploma name), course fee,
lab fee, a column to convert any lab fee to zero whenever it is null, and fee per semester
(calculated as course fee plus lab fee). Sort the result in ascending order of fee per
semester.
2. Write the SQL statement to list the staff name, the salary and bonus of staff that are given
pay. Salary is computed as pay plus allowance. Label the calculated salary as salary. Bonus
is calculated as 2.25 month of salary. Sort the result by using the formula for bonus.
3. Write the SQL statement to list the department name, maximum staff strength of each
department, the number of staff of each department and the number understaffed of each
department. The formula for the latter is (max_staff_strength - No_of_staff) which must
exceed zero. Re-label it as ‘number understaffed’. Sort the result in descending order of
‘number understaffed’.
*/

/*
select 
	crse_cd, crse_name, crse_fee, lab_fee,
	isnull(lab_fee,0) as 'Null_Lab_Fee_Set_To_zero',
	crse_fee + isnull(lab_fee,0) as 'Fee per semester'
from
	course_relation
order by
	lab_fee asc
*/

/*
select 
	Staff_Name, isnull(Pay,0) + isnull(Allowance,0) as 'salary', 2.25 * (isnull(Pay,0) + isnull(Allowance,0)) as 'bonus'
from 
	staff_relation
order by 
	'bonus'
*/

/*
select 
	Dept_Name, Max_Staff_Strength, No_Of_Staff,
	Max_Staff_Strength - No_Of_Staff as 'Number understaffed'
from
	department_relation
where
	(Max_Staff_Strength - No_Of_Staff) > 0
order by
	'Number Understaffed' desc
*/

/*
Section B: - String Operator in Column Expression
1. Write the SQL statement to concatenate staff name with department code in parentheses..
Display the result in ascending order. Include only academic staff, that is, staff_no starts
with ‘S’.
2. Write the SQL statement to display today’s date and time.
3. Write the SQL statement to list the staff name and number of years in service. Sort the
result in descending order of the number of years in service.
4. Write the SQL statement to list the course code, course name and the number character of
the course name of courses with course name exceeding 31 characters. Re-label the last
column as ‘Length of Diploma Name’. Sort the result in ascending order of Length of
Diploma Name.
5. Write the SQL statement to list the course code, and course name in both uppercase and
lowercase. Display the results in descending order of course code.
*/

-- 1)
/*
select 
	staff_name + '(' + dept_cd + ')' as 'Staff Name'
from
	staff_relation
where
	staff_no like 'S%'
order by
	1
*/

--2)
-- select getdate()

--3)
/*
select 
	staff_name,
	year(getdate()) - join_yr as 'Number of years in service'
from
	staff_relation
order by
	'Number of years in service' desc	
*/

/*
select 
	Crse_Cd, Crse_Name, len(Crse_Name) as 'length of name'
from 
	course_relation
where
	len(Crse_Name) > 31
order by
	'length of name' asc
*/

select * from course_relation


select 
	UPPER(Crse_Cd), UPPER(Crse_Name)
from 
	course_relation
order by
	Crse_Cd desc




