/**************************************************************
   2022F-T2 BDM 1034-Application Design for Big Data
   Midterm Exam Project: STUDENT DATA MANAGEMENT 
   Create by Group F: 
	Diana Marcela Lizararo Caicedo (c0855963)
	Kavit Rakeshkumar Soni (c0856931)
	Hakan Tekin (c0852682)
	Pratyush Singh (c0857725)
	Vengie Dinampo (c0849806) 
**************************************************************/ 
----------------UPDATE SCRIPT ---------------------


USE LMT_University;
GO
SET STATISTICS IO,TIME ON
GO

/*** 14.	Write the following Query based on the above datasets.
a.	Update StudentMobile for those students who belongs to Department “ME”.
b.	Update Student DepartmentID as 3, for the StudentID=42.
c.	Update LecturerHighestQualification as “PHd” for the Lecturer whose LecturerHighestQualification= “PhD”.
d.	Update PostalCode as “00000” for the Address which contain NULL as a PostalCode.
e.	Update StudentLastName as “Paul” for the Student whose Name is “Jerry”.
***/ 

--a.	Update StudentMobile for those students who belongs to Department “ME”.


UPDATE enrol.STUDENT
SET StudentMobile = 
			CASE StudentID
				WHEN 6 THEN  '+611482883476'
				WHEN 11 THEN  '+618675076454'
				WHEN 13 THEN  '+617897232539'
				WHEN 28 THEN  '+613134783726'
				WHEN 31 THEN  '+613134783726'
				WHEN 37 THEN  '+614198817454'
				WHEN 39 THEN  '+612639777958'
				WHEN 50 THEN  '+612425172721'
			END
WHERE StudentID IN (6,11,13,28,31,37,39,50);
GO

--check if the studentmoble under the ME dept has been updated
SELECT s.StudentID,s.StudentFirstName,s.StudentLastName,s.StudentMobile, s.DepartmentID 
FROM enrol.STUDENT AS s
INNER JOIN enrol.DEPARTMENT AS d ON s.DepartmentID = d.DepartmentID
WHERE s.StudentID IN (6,11,13,28,31,37,39,50); --Sudents under ME dept
GO


--b.	Update Student DepartmentID as 3, for the StudentID=42.
UPDATE enrol.STUDENT
SET DepartmentID = 3
WHERE StudentID=42
GO


--check if the DEPTID  OF STUDENTID 42  has been updated
SELECT StudentID, StudentFirstName, StudentLastName, DepartmentID
FROM enrol.STUDENT
WHERE StudentID = '42';
GO


--c.	Update LecturerHighestQualification as “PHd” for the Lecturer whose LecturerHighestQualification= “PhD”.
UPDATE enrol.Lecturer
SET LecturerHighestQualification= 'PHd'
WHERE LecturerID IN (2,8,14,20,26)
GO

--check if the LecturerHighestQualification   OF STUDENTID 42  has been updated
SELECT LecturerID, LecturerName, LecturerHighestQualification
FROM enrol.Lecturer
WHERE LecturerID IN (2,8,14,20,26)
GO


--e.	Update StudentLastName as “Paul” for the Student whose Name is “Jerry”.
UPDATE enrol.STUDENT 
SET StudentLastName = 'Paul'
WHERE StudentID = 3;
GO

--check if the StudentFirstName whose name is Jerry with StudentID =3  has been updated to Paul 
SELECT StudentID, StudentFirstName,StudentLastName
FROM enrol.STUDENT
WHERE StudentID = 3;
GO

