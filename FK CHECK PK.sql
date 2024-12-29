Create Table Accounts
(
Accno BIGINT PRIMARY KEY ,
ACCTYPE VARCHAR(50),
BAL biGINT
CHECK(BAL>1000)
)


cREATE tABLE tRANSACTIONS
(
TRID bIGINT PRIMARY KEY ,
TTYPE VARCHAR(50)  constraint Check_TType  CHECK (TTYPE In ('W','D')),
TAMT BIGINT constraint Check_TTamount CHECK  (TAMT % 100 = 0),
Accno Bigint  constraint fK_ACCOUNTNO foreign key (Accno) 
References Accounts(Accno) 
)

cREATE tABLE tRANSACTIONS1
(
TRID bIGINT PRIMARY KEY ,
TTYPE VARCHAR(50)  CHECK (TTYPE ='W' OR TTYPE = 'D'),
TAMT BIGINT CHECK (TAMT%100 =0),
Accno Bigint References Accounts(Accno)
)

dROP tABLE tRANSACTIONS1


SELECT * fROM Accounts
SELECT * fROM TRANSACTIONS
SELECT * fROM TRANSACTIONS1

aLTER tABLE ACCOUNTS
aDD cONSTRAINT CK_ACCOUNTS_ACCTYPE
cHECK(ACCTYPE = 'SAVINGS' OR ACCTYPE = 'CURRENT');


Insert Into Accounts Values(100045062284,'SAVINGS',15000),
                           (919177075452,'CURRENT',55000),
                           (018301011536,'SAVINGS',36000),
                           (919642835355,'CURRENT',60000),
						   (919705369053,'SAVINGS',NULL)

Insert into TRANSACTIONS Values (410123485214,'W',10000,100045062284),
                                (410123125234,'W',4100,100045062284),
                                (410123485225,'D',30000,100045062284),
                                (410123485375,'D',10000,100045062284),
                                (410123485642,'W',10000,919177075452),
								(410123485662,'W',25000,919177075452),
								(410123485685,'D',55000,919177075452),
								(410123485692,'W',10000,919642835355),
								(410123415478,'D',20000,919642835355),
								(410123485816,'D',10000,919642835355),
								(410123485652,'W',10000,919642835355),
								(410123412578,'D',20000,919705369053),
								(410123487456,'D',10000,919705369053)
                                  

SELECT * fROM Accounts
SELECT * fROM TRANSACTIONS

SELECT Accno,ACCTYPE,sUM(TAMT) AS tOTALAMOUNT
fROM Accounts
inner JOIN TRANSACTIONS ON Accounts.ACCNO =TRANSACTIONS.ACCNO
gROUP BY Accno,ACCTYPE

SELECT 
    A.Accno, 
    A.ACCTYPE, 
    A.BAL, 
    T.TRID, 
    T.TTYPE, 
    T.TAMT
FROM 
    Accounts A
INNER JOIN 
    Transactions T
    ON A.Accno = T.Accno
WHERE 
    A.Accno = 100045062284;  -- Replace with your account number


	SELECT 
    A.Accno, 
    A.ACCTYPE, 
    SUM(T.TAMT) AS Total_Amount
FROM 
    Accounts A
INNER JOIN 
    Transactions T
    ON A.Accno = T.Accno
GROUP BY 
    A.Accno, A.ACCTYPE;

SELECT A.Accno, 
    A.ACCTYPE, 
    SUM(T.TAMT) AS Total_Amount
fROM Accounts A
inner JOIN TRANSACTIONS T ON A.ACCNO =T.ACCNO
gROUP BY A.Accno, A.ACCTYPE;




SELECT ACCOUNTS.Accno,acctype,Sum(tamt) From Accounts
JOIN TRANSACTIONS ON tRANSACTIONS.Accno= aCCOUNTS.Accno
gROUP BY ACCOUNTS.Accno, ACCTYPE;


 