CREATE DATABASE FirstHomeTask
GO
USE FirstHomeTask
GO



CREATE TABLE  Groups(

	[Id] INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[GroupName]  NVARCHAR(10) NOT NULL,
	UNIQUE(GroupName),
	[GroupRating] INT NOT NULL,
	CHECK ([GroupRating]>=0 OR [GroupRating]<=5),
	[GroupYear] INT NOT NULL,
	CHECK ([GroupYear]>0 OR [GroupYear]<=5)
)


CREATE TABLE Departments(


	[Id] INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Financing] MONEY NOT NULL DEFAULT 0,
	CHECK([Financing]>0),
	[DepartmentName] NVARCHAR(100) NOT NULL,
	UNIQUE(DepartmentName)
)


CREATE TABLE Faculties(


	[Id] INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[FacultyName] NVARCHAR(100) NOT NULL,
	UNIQUE([FacultyName])

)

CREATE TABLE Teachers(


	[Id] INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[EmployementDate] DATE NOT NULL,
	CHECK([EmployementDate]>'1990-01-01'),
	[TeacherName] NVARCHAR(MAX) NOT NULL,
	[TeacherPremium] MONEY NOT NULL DEFAULT 0,
	CHECK([TeacherPremium]>0),
	[Salary] MONEY NOT NULL ,
	CHECK([Salary]>0),
	[Surname] NVARCHAR(MAX) NOT NULL

)







