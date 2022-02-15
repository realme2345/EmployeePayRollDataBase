/* UC1 creating database */
create database Employeepayroll_services
/* UC2 creating Table for Employee  */
create table Employeepayroll(
Id int IDENTITY(1,1) PRIMARY KEY,
Name varchar(200),
Salary float,
StartDate Date
);
