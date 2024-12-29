Select GetDate()


Select Getdate() As Date 

Select Getdate() As Date

select Cast(Getdate() As time)

select * from Accounts

sELECT nAME,cONVERT(dATETIME,hIREDATE,102) fROM eMPLOYEES

sELECT nAME fORMAT(cONVERT(dATETIME,hIREDATE,102),hIREDATE,'MM-DD-YY') fROM eMPLOYEES


Select * From EMployees
Select Name , Convert(Varchar,salary,1000) As Sal From Employees

Select * From EMployees
Select Name ,Salary+ isnull(Dno,-1000) From EMployees

Select Name,Salary ,isnull(Dno,'NoComm') From EMployees


Select Name,Salary ,isnull(Cast(Dno As Nvarchar),'NoComm') From EMployees


Select Name,Salary, Rank()Over( Order By Salary  asc) AS SAL,
DENSE_Rank()Over( Order By Salary asc ) AS SAL2 From EMployees


Select Name,Salary, DENSE_Rank()Over( Order By Salary ASC) AS SAL From EMployees

Select Name,Salary, Row_number()Over( Order By Salary ASC) AS SAL From EMployees

sELECT * fROM emPLOYEES

uPDATE emPLOYEES
set empid= 108  wHERE nAME = 'hARIK'

iNSERT INTO EMPLOYEES(NAME,sALARY) 
            vaLUES ('vENKI',20000)
iNSERT INTO EMPLOYEES(NAME,sALARY) 
            vaLUES ('hARIK',25000)

			sELECT NAME,SALARY,HIREDATE,Dno, rANK() oVER(ORDER By SALARY desc ,hiREDATE asc) as rANKS
			fROM emPLOYEES
sELECT * fROM Employees

Select Name, Salary,dno,Rank() Over(Order By Salary DESC) as rANKS1,Dense_Rank() Over(Order By Salary DESC),Dense_Rank() Over(Partition By Salary Order by Salary DESC ) as rANKS3,
Row_number() Over(Order by Salary 
 ) as rANKS3
			fROM employees


Select EMPID,name,Salary,Lag(Salary,3) Over (order by Name DESC) AS SAL fROM emPLOYEEs

Select EMPID,name,Salary,Lead(Name,1) Over (order by SAlary DESC) AS NextGettingsalaries fROM emPLOYEEs


Select EMPID,name,Salary,LEAD(Salary,0) Over (order by SALARY DESC) AS SAL fROM emPLOYEEs



Select Name,Salary,Hiredate,Dno,Dense_rank() Over(Partition BY Dno Order by Salary desc) As Rank From emPLOYEES


Select Name,Salary,Dense_rank() Over (Order by salary DEsc) AS Rank From EMployees where Salary > 3

SELECT Name,
       Salary,
       Row_number() OVER (ORDER BY Salary DESC) AS Rank
FROM Employees
WHERE Salary > 3;


with  RankedEMployees
FRom
(
Select Name,Salary,Row_number() Over (Order by salary ASC) AS Rank From EMployees where Salary > 3
)
Select Name,Salary From RankedEMployees 
WHERE Salary = 3;


SELECT Name, Salary
FROM Employees
WHERE Salary > 3
ORDER BY Salary DESC
LIMIT 1 OFFSET 2;

