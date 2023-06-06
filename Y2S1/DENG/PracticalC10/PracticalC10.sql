--Pract C10
use [Royal_Poly_DB];
/*
select * from staff_relation
select * from country_relation
select * from department_relation
*/

/*Section A: Joining two tables/relations 
1. Write the SQL statement to list the admission number, the name of the student who scored 
above average for DBMS module. Display also their DBMS marks and grade, sorted in 
descending order of mark.
*/

/*
select p.adm_no, s.stud_name, p.mark, p.grade
from stud_mod_performance_relation p, student_relation s
where p.adm_no =s.adm_no
and p.mod_registered ='DBMS'
and mark > ( select avg( mark )
from stud_mod_performance_relation
where mod_registered ='DBMS' )
order by 3 desc
*/

/*
2. Write the SQL statement to list citizenship and name of staff that come from English 
speaking countries, sorted in ascending order of staff name within ascending order of 
citizenship. 
*/

-- STEP 1: Show all the countries with language equal to Chinese
/*
Select
	country_name
from 
	country_relation
where
	language = 'Chinese'
*/


Select 
	citizenship, 
	staff_name
from
	staff_relation
where	
	 Citizenship in (
		Select
			country_name
		from 
			country_relation
		where
			language = 'Chinese'
	)

Select
			*
		from 
			country_relation


/*
3. Write the SQL statement to list all information of departments with a female head of 
department. 
*/
--what tables are needed
--Select all female staff
/*
Select 
	*
from
	department_relation
where	
	  HOD in (
		Select
			Staff_No
		from 
			staff_relation
		where
			Gender = 'F'
	)
*/
/*
4. Write the SQL statement to list all information of those modules with pre-requisites. 
Section B: Optional
1. Write a SQL statement to list all information of staff working in departments headed by a 
female. You should not use join commands in your SQL statement.
2. For each department that has more than five full-time staff, retrieve the department name 
and the number of staff whose pay exceed $5000
*/