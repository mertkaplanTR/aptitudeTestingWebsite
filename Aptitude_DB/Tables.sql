CREATE DATABASE AptitudeDB
Go
Use AptitudeDB
Go
Create Schema Aptitude
GO
Create Table Aptitude.Category
(
	CategoryID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	CategoryName nvarchar(50) not null,
	BaseCategoryID int null 
)
Go
Create Table Aptitude.[Subject]
(
	SubjectID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	SubjectName nvarchar(50) not null,
	CategoryID int NOT NULL FOREIGN KEY REFERENCES Aptitude.Category(CategoryID)
)
Go
Create Table Aptitude.Question
(
	QuestionID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	QDescription nvarchar(350) NOT NULL,
	IsActive bit NOT NULL, 
	SubjectID int NOT NULL FOREIGN KEY REFERENCES Aptitude.[Subject](SubjectID)
)
Go
Create Table Aptitude.[Option]
(
	OptionID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	OptionName char(1) NOT NULL,
	OptionDescription nvarchar(150) NOT NULL,
	IsAnswer bit NOT NULL, -- sorunun doðru cevabý tutulacaktýr.
	QuestionID int NOT NULL FOREIGN KEY REFERENCES Aptitude.Question(QuestionID)
)
Go
Create Table Aptitude.[User]
(
	UserID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstName nvarchar(50) NOT NULL,
	LastName nvarchar(50) NOT NULL,
	Email nvarchar(60) NOT NULL,
	[Password] nvarchar(60) NOT NULL,
	LastLogInTime datetime not null,
	IsLoggedIn bit NOT NULL
)

Go
Create Table Aptitude.Exam
(
	ExamID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	UserID int NOT NULL FOREIGN KEY REFERENCES Aptitude.[User](UserID),
	StartDate datetime,
	EndDate datetime,
	--ExamDuration int,
	-- ExamDuration = 600 second
)
Go
Create Table Aptitude.Answer 
(
	AnswerID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	QuestionID int NULL FOREIGN KEY REFERENCES Aptitude.[Question](QuestionID),
	OptionID int NOT NULL FOREIGN KEY REFERENCES Aptitude.[Option](OptionID),
	ExamID int NOT NULL FOREIGN KEY REFERENCES Aptitude.[Exam](ExamID) 
)