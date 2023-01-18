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

 ------ CREATE SCHEMA SCRIPT ---------


--1.Create a database called “LMT_University”.
CREATE DATABASE LMT_University;
GO

--2.Create an “enrol” schema under “LMT_University”.
USE LMT_University;
GO
CREATE SCHEMA [enrol];
GO

/****************************************************************************** 
5.Create an “Address” table under “enrol” schema with the following specifications
	a.Address table must have the following attributes-
	b.	Add the following constraint.
		i.	AddressID: Auto Increment, Primary Key, Not null, clustered index.
		ii.	StreetAddress: Null
		iii. City: Not Null
		iv.	State: Null
		v.	PostalCode: Null
		vi.	Country: Not Null
		vii.InsertedOn: Not Null 
********************************************************************************/
-- Create table Address
BEGIN
	CREATE TABLE [enrol].[Address] (
		[AddressID] [INT] IDENTITY(1,1) UNIQUE NOT NULL,
		[StreetAddress] [VARCHAR](50) NULL,
		[City] [VARCHAR](50) NOT NULL,
		[State] [VARCHAR](50) NULL,
		[PostalCode] [VARCHAR](50) NULL,
		[Country] [VARCHAR](50) NOT NULL,
		[InsertedOn] [DATETIME] DEFAULT (SYSDATETIME()) NOT NULL,
	CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ( 
		[AddressID] ASC
	)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY =OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	)
END
GO


/****************************************************************************** 
6.	Create a “Department” table under “enrol” schema with the following specifications-
	a.	Department table Must have the following attributes-
		b.	Add the following constraint.
			i.	AddressID: Auto Increment, Primary Key, Not null, clustered index.
			ii.	StreetAddress: Null
			iii. City: Not Null
			iv.	State: Null
			v.	PostalCode: Null
			vi.	Country: Not Null
			vii.InsertedOn: Not Null 
********************************************************************************/
-- Create table Department
CREATE TABLE enrol.Department
	(
    DepartmentID INT IDENTITY(1,1) UNIQUE NOT NULL,
	DepartmentName varchar(50) NOT NULL,
	DepartmentDescription VARCHAR(MAX) NULL,
	DepartmentCapacity INT NOT NULL,
	InsertedOn DATETIME DEFAULT (SYSDATETIME()) NOT NULL

	CONSTRAINT PK_Department PRIMARY KEY CLUSTERED ( 
		DepartmentID ASC
	)
);
GO



/****************************************************************************** 
7.	Create a “Lecturer” table under “enrol” schema with the following specifications-
	a.	Lecturer table Must have the following attributes-
	b.	Add the following constraints-
		i.	LecturerID: Auto Increment, Primary Key, Not null, clustered index.
		ii.	LecturerName: Not Null
		iii.	LecturerHighestQualification: Null
		iv.	LecturerAge: Not Null
		v.	DepartmentID: Not Null
		vi.	InsertedOn: Null

********************************************************************************/
-- Create table Lecturer
CREATE TABLE enrol.Lecturer(
	LecturerID INT IDENTITY(1,1) NOT NULL, 
	LecturerName VARCHAR(50) NOT NULL,
	LecturerHighestQualification VARCHAR(50) NULL,
	LecturerAge DATE NOT NULL,
	DepartmentID INT NOT NULL,
	InsertedOn DATETIME DEFAULT (SYSDATETIME()) NOT NULL

	CONSTRAINT PK_Lecturer PRIMARY KEY CLUSTERED ( 
		LecturerID ASC
	)
	CONSTRAINT FK_LECTURER_DEPARTMENT FOREIGN KEY (
		DepartmentID
	) REFERENCES enrol.Department (DepartmentID),
);	
GO


/****************************************************************************** 
8.	Create a “Student” table under “enrol” schema with the following specifications-
	a.	Student table Must have the following attributes-
	b.	Add the following constraints-
		i.	StudentID: Auto Increment, Primary Key, Not null, clustered index.
		ii.	StudentFirstName: Not Null
		iii.	StudentLastName: Null
		iv.	StudentDOB: Not Null
		v.	StudentMobile: Null
		vi.	StudentRollNo: Not Null
		vii.	DepartmentID: Foreign key, Not Null.
		viii.	AddressID: Foreign key, Not Null.
		vii.	InsertedOn: Not Null
********************************************************************************/
-- Create table Student
CREATE TABLE enrol.Student(
	StudentID INT IDENTITY(1,1) NOT NULL, 
	StudentFirstName VARCHAR(50) NOT NULL,
	StudentLastName VARCHAR(50) NULL,
	StudentDOB DATE NOT NULL,
	StudentMobile VARCHAR(50)  NULL,
	StudentRollNo INT NOT NULL,
	DepartmentID INT NOT NULL,
	AddressID INT NOT NULL,
	InsertedOn DATETIME DEFAULT (SYSDATETIME()) NOT NULL

	CONSTRAINT PK_Student PRIMARY KEY CLUSTERED ( 
		StudentID ASC
	)
	CONSTRAINT FK_STUDENT_DEPARTMENT FOREIGN KEY (
	DepartmentID
	) REFERENCES enrol.Department (DepartmentID),

	CONSTRAINT FK_STUDENT_ADDRESS FOREIGN KEY (
	AddressID) 
	REFERENCES enrol.Address (AddressID)
	
);
GO
