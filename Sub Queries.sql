

select * From EMployee
Where Salary >(Select Salary From Employee Where Name ='Siri')


sELECT pHONE,Left(Phone,3)+Replicate('*',Len(Phone)-6 )+ Right(Phone,3) ,mAIL, rEPLICATE('*',1,LEN(cHARINDEX('@',eMAIL) aS pHONENO From EMployee