/* UC1 creating database */
create database Employeepayroll_services
/* UC2 creating Table for Employee  */
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