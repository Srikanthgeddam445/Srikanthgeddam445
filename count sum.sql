Use Gaddam
Go

Select * From Employees

Select Round((salary),1) From Employees

sELECT MAX(sALARY) fROM EMPLOYEES wHERE sALARY < 
(sELECT MAX(sALARY) fROM EMPLOYEES wHERE sALARY <
(sELECT MAX(sALARY) fROM EMPLOYEES wHERE sALARY < 
(sELECT MAX(sALARY) fROM EMPLOYEES)));

Select Convert(INT,Round(sum(salary),-2),1) From Employees


WITH RankedSalaries AS (
  SELECT SALARY, ROW_NUMBER() OVER (ORDER BY SALARY asc) AS rank
  FROM EMPLOYEES
)
SELECT SALARY
FROM RankedSalaries
WHERE rank <= 3;

with rankedsalaries
as
(
Select salary,Row_number() Over (Order by salary desc) As Ranks From EMployees)
Select salary From RankedSalaries Where 
ranks<3

Select * From Employees

Select count(*) From EMployees
where Hiredate like '2022%'

Select count(*) From EMployees 
Where Datepart(YY,hiredate)=2022



sELECT CEILING(22020.02) fROM eMPLOYEES

sELECT aVG(sALARY) fROM EMPLOYEES WHERE JOB = 'IT'

sELECT * fROM EMPLOYEES
SELECT DISTINCT SALARY
FROM EMPLOYEES
WHERE SALARY IN (
    SELECT SALARY
    FROM EMPLOYEES
    ORDER BY SALARY DESC
    LIMIT=3
);

select Count(Name) From Employees


