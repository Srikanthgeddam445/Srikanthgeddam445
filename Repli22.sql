Select Name,Phoneno,Accountno,

Left(accountno,4)+Replicate('*',4)+Right(accountno,4) From Accounts



Select name,phoneno,Accountno,Left(Accountno,4)+Replicate('*',4)+Right(accountno,4) From Accounts

Select Name,phoneno,accountno,Left(accountno,4)+Replicate('*',Len(accountno)-8)+Right(accountno,4) As MaskedAccno From Accounts

Select name,phoneno,left(name,3)+right(phoneno,3)+'@noc.com' As mail From Accounts

Alter TABLE aCCOUNTS
aDD MAILID nVARCHAR(50)

update accounts
Set mailid = left(name,3)+right(phoneno,3)+('@noc.com')
 
 Select Mailid,Replicate('*',len(Substring(Mailid,1,Charindex('@',MailId)-1)))+Substring(Mailid,Charindex('@',MailId),Len(Mailid)) As Mail1,
 Substring(Mailid,1,Charindex('@',MailId))+Replicate('*',len(Substring(Mailid,Charindex('@',MailId)+1,Len(mailid)))) 
  From Accounts
 ,

Select Name,phoneno,MailId,accountno,Left(accountno,4)+Replicate('*',Len(accountno)-8)+Right(accountno,4) As MaskedAccno From Accounts

Select Name,phoneno,Left(phoneno,2)+replicate('*',Len(phoneno)-4)+right(Phoneno,2) As Phone, 
Accountno,Left(accountno,4)+Replicate('*',Len(accountno)-8)+Right(accountno,4) As MaskedAccno From Accounts

Select Name,phoneno,Left(phoneno,2)+replicate('*',Len(phoneno)-4)+right(Phoneno,2) As Phone, MailId, substring(Mailid,1,CHARINDEX('@', MailId))+replicate('*',len(Substring(Mailid,charindex('@', Mailid)+1,len(Mailid)))) as makskk,
--SUBSTRING(MailId, CHARINDEX('@', MailId), LEN(MailId)) AS MaskedMailId,
Accountno,Left(accountno,4)+Replicate('*',Len(accountno)-8)+Right(accountno,4) As MaskedAccno From Accounts




MailId,Left(Mailid,3)+replicate('*',Char(@)+Right(Mailid,3),


REPLICATE('*', LEN(SUBSTRING(MailId, 1, CHARINDEX('@', MailId) - 1))) + SUBSTRING(MailId, CHARINDEX('@', MailId), LEN(MailId)) AS MaskedMailId


Select Mailid,Replicate('*',Len(Substring(Mailid,1,Charindex('@',Mailid)-1)))+Substring(Mailid,Charindex('@',Mailid),Len(Mailid)) As Maskedmail From Accounts


DECLARE @Email VARCHAR(100) = 'sri@gmail.com';
SELECT REPLICATE('*', LEN(SUBSTRING(Email, 1, CHARINDEX('@', Email)-1))) + SUBSTRING(Email, CHARINDEX('@', Email), LEN(Email)) AS MaskedEmail From Accounts



Select Mailid,Replicate('*',Len(Substring(Mailid,1,Charindex('@',mailid)-1)))+Substring(Mailid,Charindex('@',mailid),Len(mailid)) As masked From Accounts

Select Mailid,Replicate('*',Len(Substring(mailid,1,Charindex('@',mailid))))+Substring(Mailid,Charindex('@',mailid),Len(mailid)) As masked From Accounts


 




MailId,Left(Mailid,3)+replicate('*',Len(mailid)-@)+Right(Mailid,3),
