Create Database Sree

Use Sree
Go

Create Table Person
(
Id Int ,
Name Nvarchar(50),
Age Int,
GenderId Int
)

Create Table Gender
(
Id Int,
Gendername Nvarchar(50)
)

Select * from Person
Select * From Gender


Insert Into Person Values(1,'Sree',31,1),(2,'Venkat',30,1),(3,'Siri',32,2),(4,'Pavani',31,2),(5,'Rajesh',33,3)
Insert Into Gender Values(1,'Male'),(2,'Female'),(3,'Others')

Select Name , age,genderid From Person Join Gender On Person.GenderId =Gender.Id
Select Name , age,genderid From Person Join Gender On Person.GenderId =Gender.Gendername

Select * From Person Join Gender On Person.GenderId = Gender.Id;

Select name From Person Join Gender On Person.GenderId = Gender.Id
Where Gendername = 'Male';