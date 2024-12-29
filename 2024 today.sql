

Create Table Employee
(
Id Int,
Name Varchar(50),
phone Bigint,
Salary INT,
Hiredate Datetime,
Departmentno Int
)

Create Table Department
(
Departmentno Int,
Departmentname Varchar(50)
)

Insert Into Employee Values(1,'Sree',9177075452,25000,'1990-05-08',101)
Insert Into Employee Values(2,'Venkat',9985005555,15000,'1991-07-06',102)
Insert Into Employee Values(3,'Siri',9160245678,30000,'1990-08-05',101)
Insert Into Employee Values(4,'Sahithi',9705677774,26000,'1991-03-02',101)
Insert Into Employee Values(5,'Pavan',9705277774,15000,'1989-05-04',103)
Insert Into Employee Values(6,'Murali',9642835345,10500,'1990-07-10',102)
Insert Into Employee Values(7,'Lucky',9391702987,12300,'1996-08-12',103)
Insert Into Employee Values(8,'Kumari',8500160159,38000,'1993-03-22',102)
Insert Into Employee Values(9,'Rambabu',9550815490,50000,'1981-05-31',104)
Insert Into Employee Values(10,'Lakshmi',9581877787,null,'1990-02-08',102)
Insert Into Employee Values(11,'Naresh',9901048354,null,'1992-01-03',101)


Insert Into Department Values(101,'IT'),(102,'Admin'),(103,'HR'),(104,'CEO')

sELECT * From Employee
sELECT * From Department
Drop Table Employee

Select Name,Departmentname,Salary From Employee
Join Department On Department.Departmentno =Employee.departmentno

Alter Table Employee
add Email Nvarchar(50)

Update Employee
Set Email= Left(Name,4)+Left(Phone,3)+'@SOFT.COM'

SELECT * From Employee
SELECT * From Department

ALTER tABLE eMPLOYEE
aDD bANKACCOUNT bIGINT
uPDATE eMPLOYEE
SET bANKACCOUNT = '91'+LEFT(PHONE,10)



Where Hiredate Like '%1990%'


sELECT nAME,sALARY, pHONE,Left(Phone,3)+Replicate('*',Len(Phone)-6 )+ Right(Phone,3) aS fULLPHONE,eMAIL, 
rEPLICATE('*',LEN(sUBSTRING(eMAIL,1,cHARINDEX('@',eMAIL)-1)))+
substring(Email,Charindex('@',email),Len(email)) As Mail1, 
eMAIL, substring(Email,1,Charindex('@',email))+
rEPLICATE('*',LEN(sUBSTRING(eMAIL,cHARINDEX('@',eMAIL)+1,Len(email)))) As Mail2, bANKACCOUNT,tRANSLATE(BANKACCOUNT,'0123456789','!@#$%^&*()') aS eNCRTYPTED 
From EMployee 







Select Email, Replicate('*',Len(substring(Email,1,Charindex('@',email)-1)))+
substring(Email,Charindex('@',email),Len(email)) As Mail2 From EMployee

Select  Email, Substring(EMail,1,Charindex('@',Email))+
Replicate('*',Len(Substring(EMail,Charindex('@',Email)+1,Len(email)))) From EMployee

Select Email,Replicate('*',Len(Substring(Email,1,Charindex('@',email)-1)))+Substring(Email,Charindex('@',email),Len(Email)) From EMployee

Select Email, Substring(email,1,CharIndex('@',Email))+REplicate('*',Len(substring(Email,Charindex('@',Email)+1,Len(email)))) From EMployee

Select Mailid,Replicate('*',len(Substring(Mailid,1,Charindex('@',MailId)-1)))+Substring(Mailid,Charindex('@',MailId),Len(Mailid)) As Mail1,
 Substring(Mailid,1,Charindex('@',MailId))+Replicate('*',len(Substring(Mailid,Charindex('@',MailId)+1,Len(mailid)))) ,amounts
  From Accounts

sELECT * From Employee
sELECT * From Department

Select Salary,Isnull(salary,'5000') As S2 From employee

Select Name From Employee Where Name Like 'S%'


Select Departmentno From EMployee
Join Department on Department.Departmentno = EMployee.DepartmentNo


Select Cast(phone As Nvarchar(50)) As PHOneno From Employee

Select Convert(Datetime,hiredate,3) From EMployee

Select Cast(Getdate() As Time)


Select Max(salary) from Employee

Select Min(salary) from Employee

Select TOP 3 SALARY fROM EMPLOYEE oRDER BY sALARY asc

sELECT mAX(SALARY) fROM EMPLOYEE
wHERE SALARY < (sELECT mAX(sALARY) fROM eMPLOYEE 
wHERE SALARY < (sELECT mAX(sALARY) fROM eMPLOYEE )); oRDER BY SALARY dESC



Select Max(Salary) From Employee
Where Salary < (Select Max(salary) From EMployee
where Salary < (Select Max(salary) From EMployee
where Salary < (Select Max(salary) From EMployee)));

Select name ,Salary From EMployee 
Where Salary In ( Select Salary From EMployee Where Salary < 50000);

Select name ,Salary From EMployee 
Where Salary In ( Select Salary From EMployee Where Salary Between 10000 and 30000);


Select name ,Salary From EMployee 
Where Salary In ( Select Salary From EMployee Where Salary = 10000 OR Salary = 30000);

Select name ,Salary From EMployee 
Where Salary In ( Select Salary From EMployee Where Salary = 10000 And Salary = 50000);

Select name ,Salary From EMployee 
Where Salary In(10000,30000)

Select Name, Salary,Departmentname, Salary*.2 As Hra,Salary*.4 As Pf,Salary*.8 As Tds, Salary-(Salary*.2+Salary*.4 -Salary*.8) As FullSalary From EMployee 
Join Department On Department.Departmentno = EMployee.Departmentno

Select Name, Salary,Departmentname, Salary-(Salary*.2) As Hra,Salary-(Salary*.4) As Pf,Salary-(Salary*.8 )As Tds, Salary-(Salary*.2+Salary*.4 -Salary*.8) As FullSalary From EMployee 
Join Department On Department.Departmentno = EMployee.Departmentno


Select Name,Hiredate,Datepart(dw,Hiredate,104) fROM eMPLOYEE

 sELECT Name,Hiredate,dATEPART(DW,GETDATE()),hIREDATE fROM emPLOYEE

 sELECT nAME,hIREDATE,sALARY,dATEPART(dW,hIREDATE) aS DAYS fROM eMPLOYEE
 sELECT nAME,hIREDATE,sALARY,dATENAME(dW,hIREDATE) aS DAYS fROM eMPLOYEE
  sELECT nAME,hIREDATE,sALARY,dATEPART(YY,hIREDATE) aS DAYS fROM eMPLOYEE
 sELECT nAME,hIREDATE,sALARY,dATENAME(YY,hIREDATE) aS DAYS fROM eMPLOYEE
  sELECT nAME,hIREDATE,sALARY,dATEPART(HH,hIREDATE) aS DAYS fROM eMPLOYEE
 sELECT nAME,hIREDATE,sALARY,dATENAME(HH,hIREDATE) aS DAYS fROM eMPLOYEE




 SELECT DATEPART(DW, HIREDATE - GETDATE()) 
FROM EMPLOYEE;
 sELECT dATEPART(dW,HIREDATE-GETDATE()) fROM emPLOYEE

 sELECT AVG(SALARY) fROM emPLOYEE

 sELECT mIN(SALARY),mAX(SALARY),aVG(SALARY) fROM emPLOYEE

 SELECT * fROM emPLOYEE wHERE hIREDATE bETWEEN '1990-01-01' AND '2000-01-01'

 sELECT dATENAME(YY,'1947-08-15')


 sELECT nAME,dEPARTMENTNAME  fROM emPLOYEE jOIN dEPARTMENT ON dEPARTMENT.dEPARTMENTno = eMPLOYEE.dEPARTMENTno
oRDER BY dEPARTMENTNAME desc

sELECT * fROM emPLOYEE
wHERE dEPARTMENTNO = 101
oRDER BY dEPARTMENTNO 


sELECT nAME,sALARY,dEPARTMENTNO, ROW_NUMBER() oVER(oRDER BY dEPARTMENTNO) fROM emPLOYEE

sELECT nAME,sALARY,dEPARTMENTNO, ROW_NUMBER() oVER(pARTITION BY dEPARTMENTNO oRDER BY dEPARTMENTNO) fROM emPLOYEE
sELECT nAME,Salary,dEPARTMENTNO,Dense_rank() Over(order by dEPARTMENTNO) fROM emPLOYEE
sELECT nAME,Salary,dEPARTMENTNO,ROW_NUMBER() Over(order by dEPARTMENTNO) fROM emPLOYEE
sELECT nAME,Salary,dEPARTMENTNO,Rank() Over(order by Salary DESC) fROM emPLOYEE
sELECT nAME,Salary,dEPARTMENTNO,Dense_rank() Over(order by Salary DESC) fROM emPLOYEE
sELECT nAME,Salary,dEPARTMENTNO,ROW_NUMBER() Over(order by Salary DESC) fROM emPLOYEE



 

With RankedSalaries
As
(
Select Name,salary,Dense_Rank() Over (order by Salary Desc) As Rank From Employee
)
Select * From RankedSalaries
Where Rank >= 3;

With RankedSalaries
As
(
Select Name,salary,Row_number() Over (order by Salary Desc) As Rank From Employee
)
Select * From RankedSalaries
Where Rank >= 3;

With RankedSalaries
As
(
Select Name,salary,Rank() Over (order by Salary Desc) As Rank From Employee
)
Select * From RankedSalaries
Where Rank >= 3;


Select Name,Salary,Lag(salary,1) Over (ORDER BY SALARY dESC) as sal From Employee
Select Name,Salary,lEAD(salary,2) Over (ORDER BY SALARY dESC) as sal From Employee

sELECT sUM(SALARY) fROM emPLOYEE
sELECT rOUND(sUM(SALARY),0) FROM emPLOYEE
sELECT avg(SALARY) FROM emPLOYEE

sELECT nAME,sALARY, cONVERT(nVARCHAR,sALARY,-2) fROM emPLOYEE

sELECT rOUND(cEILING(aVG(SALARY)),-2) fROM eMPLOYEE


seLECT sALARY fROM EMPLOYEE jOIN dEPARTMENT ON DEPARTMENT.Departmentno
=eMPLOYEE.Departmentno WHERE dEPARTMENTNAME ='it'

sELECT aVG(SALARY) as hr fROM eMPLOYEE jOIN dEPARTMENT ON DEPARTMENT.Departmentno
=eMPLOYEE.Departmentno WHERE dEPARTMENTNAME ='HR' 
OR dEPARTMENTNAME = 'CEO'

sELECT cOUNT(sALARY) fROM emPLOYEE wHERE hIREDATE lIKE '%1990%'

sELECT cOUNT(*) fROM EMPLOYEE wHERE hIREDATE bETWEEN '1990-01-01' AND '2000-01-01'

sELECT cOUNT(*) fROM EMPLOYEE wHERE dATEPART(YY,hiredate) = 1990

sELECT cOUNT(*) fROM EMPLOYEE wHERE dATENAME(dW,hiredate) = 'friDAY'
sELECT * fROM EMPLOYEE wHERE dATEPART(YY,hiredate) = 1991
aND dATEPART(Q,hiredate) = 1


sELECT rEPLACE( 'hELLO WORLD','WORLD','SIRI') frOM emPLOYEE
SELECT TRANSLATE(BANKACCOUNT,'0123456789','!@#$%^&*()') frOM emPLOYEE
sELECT * fROM emPLOYEE

sELECT sALARY,cAST(sALARY aS BIGInt) fROM emPLOYEE
sELECT cONVERT(BIGINT,sALARY) fROM emPLOYEE

Select Name,Salary,Departmentname,hiredate From EMployee 
Join Department on
Department.Departmentno = EMployee.Departmentno
Where Departmentname = 'It' or Departmentname = 'HR'
And Hiredate Between '1990-01-01' and '2000-01-01' 
Group by Name,Hiredate,Salary,Departmentname
Having Salary >=10000
Order By SAlary DESC





sELECT dATEDIFF(QQ,'1990-01-01','2000-01-01') fROM emPLOYEE
sELECT dATEADD(qq,2,'2000-01-01') FROM emPLOYEE

Select DateNAME(DD,HIREDATE-gETDATE()) fROM eMPLOYEE

sELECT hIREDATE ,DateNAME(MM,HIREDATE-gETDATE()) fROM eMPLOYEE
sELECT hIREDATE ,dATEDIFF(DD,HIREDATE,gETDATE()) fROM eMPLOYEE

sELECT hIREDATE ,dATEDIFF(YY,HIREDATE,gETDATE())as yEARS, 
dATEDIFF(MM,HIREDATE,gETDATE())%12 as mONTHS fROM eMPLOYEE


sELECT ('Srikanth Geddam') As Name,DATEDIFF(YY,'1992-08-05',gETDATE()) AS YEARS,
DATEDIFF(MM,'1992-08-05',gETDATE())%12 AS MONTHS,('05-08-1992') AS DOB




With Rankedsalaries
As
(
Select Name,Salary,Departmentname,Row_number() over (Partition By Departmentname order by salary desc) as Rank From EMployee Join
Department On Department.Departmentno = Employee.Departmentno
)
Select * From Rankedsalaries 
where Rank = 3;


			  With Rankedsalaries
						  As
						  (
						  Select Salary,Rank()Over (order by Salary DESC ) AS Ranks From employee
						  )
						  Select * From Rankedsalaries 
						  Where Ranks > 2;

			  With Rankedsalaries
						  As
						  (
						  Select Salary,Dense_rank()Over (order by Salary DESC ) AS Ranks From employee
						  )
						  Select * From Rankedsalaries 

			
			  With Rankedsalaries
						  As
						  (
						  Select Salary,Row_number()Over (order by Salary DESC ) AS Ranks From employee
						  )
						  Select * From Rankedsalaries 

	  With Rankedsalaries
						  As
						  (
						  Select Departmentname,Salary,Row_Number()Over (Partition by Departmentname order by Salary DESC ) AS Ranks From employee join
						  Department On Department.Departmentno = EMployee.Departmentno
						  )
						  Select * From Rankedsalaries 
						  Where Ranks > 2;

	  With Rankedsalaries
						  As
						  (
						  Select Departmentname,Salary,Dense_rank()Over (Partition by Departmentname order by Salary DESC ) AS Ranks From employee join
						  Department On Department.Departmentno = EMployee.Departmentno
						  )
						  Select * From Rankedsalaries 
						  Where Ranks > 2;



Select Name,salary,Departmentname,Hiredate,Count(*) as Count From EMployee
Join Department On Department.Departmentno = Employee.Departmentno
Group by Name,salary,Departmentname, hiredate
Having Salary >=20000 Order by salary desc



Select Datename(yy,hiredate) As Date,Count(*) From EMployee
Group By Datename(yy,hiredate)



Select Name,salary,Departmentname,Hiredate,Count(*) as Count From EMployee
Join Department On Department.Departmentno = Employee.Departmentno
Where Departmentname in('IT','HR')
Group by Name,salary,Departmentname, hiredate
Having sUM(SALARY)>10000
oRDER bY SALARY desc


Select Name,salary,Departmentname,Hiredate,Count(*) as Count From EMployee
Join Department On Department.Departmentno = Employee.Departmentno
Where Departmentname = 'IT'or Departmentname ='HR'
Group by Name,salary,Departmentname, hiredate
Having sUM(SALARY)>10000
oRDER bY SALARY desc

sELECT dEPERTMENTNAME,SUM(salary) As total From Employee
Join Department On Department.Departmentno = Employee.Departmentno
Where Departmentname = 'IT'or Departmentname ='HR'
Group by Departmentname
Having SUM(SALARY)>10000

Select Departmentno,AVG(salary) As total 
From Employee
Where Departmentno in (101,102,103,104)
Group by Departmentno
Having avg(SALARY) > 10000;

SELECT Departmentno, SUM(salary) AS total 
FROM Employee
WHERE Departmentno IN (101, 104)
GROUP BY Departmentno
HAVING SUM(salary) > 10000;

Select Datepart(YY,HIREDATE) aS yEAR,
       Datepart(Q,HIREDATE) as QUART,cOUNT(*) AS cOUNT
fROM emPLOYEE
gROUP BY Datepart(YY,HIREDATE),Datepart(Q,HIREDATE)
oRDER BY Datepart(Q,HIREDATE)  asc

sELECT dEPARTMENTNAME,sALARY,sUM(sALARY) fROM emPLOYEE
jOIN  Department on Department.DepartmentNO=emPLOYEE.DepartmentNO
WHERE DEPARTMENTNAME = 'IT' or DEPARTMENTNAME = 'HR'
gROUP BY rOLLUP(dEPARTMENTNAME,sALARY);

sELECT dEPARTMENTNAME,sALARY,sUM(sALARY) fROM emPLOYEE
jOIN  Department on Department.DepartmentNO=emPLOYEE.DepartmentNO
WHERE DEPARTMENTNAME = 'IT' or DEPARTMENTNAME = 'HR'
gROUP BY cube(dEPARTMENTNAME,sALARY)
oRDER bY 1 asC


sELECT name,Departmentname,Case Departmentname
                                When 'It' Then 'Software'  
                                when  'Hr' Then 'Job Offer'
								When 'Admin' Then 'network'  
                                when  'Ceo' Then 'Boss'
								else 'Employees'
								End AS Departmentname
From EMployee jOIN  Department on Department.DepartmentNO=emPLOYEE.DepartmentNO

sELECT name,Departmentname, Salary,Case dEPARTMENTNAME
								wHEN 'It' THEN sALARY+ SALARY*0.1
                                when  'Hr' THEN sALARY+ SALARY*0.15
								When 'Admin' THEN sALARY+ SALARY*0.12 
                                when  'Ceo' THEN sALARY+ SALARY*1.00
								else 'Employees'
								End AS Increment,
								Case
                                      When Salary Is Null Then 20000
									  Else Salary
									  End As increment
From EMployee jOIN  Department on Department.DepartmentNO=emPLOYEE.DepartmentNO



Select Name,Departmentname,Salary,Case
             when Salary is Null Then 20000
             When Departmentname = 'It' Then sALARY+ SALARY*0.1 
			 When Departmentname = 'HR' Then sALARY+ SALARY*0.15
			 When Departmentname = 'Admin' Then sALARY+ SALARY*0.20 
             When Departmentname = 'Ceo' Then sALARY+ SALARY*1.00
			 else 'Employees'
			End AS Increment 
From EMployee jOIN  Department on Department.DepartmentNO=emPLOYEE.DepartmentNO

select * from 





Select E.Name, d.Departmentname,e.Salary , Case
                                      When e.Salary Is Null Then 20000
									  Else e.Salary
									  End As increment
From EMployee E jOIN  Department D on D.DepartmentNO=E.DepartmentNO;

Select  e.name,
    d.Departmentname, 
    e.Salary,
    CASE 
        WHEN e.Salary IS NULL THEN 20000  -- If Salary is NULL, set to 20000
        ELSE e.Salary  -- Keep the original Salary if it's not NULL
    END AS incre
FROM Employee e
JOIN Department d ON d.DepartmentNO = e.DepartmentNO;




SELECT 
    e.name,
    d.Departmentname, 
    e.Salary,
    CASE 
        WHEN d.Departmentname = 'It' THEN e.Salary + e.Salary * 0.10
        WHEN d.Departmentname = 'Hr' THEN e.Salary + e.Salary * 0.15
        WHEN d.Departmentname = 'Admin' THEN e.Salary + e.Salary * 0.12
        WHEN d.Departmentname = 'Ceo' THEN e.Salary + e.Salary * 1.00
        WHEN e.Salary IS NULL THEN 20000  -- If Salary is NULL, set to 20000
        ELSE e.Salary  -- Keep original salary for other cases
    END AS Increment
FROM Employee e
JOIN Department d ON d.DepartmentNO = e.DepartmentNO;

sELECT nAME,sALARY, cASE
                  wHEN sALARY iS nULL tHEN 20000
				  wHEN DepartmentNAME = 'it' tHEN sALARY+sALARY*0.5
				  wHEN DepartmentNAME = 'hR' tHEN sALARY+sALARY*0.5
				  wHEN DepartmentNAME = 'admin' tHEN sALARY+sALARY*0.5
				  wHEN DepartmentNAME = 'Ceo' tHEN sALARY+sALARY*0.1
				  ELse Salary
				  End as Increment
				 From EMployee jOIN  Department on Department.DepartmentNO=emPLOYEE.DepartmentNO


				 sELECT sALARY  fROM emPLOYEE  oRDER bY sALARY desc
				 Select Salary From Employee Where
				Salary  = (SElect Max(salary) From EMployee 
				          where salary < (SElect Max(salary) From EMployee));


			
						  
