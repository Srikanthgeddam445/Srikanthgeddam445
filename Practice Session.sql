Declare @X Varchar(50),@Id int
Set @x ='RAMBABU'
sET @ID = 1
WHILE (@ID<=lEN(@X))
bEGIN
PRINT SUBSTRING(@X,@ID,1)
SET @ID=@ID+1
eND

Declare @X Varchar(50),@Id int
Set @x ='RAMBABU'
sET @ID = 1
WHILE (@ID<=lEN(@X))
bEGIN
PRINT SUBSTRING(@X,1,@ID)
SET @ID=@ID+1
eND


dECLARE @A vARCHAR ='A' ,@B VARCHAR ='Z' ,@C INT =1
wHILE(ASCII(@A)<=aSCII(@b))
bEGIN
pRINT @A +  '='+ cAST(aSCII(@A) AS vARCHAR)
sET @A=chAR(aSCII(@A)+1)
eND

dECLARE @A INT =1 
whILE(@A<=20)
bEGIN
pRINT @A
sET @A=@A+1
eND

Select * from accounts

Declare @accno bigint,@amount int,@bal int ,@type VARCHAR
Set @accno =919177075452
set @amount =5000
set @type = 'd'
If @type = 'W'
begin
     SELECT @bal=bal FROM ACCOUNTS where accNO =@accNO
	 iF @AMOUNT>@BAL
	 PRINT 'INSUFFICINT FUNDS'
	  ELSE
	   UPDATE ACCOUNTS SET BAL= BAL-@AMOUNT WHERE ACCNO=@ACCNO
	   pRINT 'BALANCE DEBITED SUCCESS'
END
	   ELSE If @type = 'D'
	   BEGIN
        UPDATE ACCOUNTS SET BAL= BAL+@AMOUNT WHERE ACCNO=@ACCNO
        pRINT 'BALANCE CREDITED SUCCESS'
END
     ELSE
	 pRINT 'INVALID TRAN'


SELECT * FROM EMPLOYEE
SELECT * FROM Department

SELECT NAME,PHONE,SALARY,DEPARTMENTNAME FROM EMPLOYEE
JOIN DEPARTMENT ON DEPARTMENT.Departmentno= EMPLOYEE.Departmentno

SELECT NAME,PHONE,lEFT(PHONE,3)+REPLICATE('*',LEN(PHONE)-4)+RIGHT(PHONE,3) AS PHONENO FROM EMPLOYEE

sELECT NAME,departmentname,salary,EMAIL,lEFT(EMAIL,3)+REPLICATE('*',LEN(EMAIL)-11)+RIGHT(EMAIL,3) AS EMAIL1,
REPLICATE('*',LEN(SUBSTRING(EMAIL,1,CHARINDEX('@',EMAIL)-1)))+
SUBSTRING(EMAIL,CHARINDEX('@',EMAIL),LEN(EMAIL)) AS EMAIL2,
SUBSTRING(EMAIL,1,CHARINDEX('@',EMAIL))+REPLICATE('*',LEN(SUBSTRING(EMAIL,CHARINDEX('@',EMAIL)+1,LEN(EMAIL)))) AS EMAIL3,
Bankaccount,left(bankaccount,4)+replicate('*',len(bankaccount)-8)+Right(bankaccount,4) as bank,
translate(bankaccount,'0123456789','!@#$%^&*()') as encrpt FROM EMPLOYEE JOIN DEPARTMENT 
ON DEPARTMENT.Departmentno= EMPLOYEE.Departmentno


Select * from Employee
Select name,phone,salary,DEPARTMENTname,case DEPARTMENTname
                          when 'IT'   then salary+salary*0.1
						  when 'hr'   then salary+salary*0.2
						  when 'ceo'   then salary+salary*1.0
						  when 'admin'   then salary+salary*0.5
						  else 'employees'
						  end as Increment
FROM EMPLOYEE JOIN DEPARTMENT 
ON DEPARTMENT.Departmentno= EMPLOYEE.Departmentno

Select name,phone,salary,DEPARTMENTname,case 
                          when Salary is null then 20000
                          when DEPARTMENTname ='IT'   then salary+salary*0.1
						  when DEPARTMENTname = 'hr'   then salary+salary*0.2
						  when DEPARTMENTname = 'ceo'   then salary+salary*1.0
						  when DEPARTMENTname = 'admin'   then salary+salary*0.5
						  else 'employees'
						  end as Increment
FROM EMPLOYEE JOIN DEPARTMENT 
ON DEPARTMENT.Departmentno= EMPLOYEE.Departmentno
where departmentname = 'it' or departmentname = 'Admin'




Select name, Salary from employee order by salary desc

Select name , salary from employee where salary =(Select max(salary) from EMployee)

Select name , salary from employee where salary =(Select max(salary) from EMployee 
                                   where Salary <(Select max(salary)From employee
								   where Salary <(Select max(salary)From employee)))

Select name , salary from employee where salary =(Select min(salary) from EMployee 
                                   where Salary >(Select min(salary)From employee
								   where Salary >(Select min(salary)From employee)))

Select name , salary from employee where salary = (Select max(salary)From employee)
                                   or Salary = (Select min(salary)From employee)


Create View EMp23 
as
SELECT NAME,PHONE,SALARY,DEPARTMENTNAME FROM EMPLOYEE
JOIN DEPARTMENT ON DEPARTMENT.Departmentno= EMPLOYEE.Departmentno

Select * From EMp23

Create View emp25
as
Select name,salary,Salary+salary*0.25 as sal2 From employee

Select * From emp25


Create view emp26 as
Select Departmentname,max(salary) as maxsal,
                    min(salary)  as minsal,
					sum(salary) as total,
					Count(*) as cou
 From EMPLOYEE
JOIN DEPARTMENT ON DEPARTMENT.Departmentno= EMPLOYEE.Departmentno
Group by Departmentname
order by cou asc

With Rankedsalaries
as
(
Select name,salary,departmentname,Dense_rank() over (partition by departmentname order by salary desc) as ranks from employee
JOIN DEPARTMENT ON DEPARTMENT.Departmentno= EMPLOYEE.Departmentno
)
Select name,salary,departmentname from Rankedsalaries
where Ranks=3



With Rankedsalaries
as
(
Select name,salary,departmentname,Dense_rank() over (partition by departmentname order by salary desc) as ranks from employee
JOIN DEPARTMENT ON DEPARTMENT.Departmentno= EMPLOYEE.Departmentno
)
Select name,salary,departmentname from Rankedsalaries
where Ranks>=1
Group BY name,salary,departmentname


With Rankedsalaries
as
(
Select name,salary,departmentname,rank() over (partition by departmentname order by salary desc) as ranks from employee
JOIN DEPARTMENT ON DEPARTMENT.Departmentno= EMPLOYEE.Departmentno
)
Select* from Rankedsalaries
where Ranks>=1


Select * From emp26
with rankedsalaries 
as
(
Select Salary,Rank()Over (Order by Salary ) as Ranks from employee
)
Select * from rankedsalaries
Where Ranks >=1

with rankedsalaries 
as
(
Select Salary,Dense_Rank()Over (Order by Salary ) as Ranks from employee
)
Select * from rankedsalaries
Where Ranks >=1

with rankedsalaries 
as
(
Select  Salary,Row_number()Over (Order by Salary) as Ranks from employee
)
Select * from rankedsalaries
Where Ranks >=1

Select Distinct Salary from employee
Create Table Employees
(
Id Int ,
Name Varchar(50),
Salary int
)

Insert Into Employees Values(100,'Sree',10000),(101,'Venkat',10000),(102,'Siri',25000),(103,'Sreekanth',25000),(104,'Kumar',30000),(105,'Kumari',300000),
(106,'Ram',40000),(106,'Rama',40000),(107,'Ramabau',40000),


Select * From Employees


With rankedsalaries as
(
Select salary ,Rank()over (order by salary ) as Ranks from employees
)
Select * From rankedsalaries
Where Ranks>=1

With rankedsalaries as
(
Select salary ,Row_number()over (order by salary ) as Ranks from employees
)
Select * From rankedsalaries
Where Ranks>=1

With rankedsalaries as
(
Select salary ,Dense_rank()over (order by salary ) as Ranks from employees
)
Select * From rankedsalaries
Where Ranks>=1


With rankedsalaries as
(
Select Distinct salary from employees
),
rankedsalaries2 as
(
Select salary ,Dense_rank()over (order by salary ) as Ranks from rankedsalaries
)
Select * From rankedsalaries2
Where Ranks>=1


With rankedsalaries as
(
Select Distinct salary from employees
),
rankedsalaries2 as
(
Select salary ,Rank()over (order by salary ) as Ranks from rankedsalaries
)
Select * From rankedsalaries2
Where Ranks>=1

Select Salary,Count(*) as Counts From EMployees
Group by Salary
Having Count(*)<=1


With rankedsalaries
as
(
select name,Departmentname,salary,rank()Over(partition By Departmentname order by salary) as Ranks From employee 
Join Department on department.Departmentno =Employee.Departmentno)
Select * From rankedsalaries
Where Ranks>=1
With rankedsalaries
as
(
select name,Departmentname,salary,Dense_Rank()Over(partition By Departmentname order by salary) as Ranks From employee 
Join Department on department.Departmentno =Employee.Departmentno)
Select * From rankedsalaries
Where Ranks>=1

With rankedsalaries
as
(
select name,Departmentname,salary,Row_number()Over(partition By Departmentname order by salary) as Ranks From employee 
Join Department on department.Departmentno =Employee.Departmentno)
Select * From rankedsalaries
Where Ranks<=1



Create table xy
(
id tinyint
)

Insert Into Xy values(256)


Create table xyz
(
id Smallint
)

Insert Into Xy values(39000)



