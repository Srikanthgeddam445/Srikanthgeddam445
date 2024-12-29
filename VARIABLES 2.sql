use gaddam 
go

Select * from employee

Declare @id int,@Salary int
Set @id= 104
Select @salary=salary From employee  where @Id=Id
update employee Set salary=(Salary+Salary*0.1) where @Id=Id

Declare @id int,@amount BigInt,@Salary int
Set @id= 106
Set @amount =3000
begin transaction
update employee Set salary=(Salary+@amount) where @Id=Id
   Select @salary = Salary FRom employee where id=@id
   If @salary>15000
   Rollback
   else 
   Commit 

   Declare @acc int,@amount Int,@type varchar(10),@bal Bigint
   Set @acc = 100
  Set @amount =2000
  Set @type = 'W'
  If  @type = 'W'
  Begin
  Select @bal =bal From Accounts where acc =@acc
  If @amount > @bal
  Print 'Insufficient Balance'
  Else
  Update accounts  Set bal= bal-@amount
   where acc =@acc 
   ENd
   Else if Type ='D'
   Update accounts  Set bal= bal+@amount
   where acc =@acc 
   else
   Print 'invalid Transaction Type'


--   Declare @acc int,@type varchar(10),@amount Int,@bal int
--   Set @acc= 2000
--   Set @amount=20000
--   Set @type= 'D'
--   If @type= 'D'
--   Begin
--   Select @bal=bal From Accounts where acc =@acc
--   If @amount > @bal
--   Update accounts  Set bal= bal+@amount
--   where acc =@acc 
--   end


--   Select * from Accounts

   


  Declare @accno bigint ,
          @type varchar(10),
		  @amount Money,
		  @bal Money
  Set @accno =100045062284
  Set @type='W'
  Set @amount=2000
  If @type='w'
  Begin
  Select @bal=bal From Accounts where accno =@accno
 If @amount >@bal
   Print 'Insufficient balance'
  ELse 
  update accounts set bal=bal-@amount  where accno =@accno
  End
  Else If @type = 'D'
  Update accounts set bal=bal+@amount  where accno =@accno
  Else 
  Print 'Invalid Transaction Type'

  Select * From 


  
  Declare @accno bigint , @type varchar(10), @amount Money, @bal Money
  Set @accno =100045062284
  Set @type='W'
  Set @amount=2000
  If @type='W'
  Begin
  
  Select @bal=bal From Accounts where accno =@accno
 If @amount >@bal
   Print 'Insufficient balance'
   
  iF @TYPE = 'w'
  BEGIN
  update accounts set bal=bal-@amount  where accno =@accno
  End
 If @type = 'D'
 BEGIN
  
  Update accounts set bal=bal+@amount  where accno =@accno
  END 
  ELSE
  BEGIN
  pRINT 'INVALID tRANSACTION TYPE'
  END
  END
  