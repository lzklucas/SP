use [Royal_Poly_DB]
/*
-- Question 1 
select Dept_Name, Staff_Name,Designation from Department_Relation d
--select * from Staff_Relation
JOIN Staff_Relation s ON d.Dept_Cd = s.Dept_Cd
WHERE Designation LIKE '%Director%'
ORDER BY Dept_Name ASC
*/
/*
-- Question 2
select Dept_Name,Crse_Name, Crse_Fee + Lab_Fee AS 'Total Semester Fee' from Department_Relation d
--select * from Course_Relation
JOIN Course_Relation c
ON d.Dept_Cd = c.Offered_By
ORDER BY Dept_Name ASC, [Total Semester Fee] DESC
*/
/*
-- Question 3
select Mod_Name,Pre_Requisite from Module_Relation m
--select * from Pre_Requisite_Relation
JOIN Pre_Requisite_Relation p
ON m.Mod_Cd = p.Mod_Cd
ORDER BY Mod_Name ASC, Pre_Requisite ASC
*/
/*
-- Question 4
select Dept_Name,Crse_Name, Stud_name , (2023 - YEAR(DOB)) AS age from Department_Relation d
--select * from student_relation
--select * from Course_Relation

JOIN Course_Relation c ON d.Dept_Cd = c.Offered_By 
JOIN student_relation s ON c.Crse_Cd = s.crse_cd
ORDER BY age DESC, Crse_Name ASC, Dept_Name ASC
*/
/*
--Question 5
select s.Staff_Name, s.Supervisor, p.Staff_Name,p.Staff_No from Staff_Relation s 
JOIN Staff_Relation p
ON s.Supervisor = p.Staff_No
*/
/*
-- Question 6
select * from Staff_Relation s
--select * from Department_Relation
join Department_Relation d ON s.Dept_Cd = d.Dept_Cd
GROUP BY Dept_Name
*/

select * from 














































