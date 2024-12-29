Create Database Siri

use Siri 
Go

CREATE TABLE gold_inventory (
    inventory_id INT IDENTITY(1,1) PRIMARY KEY,   -- Auto-increment ID in SQL Server
    warehouse_location VARCHAR(100),               -- Location of the warehouse
    gold_quantity DECIMAL(10, 2),                  -- Quantity of gold in the warehouse
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP -- Timestamp when the record was last updated
);
Select * From gold_inventory
INSERT INTO gold_inventory (warehouse_location, gold_quantity)
VALUES ('Warehouse A', 500.0); 
Insert into Golds Values(1,22.4,22000,Getdate())
Insert into Golds Values(2,22.4,20000,'02-12-2024')
Insert into Golds Values(3,22.4,20000,'01-12-2024')
Insert into Golds Values(4,22.4,19500,'30-11-2024')
Insert into Golds Values(5,22.4,19000,'29-11-2024')
Insert into Golds Values(6,22.4,19100,'28-11-2024')
Insert into Golds Values(7,22.4,18700,'27-11-2024')
Insert into Golds Values(8,22.4,18500,'26-11-2024')
Insert into Golds Values(9,22.4,18000,'25-11-2024')
Insert into Golds Values(10,22.4,17000,'24-11-2024')
Insert into Golds Values(11,22.4,16000,'23-11-2024')


Select Gold ,Rate From Golds where Dates = '26-11-2024'
Select * from Golds where date Between Datepart(yy,27-11-2024,Getdate())

Select * From gold_inventory
where Dates = Dateadd(dd,-1,Getdate())

Alter Table Golds
Alter Column Dates timestamp;

Drop Table gold_inventory

Update gold_inventory
Set Last_Updated = '2024-12-02 06:25:02.235'