

EMpid
name 
job
salary
hiredate
Dno


Create Table Employees
(
EmpId Int,
Name Varchar(50),
Job Varchar(50),
Salary Int,
Hiredate Varchar(60),
Dno Int
)


Insert Into Employees Values(101,'Sree','IT',20000,'01-01-2020',10)
Insert Into Employees Values(102,'Venkat','HR',18000,'01-01-2019',05)
Insert Into Employees Values(103,'Siri','Admin',25000,'01-01-2021',15)
Insert Into Employees Values(104,'Pavan','Team Lead',22000,'01-01-2022',25)
Insert Into Employees Values(105,'Rajesh','Cheff',24000,'01-08-2021',35)
Insert Into Employees Values(106,'Hari','Sales',21000,'01-07-2022',NULL)



Select * From Employees

Select * From Employees Where Name Like 'S%'
Select * From Employees Where Name Like '%S%'
Select * From Employees Where Name Not Like '[____]%'
Select * From Employees Where Name NOT Like '[aeiou]%'
Select * From Employees Where Name Like '[A-p]%'
Select * From Employees Where Hiredate Like '%2020%'


Select * From Employees Where Dno Is NULL


SeleCt name,Salary,Salary*0.2 as Hra,Salary*0.3 as Da,
 Salary* 0.1 as Tax, Salary+(Salary*0.2)+(Salary*0.3) -(Salary*0.1) As Total From EMployees


 Select *  From EMployees

 Select * From Employees Order By 2 ASC , 3 DESC

 Select Top 4 * From Employees order By Salary Asc