
Create Table Student
(
Id Int not NULL PRIMARY KEY,
Name Nvarchar(50),
MAXMARKS INT,
TELUGU INT,
HIN     INT,
ENG      iNT,
MATHS    iNT,
SCI      INT,
SOC      INT
);

DROP TABLE sTUDENT

INSERT INTO STUDENT VALUES(1,'Srikanth',100,82,75,68,94,89,83),
                           (2,'Venkat',100,85,90,75,98,93,65),
						   (3,'Siri',100,45,85,33,76,64,42),
						   (4,'Suresh',100,74,86,87,98,96,84),
						   (5,'Sunny',100,65,52,54,28,75,40),
						   (6,'Pavan',100,85,83,65,98,52,58),
						   (7,'Sharieff',100,65,36,68,94,89,83),
						   (8,'Santosh',100,66,82,68,94,89,83),
						   (9,'Sahithi',100,72,98,95,95,96,99),
						   (10,'Rajesh',100,31,36,30,32,42,45),
						   (11,'Varalakshmi',100,55,56,58,74,86,54)

Select * From STUDENT
 
 Select name,maxmarks,Sum(telugu+HIN+enG+mATHS+sci+sOC) aS TOTAL fROM sTUDENT
 gROUP BY MARKS name,maxmarks;

 aLTER tABLE STUDENT
 aDD Total Int

 aLTER tABLE sTUDENT
 DROP COLUMN aVG

 Update STUDENT
 Set  Total =TELUGU+HIN+ENG+MATHS+SCI+SOC

  aLTER tABLE STUDENT
 aDD AVG Int

 Update STUDENT
 Set  AVG  =TOTAL/6


 Select Name,Total,Avg,
 CASE
    WHEN TELUGU > =35 AND HIN > =35 AND enG > =35 AND mATHS > =35 AND sci > =35 AND 
	sOC > =35 THEN 'PASS' 
	ELSE 'Fail'
	end As Result,
	 cASE  
	 When Avg >= 90 Then 'O' WHEN Avg>=80 Then 'A' WHEN Avg>= 70 Then 'B' WHEN Avg>=60 Then 'C'
	   WHEN aVG<=59 THEN 'F'
	end As Grades
From Student
Where aVG >60 aND aVG <100


 sELECT * fROM sTUDENT



Select Name,TOTAL,AVG,Result,Grades From Student


