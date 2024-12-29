Create Table Employee
(
Id Int,
Name Varchar(50),
Departmentno int,
Phoneno Bigint,
Hiredate Datetime,
Salary Int
)

Create Table Department
(
Departmentno Int,
Departmentname Varchar(50)
)

Insert into Employee Values(1,'Sree',101,9177075452,'1982-01-01',40000)

Insert into Employee Values(2,'Venkat',102,9985005555,'1982-05-08',35000)

Insert into Employee Values(3,'Sahithi',103,9160245678,'1983-06-05',35000)

Insert into Employee Values(4,'Siri',104,9705677774,'1990-08-02',30000)
Insert into Employee Values(5,'Naresh',102,9705277774,'1992-06-02',30000)
Insert into Employee Values(6,'Suresh',101,9642835345,'1992-08-07',36000)
Insert into Employee Values(7,'Pavan',103,9391702981,'1993-07-06',20000)

Select * from Employee
Select * from Department

DRop table Employee

Insert Into Department Values(101, 'IT'),(102,'HR'),(103,'Admin'), (104,'Other')


Select * From Employee

ALTER Table Employee
Add EMail Varchar(50)

Select Hiredate,Datepart(yy,hiredate) As Year, LEFT(CAST(hiredate AS DATE),4) AS YAER,LEFT(CONVERT(DATE,hiredate),4) aS YAER2
FRom Employee


UPDATE Employee
SET EMAIL = lEFT(NAME,4)+Left(phoneno,3)+'@siri.com'


sELECT *,ISNULL(EMAIL,'') as mmmm fROM EMPLOYEE 
where  EMAIL  IS NULL

Select Name,departmentn,salary,email from employee  
join Department on Department.departmentno= employee.Departmentno