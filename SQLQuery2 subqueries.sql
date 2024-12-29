uSE GEDDAM
go

Select * From Sales
Select * From Products

Create Table Sales
(
DateId Datetime,
Prodid Int,
CUstid Int,
QTY  INT,
Amount INT
);

Create Table Products
(
Prodid Int,
PName Nvarchar(50),
Price  MONEY,
Category Nvarchar(50)
);

Select * From Sales
Select * From Products

Select Dateadd(DW,-6,Cast(Getdate() as Date))

Insert Into Sales Values(Dateadd(DD,-6,Cast(Getdate() as Date)),101,201,6,12000)
Insert Into Sales Values(Dateadd(DD,-7,Cast(Getdate() as Date)),102,202,10,20000)
Insert Into Sales Values(Dateadd(DD,-8,Cast(Getdate() as Date)),103,201,6,12000)
Insert Into Sales Values(Dateadd(DD,-1,Cast(Getdate() as Date)),104,202,5,10000)
Insert Into Sales Values(Dateadd(DD,-2,Cast(Getdate() as Date)),105,203,6,12000)
Insert Into Sales Values(Dateadd(DD,-3,Cast(Getdate() as Date)),106,203,7,14000)


Insert Into Products Values(101,'Mobiles',2000,'Gadgets')
Insert Into Products Values(102,'TV',2000,'Electronics')
Insert Into Products Values(103,'Fridge',2000,'Home Appliances')
Insert Into Products Values(104,'COOLDRINKS',2000,'Food Category')
Insert Into Products Values(105,'Gold',2000,'Ornaments')
Insert Into Products Values(106,'Mirchi',2000,'Farmer')

Select * From Sales
Select * From Products

-- Create Sales Table
Create Table Sales
(
    DateId Datetime,
    Prodid Int,
    CUsid Int,  -- Ensure this is the correct column name
    QTY INT,
    Amount INT
);

-- Create Products Table
Create Table Products
(
    Prodid Int,
    PName Nvarchar(50),
    Price MONEY,
    Category Nvarchar(50)
);

-- Insert data into Sales table
Insert Into Sales Values(Dateadd(DD,-6,Cast(Getdate() as Date)),101,201,6,12000);
Insert Into Sales Values(Dateadd(DD,-7,Cast(Getdate() as Date)),102,202,10,20000);
Insert Into Sales Values(Dateadd(DD,-8,Cast(Getdate() as Date)),103,201,6,12000);
Insert Into Sales Values(Dateadd(DD,-1,Cast(Getdate() as Date)),104,202,5,10000);
Insert Into Sales Values(Dateadd(DD,-2,Cast(Getdate() as Date)),105,203,6,12000);
Insert Into Sales Values(Dateadd(DD,-3,Cast(Getdate() as Date)),106,203,7,14000);

-- Insert data into Products table
Insert Into Products Values(101,'Mobiles',2000,'Gadgets');
Insert Into Products Values(102,'TV',2000,'Electronics');
Insert Into Products Values(103,'Fridge',2000,'Home Appliances');
Insert Into Products Values(104,'COOLDRINKS',2000,'Food Category');
Insert Into Products Values(105,'Gold',2000,'Ornaments');
Insert Into Products Values(106,'Mirchi',2000,'Farmer');

-- View the data in Sales and Products tables
Select * From Sales;
Select * From Products;

-- Sum of product prices grouped by category
Select 
    p.Category,
    SUM(p.Price) as Cat_total_amount,
    SUM(s.Amount) AS Total_amount,
    AVG(p.Price) AS Pct 
From 
    Sales s
JOIN 
    Products p ON p.Prodid = s.Prodid
GROUP BY 
    p.Category;

Select SUM(Price) FROM Products;

Select 
    p.Category,
    (Select SUM(Price) FROM Products WHERE Category = p.Category) AS Cat_total_amount,
    (Select SUM(Amount) FROM Sales s WHERE s.Prodid = p.Prodid) AS Total_amount,
    (Select AVG(Price) FROM Products WHERE Category = p.Category) AS Pct
From 
    Products p;

Select P.Category, ( SElect SUM(Price) FROM Products WHERE Category = p.Category) as Cat_total_amount,
( SElect SUM(Amount) FROM Sales s WHERE s.Prodid = p.Prodid) AS Total_amount,
(Select  AVG(Price)  FROM Products WHERE Category = p.Category) AS Pct From Products p


Select P.Category, (Select Sum(Price)  From Products WHERE Category = p.Category) AS Cat_total_amount,
                  (Select Sum(Amount) From Sales S WHERE S.Prodid = p.Prodid) As Total_AMount,
				  (Select Avg(Price) From Products WHERECategory = P.Category) AS Pct From 
    Products p

Select 
    p.Category,
    (Select SUM(Price) FROM Products WHERE Category = p.Category) AS Cat_total_amount,
    (Select SUM(Amount) FROM Sales s WHERE s.Prodid = p.Prodid) AS Total_amount,
    (Select AVG(Price) FROM Products WHERE Category = p.Category) AS Pct
From 
    Products p;

Select * From Sales
Select * From Products


