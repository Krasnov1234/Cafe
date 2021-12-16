GO

CREATE TABLE Positions (
RK_Position INT PRIMARY KEY IDENTITY(1,1),
[Name] NVARCHAR(80)
)

CREATE TABLE [Role] (
RK_Role INT PRIMARY KEY IDENTITY(1,1),
[Name] NVARCHAR(80)
)

CREATE TABLE WorkShifts (
RK_WorkShifts INT PRIMARY KEY IDENTITY(1,1),
[Date] DATE,
[Name] NVARCHAR(80)
)


CREATE TABLE Employeess (
RK_Employee INT PRIMARY KEY IDENTITY(1,1),
FirstName NVARCHAR(80) NOT NULL,
LastName NVARCHAR(80) NOT NULL,
MiddleName NVARCHAR(80),
Birthday DATE NOT NULL,
FK_Position INT REFERENCES Positions(RK_Position),
ImageEmployee IMAGE,
ImageScan IMAGE,
WorkStatus BIT
)

CREATE TABLE WorkShifts_Employee (
RK_WorkShifts_Employee INT PRIMARY KEY IDENTITY(1,1),
FK_WorkShifts INT REFERENCES WorkShifts(RK_WorkShifts),
FK_Employee INT REFERENCES Employeess(RK_Employee)
)

CREATE TABLE Userss (
RK_User INT PRIMARY KEY IDENTITY(1,1),
FK_Role INT REFERENCES [Role](RK_Role),
FK_Employee INT REFERENCES Employeess(RK_Employee),
[Login] NVARCHAR(50) NOT NULL,
[Password] NVARCHAR(50) NOT NULL
)

CREATE TABLE Client (
RK_Client INT PRIMARY KEY IDENTITY(1,1),
FirstName NVARCHAR(80) NOT NULL,
LastName NVARCHAR(80) NOT NULL,
MiddleName NVARCHAR(80)
)

CREATE TABLE Request (
RK_Request INT PRIMARY KEY IDENTITY(1,1),
[Date] DATE NOT NULL,
FK_Client INT REFERENCES Client(RK_Client),
WorkStatus BIT
)

CREATE TABLE Request_Employee (
RK_Request_Employee INT PRIMARY KEY IDENTITY(1,1),
FK_Request INT REFERENCES Request(RK_Request),
FK_Employee INT REFERENCES Employeess(RK_Employee)
)

CREATE TABLE Dishes (
RK_Dishes INT PRIMARY KEY IDENTITY(1,1),
[Name] NVARCHAR(100),
Cost MONEY
)

CREATE TABLE Request_Dishes (
RK_Request_Dishes INT PRIMARY KEY IDENTITY(1,1),
FK_Request INT REFERENCES Request(RK_Request),
FK_Dishes INT REFERENCES Dishes(RK_Dishes)
)

CREATE TABLE Drink (
RK_Drink INT PRIMARY KEY IDENTITY(1,1),
[Name] NVARCHAR(100),
Cost MONEY
)

CREATE TABLE Request_Drink (
RK_Request_Drink INT PRIMARY KEY IDENTITY(1,1),
FK_Request INT REFERENCES Request(RK_Request),
FK_Drink INT REFERENCES Drink(RK_Drink)
)



