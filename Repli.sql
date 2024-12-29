uSE gaddam
Go


Select Name From EMployees Where Name Like '____'



Select Name From EMployees Where LEn(Name)= 4

Select Name, Len(name) From Employees

Select * From Employees Order By Len(name) ASC

Select Name,Len(name) From Emp Where Len(name) > 4
Order By Len(name) ASC




Create Table Accounts
(
Id Int,
Name Varchar(50),
PhoneNO Bigint,
accountno  Bigint
)

Alter Table Accounts
Alter Column phoneno Bigint;

Insert Into Accounts Values(1011,'Srikanth',9177075452,100045062284)
Insert Into Accounts Values(1012,'Venkat',9985005555,32028470263)
Insert Into Accounts Values(1013,'Siri',9642835345,018301011536)
Insert Into Accounts Values(1014,'Kumari',9550815490,100015032252)
Insert Into Accounts Values(1015,'Rambabu',9160245678,911121100338)
Insert Into Accounts Values(1016,'Tirupathamma',9391702981,100045268545)
Insert Into Accounts Values(1017,'Sirisha',9705677774,320254548245)

Select * From Accounts

Drop Table Accounts

Select Name,phoneno, Left(accountno,4)+Replicate('*',4) + Right(accountno,4) From Accounts

Select Name,phoneno, +Replicate('*',Len(accountno)) + Right(accountno,4) From Accounts 


 

 Select Mailid,Replicate('*',len(Substring(Mailid,1,Charindex('@',MailId)-1)))+Substring(Mailid,Charindex('@',MailId),Len(Mailid)) As Mail1,
 Substring(Mailid,1,Charindex('@',MailId))+Replicate('*',len(Substring(Mailid,Charindex('@',MailId)+1,Len(mailid)))) ,amounts
  From Accounts

  Alter Table Accounts
  add  Amounts Bigint

  Update accounts
  Set Amounts = Left(phoneno,5)



Select Mailid,substring(Mailid,1,CHARINDEX('@', MailId))+replicate('*',len(Substring(Mailid,charindex('@', Mailid)+1,len(Mailid)))) as makskk From Accounts

