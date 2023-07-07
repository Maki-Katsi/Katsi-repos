CREATE DATABASE Katsi;

create table Employe(
employeeID int identity(1,1) primary key not null,
Salary int 
);
insert into Employe values (100),
                         (200),
						 (300);
						 						
SELECT MAX(Salary) AS SecondHighestSalary FROM Employe WHERE Salary <(SELECT MAX(Salary)FROM Employe);

create table person(
personID int identity(1,1) primary key not null,
Email char(25) 
);


insert into person values ('a@b.com'),
                         ('c@d.com'),
						 ('a@b.com')
						;

SELECT Email FROM person GROUP BY Email HAVING COUNT(Email) > 1;
