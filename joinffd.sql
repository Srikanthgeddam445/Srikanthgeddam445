
Create Table Sales
(
DateId  datetime,
Prodid Int primary key,
CustId  int unique,
Qty      int,
Amount  Money
)

Drop Table Products

Create table products
(
PRODID int PRIMARY KEY,
PNAME  NVARCHAR(50),
Price  MOney,
Category Nvarchar(50)
)

Create Table Customers
(
Custid   int unique,
Name  Nvarchar(50),
Address NVARCHAR(50),
Country Nvarchar(50)
)



Insert Into Sales(DATEID,Prodid,Custid,Qty,Amount)
Values  (CAST(getdate() AS dATE),100,220,6,10000)

Insert Into Sales(DATEID,Prodid,Custid,Qty,Amount)
Values  (DATEADD(DD,-6,gETDATE()),101,224,8,15000)

Insert Into Sales(DATEID,Prodid,Custid,Qty,Amount)
Values  (DATEADD(DD,10,gETDATE()),102,226,15,30000)

Insert Into Sales(DATEID,Prodid,Custid,Qty,Amount)
Values  (DATEADD(DD,-1,gETDATE()),103,230,10,20000)


Insert Into Sales(DATEID,Prodid,Custid,Qty,Amount)
Values  ('2024-12-11',104,236,15,25000)

Select * From Sales
Select * From products
Select * From Customers

iNSERT INTO PRODUCTS vALUES (101, 'Vivo V40', 34999, 'MOBILES')
iNSERT INTO PRODUCTS vALUES (100, 'Double Door', 41999, 'Fridge')
iNSERT INTO PRODUCTS vALUES (103, 'Moto QLED', 36999, 'TV')
iNSERT INTO PRODUCTS vALUES (102, 'ACER GAMING Series', 69999, 'Laptop')


iNSERT INTO Customers vALUES (224, 'Srikanth', 'Hyderabad', 'India')
iNSERT INTO Customers vALUES (220, 'Venkat', 'Texas', 'Usa')
iNSERT INTO Customers vALUES (226, 'Siri', 'Kaulalampur', 'Malaysia')
iNSERT INTO Customers vALUES (230, 'Sahithi', 'Colombo', 'Srilanka')
iNSERT INTO Customers vALUES (236, 'Rambabu', 'Guntur', 'India')



Alter Table Sales
alter Column Dateid Date


Drop Table Sales


Select * From Sales
Select * From products
Select * From Customers

Select * From products
Select Datepart(yy,Dateid) As Date ,Country,Category,Sum(Qty * Price) AS Total From Sales
Join products on products.PRODID=Sales.PRODID
join Customers On Customers.Custid = Sales.Custid
Group by Datepart(yy,Dateid) ,Category,COuntry
