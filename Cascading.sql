Use Gaddam
Go

Create Table Persons
(
Id Int Primary key,
Name Nvarchar(50),
GenderId Int
)

Create Table Genders
(
Id int Primary Key,
GenderName Varchar(10)
)

Insert Into Persons Values(1,'Sree',1),(2,'Siri',1),(3,'Venkat',1),(4,'Sahithi',2),(5,'Raja',3),(6,'Suresh',1)
Insert Into Persons(Id,Name) Values(7,'Mani')

Insert into Genders Values(1,'Male'),(2,'Female'),(3,'Others')



        

	   Update  Persons
	   Set GenderId = 2 Where Id =2

	   Select Name,Gendername From EMployee
	   Join Genders on Genders.Id= Persons.GenderId

	   Alter Table Persons
	   add Constraint Persons_GenderId_Fk
	   Foreign key (GenderId) References Genders(Id)

	   Delete From Genders Where Id = 3

	   
	   Alter Table Persons
	   add Constraint Persons_GenderId_Dk
	   Default 3 For GenderId


	   Delete From Genders WHere Id =1