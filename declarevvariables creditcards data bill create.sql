Use gaddam
Go


SElect * From Creditcards

Declare @Creditcardno Bigint,@Totaloutstanding Int,@Amountpaid Int, @billpending int,@creditlimit int,@type varchar(10),@amount int
Set @Creditcardno = 4758784569568586
SEt @amount = 5000
Set @type = 'D'
If @type = 'D'
Begin
SElect @Creditlimit = Creditlimit,@Totaloutstanding = TotalOutstanding, @Amountpaid = AmountPaid From Creditcards where Creditcardno = @Creditcardno
If @Amount >  @Creditlimit 
Print 'Funds not Efficient'
Else
update Creditcards Set billpending= Billpending-amountpaid ,
                       amountpaid= amountpaid+@amount
where Creditcardno = @Creditcardno   
print'Bill Updated Successfully'
End


Declare @x int = 1
While (@x<=20)
Begin
Print @x
Set @x = @x+1
End


Declare @x nVarchar = Welcome
While (@x<=7)
Begin
Print @x
Set @x = @x+1
End


DECLARE @x INT = 1;  -- Initialize @x as an integer
DECLARE @message NVARCHAR(50) = 'Welcome';  -- Initialize the message as a string

WHILE (@x <= 2)  -- Loop 7 times
BEGIN
    PRINT @message;  -- Print the message
    SET @x = @x + 1;  -- Increment @x by 1
END


