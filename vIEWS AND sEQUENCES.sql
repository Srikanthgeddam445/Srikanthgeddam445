

Create Database Gaddams

Use Gaddam
Go

Create View Emp AS
Select id,name,salary,departmentno From EMployee

Select * From Emp1

Select * From EMployee

Create View Emp1 AS 
Select id,name,salary,departmentname From EMployee Join 
department on  department.departmentno=EMployee.departmentno

Select * From EMployee
Select * From Department

Select Departmentname,Min(salary) As MinSal,
                       Max(salary) As Maxsal,
				       Sum(salary) As Totsal,
					   Count(*) As COunt
From EMployee Join Department on Department.departmentno = EMployee.departmentno
Group by Departmentname


Create View Emp3
AS
Select Departmentname,Min(salary) As MinSal,
                       Max(salary) As Maxsal,
				       Sum(salary) As Totsal,
					   Count(*) As COunt
From EMployee Join Department on Department.departmentno = EMployee.departmentno
Group by Departmentname

Select * From Emp3

Drop View Emp3
Select * From INFORMATION_SCHEMA.views



Create View EMp4
With SchemaBinding
as
Select Departmentno,Departmentname From Dbo.Department

Select * FRom EMp4

Drop Table EMp4

Select User_name()


Create Sequence S1
Start with 1 
Increment By 1
Maxvalue 5

Select * From  Sequence S1


Create Table Stu
(
Id Int,
Name Varchar(10)
)

Insert Into Stu values(Next Value For S1,'A')
Insert Into Stu values(Next Value For S1,'B')
Insert Into Stu values(Next Value For S1,'C')
Insert Into Stu values(Next Value For S1,'D')
Insert Into Stu values(Next Value For S1,'E')
Insert Into Stu values(Next Value For S1,'F')

Select * From Stu

Create Sequence S2
Start With 2
increment by 5
Maxvalue 25


Create Table Stud
(
Id Int,
Name Varchar(10)
)
Insert Into Stud values(Next Value For S2,'A')
Insert Into Stud values(Next Value For S2,'B')
Insert Into Stud values(Next Value For S2,'C')
Insert Into Stud values(Next Value For S2,'D')
Insert Into Stud values(Next Value For S2,'E')
Insert Into Stud values(Next Value For S2,'F')

Select * FROm Stud


Select * From Employee

Create Sequence S3
Start with 100
Increment by 1
Maxvalue 999

Update Employee
Set  id= Next Value For S3

Create table Invoice
(
Invoiceno Varchar(50),
Invoicedate Datetime
)

Create Sequence s4
Start with 1
increment by 1
maxvalue 999

Alter Table Invoice
Add Invoiceno Bigint
Insert into Invoice Values('HONDA/'+FORMAT(GETDATE(),'MMyy')+'/'+ Cast(Next value for s4 As Varchar),Getdate())

Insert into Invoice Values ('Hero/'+Format(getdate(),'MMyy')+'/'+Cast(Next value for s4 As Varchar),Cast(Getdate() As Date))

 
 Select * From Invoice

 Select Lower(Invoiceno),Invoicedate From Invoice

 Select Upper(Invoiceno),Invoicedate From Invoice



 
 Select Upper(Substring(Invoiceno,1,1)),Invoicedate From Invoice

 SELECT UPPER(Substring('Srikanth', 1, 1)) || LOWER(Substring('Srikanth', 2)) AS formatted_name
FROM dual;

Select Upper(Left(Invoiceno,1)+Lower(Substring(Invoiceno,2,len(Invoiceno)-1))),Invoicedate From Invoice
SELECT 
    CONCAT(UPPER(LEFT(Invoiceno, 1)), LOWER(SUBSTRING(Invoiceno, 2))) AS formatted_invoiceno,
    Invoicedate
FROM Invoice;

SELECT CONCAT(UPPER(LEFT('Srikanth', 1)), LOWER(SUBSTRING('Srikanth', 2,len('Srikanth')-1))) AS formatted_name;



SELECT CONCAT(UPPER(LEFT(invoiceno, 1)), LOWER(SUBSTRING(invoiceno, 2))) AS formatted_name,FROM Invoice;
SELECT UPPER(LEFT('Srikanth', 1)) + LOWER(SUBSTRING('Srikanth', 2, LEN('Srikanth') - 1)) AS formatted_name;



dROP Table St
CReate Sequence s6
START WITH 1
INCREMENT BY 1
Maxvalue 7
MinValue 1
cycle

Create Table St
(
Id Int,
Name Nvarchar(50)
)

sELECT * fROM INFORMATION_SCHEMA.SEQUENCES

Insert into St Values( Next Value for  s6,'A')
Insert into St Values( Next Value for  s6,'B')
Insert into St Values( Next Value for  s6,'C')
Insert into St Values( Next Value for  s6,'D')
Insert into St Values( Next Value for  s6,'E')
Insert into St Values( Next Value for  s6,'F')
Insert into St Values( Next Value for  s6,'G')
Insert into St Values( Next Value for  s6,'H')
Insert into St Values( Next Value for  s6,'I')
Insert into St Values( Next Value for  s6,'J')
Insert into St Values( Next Value for  s6,'K')

sELECT * fROM St

alTER sEQUENCE S6 RESTART WITH 1


Create Sequence s7
Start with 1
increment by 2
maxvalue  15



Create table EMpl
(
Id Int ,
Name Varchar(50)
)

Insert into EMpl Values ( next value for s7, 'S')

Select * From EMpl