Select * From Accounts



Declare @accno bigint,@type Varchar(10),@bal Int ,@amount Int
Set @accno = 100045062284
Set @type = 'd'
Set @amount =1000
iF @TYPE = 'w'
Begin 
Select @bal = bal From Accounts Where Accno=@accno
If @amount >@bal
Print 'Insufficient Balance'
ELse
Update Accounts Set bal = Bal-@amount where Accno=@accno
End
ELse If @Type = 'd'
Update Accounts Set bal = Bal+@amount  where Accno=@accno
eLSE
Print 'Invalid Transaction Type'




Declare @aacno Bigint,@type Varchar(10),@Bal Int,@amount Int
Set @aacno = 919177075452
Set @type = 'W'
Set @amount = 5000
If @type = 'w'
Begin
Select @bal = Bal From Accounts Where accno=@accno
If @amount >@bal
 Print 'Insufficient Funds'
 Else
 Update Accounts Set Bal= bal-@amount  From Accounts Where accno=@accno
 end
 Else if @type ='d'
 Update Accounts Set Bal= bal+@amount  From Accounts Where accno=@accno
 Else 'Invalid Transaction Type'



Declare @accno Bigint,@bal Int,@type Varchar(10),@amount Int
Set @accno = 18301011536
Set @type = 'W'
Set @amount = 2000
If @type = 'W'
Begin
Select  @bal= Bal From Accounts Where accno=@accno
If @amount >  @bal
Print 'Insufficient Funds'
Else
Update Accounts Set Bal = Bal -@amount From Accounts Where accno=@accno
End
Else If  @type = 'd'
Update Accounts Set Bal = Bal +@amount From Accounts Where accno=@accno
Else 
Print 'Invalid Transaction Type'

Select * From Accounts










Select * From Accounts


















Select * From Accounts