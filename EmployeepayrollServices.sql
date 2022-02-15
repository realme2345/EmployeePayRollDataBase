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







