use [Royal_Poly_DB];

--Section A: Joining two tables/relations

/*
1. Write the SQL statement to list all the department name and the name of the director and
deputy director, sorted in ascending order of department name.
*/

--select * from department_relation
--select * from staff_relation

/*
select 
	D.Dept_name as 'Department Name', 
	S.Staff_name as 'Staff_Name',
	S.Designation as 'Designation'
from
	department_relation D,
	staff_relation S
where 
	D.Dept_Cd = S.Dept_Cd
	and
	S.Designation like '%director%'
*/

-- Use the JOIN way when you have foreign keys setup
/*
select 
	D.Dept_name as 'Department Name', 
	S.Staff_name as 'Staff_Name',
	S.Designation as 'Designation'
from
	department_relation D
join
	staff_relation S
on
	D.Dept_Cd = S.Dept_Cd
where
	S.Designation like '%director%'
*/

/*
2. Write the SQL statement to list department name, course name and total semester fee
(course fee plus lab fee) sorted by ascending order of department name and descending
order of total semester fee.
*/

-- WHERE FILTERING METHOD
/*
select 
	DR.dept_name as 'Department Name',
	CR.crse_name as 'Course Name',
	CR.crse_fee + isnull(CR.lab_fee,0) as 'Total Semester Fee'
from
	department_relation DR,
	course_relation CR
where 
	DR.Dept_Cd = CR.Offered_By
order by
	'Department Name' asc,
	'Total Semester Fee' desc
*/

--JOIN METHOD
/*
select 
	DR.dept_name as 'Department Name',
	CR.crse_name as 'Course Name',
	CR.crse_fee + isnull(CR.lab_fee,0) as 'Total Semester Fee'
from
	department_relation DR
join
	course_relation CR
on
	DR.Dept_Cd = CR.Offered_By
order by
	'Department Name' asc,
	'Total Semester Fee' desc
*/