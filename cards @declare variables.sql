

Create Table Creditcards
(
Creditcardno Bigint,
Creditlimit  Int,

totaloutstanding int,
amountpaid int
)

Insert Into Creditcards Values(4412854679751002,75000,0,0)
Insert Into Creditcards Values(4325845684236622,100000,35000,0)
Insert Into Creditcards Values(4254584662145685,50000,25000,6000)
Insert Into Creditcards Values(4758784569568586,60000,30000,5000)
Insert Into Creditcards Values(6145625832121255,90000,40000,10000)

alter table Creditcards
Add Billpending Int

update Creditcards
Set Billpending =Totaloutstanding-amountpaid



Select * From Creditcards

Declare @Creditcardno Bigint,@creditcardlimint int,@amount int,@totaloutstanding int,@amountpaid varchar(10),@billpending Int,@type varchar(100)
Set @Creditcardno = 6145625832121255
Set @amount =5000
Set @amountpaid = 'D'
If @amountpaid = 'D'
Begin
Select
@totaloutstanding=totaloutstanding From Creditcards where Creditcardno=@Creditcardno
If @amount> @amountpaid
Print 'Insufficient Funds'
ELse
Update Creditcards Set Billpending =Totaloutstanding+@amountpaid where Creditcardno=@Creditcardno
End



DECLARE @Creditcardno BIGINT,@creditcardlimint INT, @amount INT, @totaloutstanding INT,@amountpaid INT, @billpending INT, @type VARCHAR(100);
SET @Creditcardno = 6145625832121255;
SET @amount = 3000;
SET @amountpaid = 1000;
SET @type = 'D';
IF @type = 'D'
BEGIN
    SELECT 
        @totaloutstanding = totaloutstanding
    FROM Creditcards
    WHERE Creditcardno = @Creditcardno;
    IF @amount > @totaloutstanding
    BEGIN
        PRINT 'Insufficient Funds';
    END
    ELSE
    BEGIN
        UPDATE Creditcards 
        SET Billpending = @totaloutstanding - @amountpaid
        WHERE Creditcardno = @Creditcardno;
        
        PRINT 'Bill pending updated successfully';
    END
END;

Select * From Creditcards




DECLARE 
    @Creditcardno BIGINT = 1234567890123456,  -- Example Credit Card Number
    @Creditlimit INT = 75000,                  -- Example Credit Limit
    @totaloutstanding INT = 1500,             -- Example Outstanding Amount
    @amountpaid INT = 500;                    -- Example Amount Paid

-- Example Query to use these variables
SELECT 
    @Creditcardno AS Creditcardno,
    @Creditlimit AS Creditlimit,
    @totaloutstanding AS totaloutstanding,
    @amountpaid AS amountpaid;





