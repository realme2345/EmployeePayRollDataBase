/* UC1 creating database */
create database Employeepayrollservices
create table Employeepayroll(
Id int IDENTITY(1,1) PRIMARY KEY,
Name varchar(200),
Salary float,
StartDate Date
);
/*UC3-Insert a data into the table */
Insert into Employeepayroll(Name,Salary,StartDate)
values('Raja',339472,'5-6-2016'),
('Nari',567823,'3-7-2016'),
('Prabha',456735,'8-9-2017'),
('Nikkitha',458732,'10-4-2018'),
('Rasi',568239,'12-5-2019');
/* UC4-Retrieve the data from the table*/
SELECT * FROM Employeepayroll
/* UC-5 get the data of particular person from the table */
SELECT * FROM Employeepayroll where Name='Raja';
SELECT * FROM Employeepayroll where Id=2 or Id=5;
SELECT * FROM Employeepayroll where STARTDATE BETWEEN CAST('2016-05-06' as date) AND GETDATE();
/* UC6 Alter the new coloumn to the table */
Alter table Employeepayroll add Gender char;
UPDATE Employeepayroll SET Gender='F' where id=4 or Id=5;
SELECT * FROM Employeepayroll
/* Uc-7 performing sum avg and max and min salaries from the table */
SELECT SUM(Salary) as Totalsalary FROM Employeepayroll;
SELECT SUM(Salary) as Totalsalary, Gender FROM Employeepayroll group by Gender;
SELECT SUM(Salary) as Femalesalary FROM Employeepayroll where Gender='F';
SELECT SUM(Salary) as malesalary FROM Employeepayroll where Gender='M';
SELECT AVG(Salary) as Avgsalry FROM Employeepayroll;
SELECT MAX(Salary) as Maximumsalray FROM Employeepayroll;
SELECT MAX(Salary) as Maximumsalary, Gender FROM Employeepayroll group by Gender;
SELECT MIN(Salary) as Minimumsalray FROM Employeepayroll;
SELECT MIN(Salary) as Minimumsalary, Gender FROM Employeepayroll group by Gender;
/* UC-8 Add coloumn of department,ph num,Address */
Alter table Employeepayroll add Phnum bigint;
Alter table Employeepayroll add Department varchar(200) not null default 'Hr';
Alter table Employeepayroll add Address varchar(200) not null default 'HYd';
update Employeepayroll set Phnum=891987656;
SELECT * FROM Employeepayroll
update Employeepayroll set Department ='Tester' where Id IN (1,3,5);
update Employeepayroll set Address='VJW' where Id in (2,3);
/* UC-9 to get the Netpay salery of the Employee */
Alter table Employeepayroll add Deduction bigint,Taxable bigint not null default(15000),IncomeTax bigint not null default(12000);
Exec sp_rename 'Employeepayroll.Salary','Basepay','column';
update Employeepayroll set Deduction=8000;
Alter table Employeepayroll add Netpay bigint;
update Employeepayroll set Netpay=Basepay-Deduction;

/* Creating the table */
create table Companyname(
CompanyId int not null PRIMARY KEY,
ComapenyName varchar(200)
);

/* Creating Employee details table */
create table EmployeeInfo(
EmpId int not null PRIMARY KEY,
CompanyId int,
EmpName varchar(200),
EmpPhno bigint,
StartDate date
);
ALTER TABLE EmployeeInfo ADD CONSTRAINT FK_CompanyEmpInfo FOREIGN KEY (CompanyId) REFERENCES Companyname(CompanyId);

/* creating Department details */
create table DepartmentInfo(
DepartId int not null PRIMARY KEY,
EmpId int,
DepertName varchar(200),
);
Alter table DepartmentInfo add constraint FK_EmpDeprtInfo foreign key(EmpId)references EmployeeInfo(EmpId);

/* create a table for employee payroll */
create table payroll_Emp(
RFERId int not null PRIMARY KEY,
EmpId int,
Basicpay bigint not null,
Deduction bigint not null,
Tax  bigint not null,
Incometax bigint not null,
Netpay bigint not null
);
ALTER TABLE payroll_Emp ADD CONSTRAINT FK_PayrollEMp FOREIGN KEY(EmpId) REFERENCES EmployeeInfo(EmpId);
 /* Inserting the data into the tables */
 INSERT INTO Companyname(CompanyId,ComapenyName)
 values(2022,'Wipro');
 /*retrive the data */
INSERT INTO EmployeeInfo(EmpId,CompanyId,EmpName,Empphno,StartDate)values(2013345,2022,'Nari',8919803447,'10-6-2019'),(2018336,2022,'Nagi',9242834647,'11-4-2018'),(2018345,2022,'pavan',9242834547,'5-6-2019');
SELECT * FROM EmployeeInfo
/* retrive the data based on their date */
SELECT * FROM EmployeeInfo where STARTDATE BETWEEN CAST('11-4-2019' as date)AND getdate();
/* performing sum and avg and max and min */
SELECT SUM(Netpay) as Totalsum FROM payroll_Emp
SELECT MAX(Netpay) as Maxisalary FROM payroll_Emp
SELECT MIN(Netpay) as Minmumsalary FROM payroll_Emp


