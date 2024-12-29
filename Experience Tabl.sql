Use Gaddam	
Go

Create Table emp
(
Emp Int,
Name Varchar(50),
Job Varchar(50),
Manager Int,
Hiredate Varchar(50),
Sal Int,
Comm Int
)

Insert Into EMp Values(1010,'Sree','IT',1015,'01-08-1992',20000,1000)
Insert Into EMp Values(1011,'Venkat','Sales',1018,'05-08-1993',15000,Null)
Insert Into EMp Values(1012,'Siri','Hr',1017,'05-06-1994',20000,1000)
Insert Into EMp Values(1013,'Suresh','Admin',1018,'07-08-2000',10000,Null)
Insert Into EMp Values(1014,'Naresh','IT',1014,'11-02-1985',40000,1000)
Insert Into EMp Values(1015,'Pavan','Manager',1017,'06-08-1980',50000,1000)
Insert Into EMp Values(1016,'Sahithi','President',NULL,'08-06-1970',100000,Null)
Insert Into EMp Values(1017,'Lakshmi','Manager',1015,'01-04-1985',45000,1000)
Insert Into EMp Values(1018,'Mani','Manager',1017,'05-03-1987',40050,Null)

Select * From EMp


Select Name,
       Datediff(MM,HIredate,Getdate())/12 as Years,
	   Datediff(MM,HIredate,Getdate())%12 as Months
	   From EMp

Select Name,Sal,Sal*0.2 As Hra, Sal* 0.4  As Pf, Sal* 0.6 As Tax,Sal+Sal*0.2+Sal* 0.4+Sal* 0.6 As Total FRom EMp
  
  Select Name ,Salary From EMp

  Set IMPLICIT_Transactions Off

  Begin Tran
  Update Emp Set Comm=3000 Where EMp = 1010
  Rollback tran
  Select * From EMp
  Commit
  Rollback



