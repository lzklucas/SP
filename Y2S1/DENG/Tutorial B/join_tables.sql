use [Royal_Poly_DB];

--select * from staff_relation 
--select * from course_relation
--select * from department_relation

/*
STEP 1: Combine two table together
- Give 6*4 = 24 rows
*/
/*
select
	*
from
	course_relation C, -- C behaves as a variable
	department_relation D
*/

/*
STEP 2: Reduce Rows (keep only the rows whereby the Offered_By emails to Dept_Cd)
*/
/*
select
	*
from
	course_relation C, -- C behaves as a variable
	department_relation D
where 
	C.Offered_By = D.Dept_Cd
*/

/*
STEP 3: Reduce Columns
*/
/*
select
	C.Crse_Name as 'Course',
	D.Dept_Name as 'Offered By'
from
	course_relation C, -- C behaves as a variable
	department_relation D
where 
	C.Offered_By = D.Dept_Cd	
*/

-- SECOND METHOD TO COMBINE TABLES USING  JOIN
-- (Will only work if Foreign Keys are setup)

select
	C.Crse_Name as 'Course',
	D.Dept_Name as 'Offered By'
from
	course_relation C -- C behaves as a variable
join
	department_relation D
on 
	C.Offered_By = D.Dept_Cd