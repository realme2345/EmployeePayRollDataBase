/* UC1 creating database */
create database Employeepayroll_services
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

INSERT INTO EmployeeInfo(EmpId,CompanyId,EmpName,Empphno,StartDate)
values(2013345,2022,'Nari',8919803447,'10-6-2019'),
values(2018336,2022,'Nagi',9242834647,'11-4-2018'),
values(2018345,2022,'pavan',9242834547,'5-6-2019');
SELECT * FROM EmployeeInfo

INSERT INTO  DepartmentInfo(DepartId,EmpId,DepertName)
values(8,2013345,'tester');
SELECT * FROM DepartmentInfo

INSERT INTO payroll_Emp(RFERId,EmpId,Basicpay,Deduction,Tax,Incometax,Netpay)
values(11025,2018345,50000,2000,2000,1500,450000);
values(11023,2013345,50000,2000,2000,1500,450000);
SELECT * FROM payroll_Emp


