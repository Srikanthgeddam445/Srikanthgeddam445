Use Gaddam
Go

Select * From EMployee


Update EMployee
Set Salary = 20000
Where  Id = 11

Txn begins EMployee
Executes Update Command
Txn Ends with Commit


Begin TRANSACTION;  -- Start of transaction
Rollback

UPDATE Employee
SET salary = 23000
WHERE id = 12;  -- Example update to the employee record

COMMIT;  -- End the transaction, applying changes permanently

Select * From EMployee

Grant Select,Insert,update,Delete On Employee to Srikanthgeddam

Insert Into Employee VAlues (12,'Mahesh',8036013285,30000,'1985-02-06 00:00:00:000',101,'Mahe803@soft.com',918036013285)

Insert Into Employee VAlues (13,'Harikrishna',9202515489,Null,'1986-05-03 00:00:00:000',101,'Hari920@soft.com',919202515489)