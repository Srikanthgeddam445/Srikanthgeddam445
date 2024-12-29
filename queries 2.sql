Select * From Sales
Select * From Products

-- Total Sales by Category using subqueries
Select 
    p.Category,
    (Select SUM(Price) FROM Products WHERE Category = p.Category) AS Cat_total_amount,
    (Select SUM(Amount) FROM Sales s WHERE s.Prodid = p.Prodid) AS Total_amount,
    (Select AVG(Price) FROM Products WHERE Category = p.Category) AS Pct
From 
    Products p;

-- Total price of products greater than average price using subquery
Select 
    SUM(Price)
FROM 
    Products
WHERE 
    Price > (Select AVG(Price) FROM Products Where Category = 'Mobiles');

-- Sum of product prices where the price is greater than 1000 using subquery in FROM clause
Select 
    Category,
    SUM(Price) AS Cat_total_amount
From 
    (Select * FROM Products WHERE Price > 1000) AS p
GROUP BY 
    p.Category;

-- Total Sales for each product using subquery
Select 
    p.PName,
    (Select SUM(s.Amount) FROM Sales s WHERE s.Prodid = p.Prodid) AS Total_Sales
From 
    Products p;
