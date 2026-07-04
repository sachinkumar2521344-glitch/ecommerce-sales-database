SELECT * FROM Customers;

SELECT Customer_Name, City
FROM Customers;

SELECT *
FROM Customers
WHERE City = 'Delhi';

SELECT *
FROM Products
WHERE Category = 'Electronics';

SELECT *
FROM Products
WHERE Price > 5000;

SELECT *
FROM Products
WHERE Stock <= 50;

SELECT *
FROM Products
ORDER BY Price ASC;

SELECT *
FROM Products
ORDER BY Price DESC;

SELECT *
FROM Customers
ORDER BY Customer_Name ASC;

SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 3;

SELECT *
FROM Customers
LIMIT 2;

SELECT *
FROM Customers
WHERE Customer_Name LIKE 'Rahul%';

SELECT *
FROM Products
WHERE Product_Name LIKE '%it%';

SELECT *
FROM Customers
WHERE Email LIKE '%gmail.com';

SELECT *
FROM Products
WHERE Price BETWEEN 1000 AND 10000;

SELECT *
FROM Orders
WHERE Order_Date
BETWEEN '2025-07-01'
AND '2025-07-31';

SELECT *
FROM Customers
WHERE City IN ('Delhi','Mumbai');

SELECT *
FROM Products
WHERE Category IN ('Electronics','Furniture');

SELECT COUNT(*) AS Total_Customers
FROM Customers;

SELECT SUM(Total_Amount) AS Total_Sales
FROM Orders;

SELECT AVG(Price) AS Average_Price
FROM Products;

SELECT MAX(Price)
FROM Products;

SELECT MIN(Price)
FROM Products;

SELECT Category,
COUNT(*) AS Total_Products
FROM Products
GROUP BY Category;

SELECT Customer_ID,
COUNT(*) AS Total_Orders
FROM Orders
GROUP BY Customer_ID;

SELECT Category,
COUNT(*) AS Total_Products
FROM Products
GROUP BY Category
HAVING COUNT(*) > 1;

SELECT
Customers.Customer_Name,
Orders.Order_ID,
Orders.Order_Date,
Orders.Total_Amount
FROM Customers
INNER JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID;

SELECT
Products.Product_Name,
Order_Items.Quantity
FROM Products
INNER JOIN Order_Items
ON Products.Product_ID = Order_Items.Product_ID;

SELECT
Customers.Customer_Name,
SUM(Orders.Total_Amount) AS Total_Spent
FROM Customers
INNER JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID
GROUP BY Customers.Customer_Name
ORDER BY Total_Spent DESC;





SELECT
    Customers.Customer_Name,
    Orders.Order_ID,
    Orders.Total_Amount
FROM Customers
LEFT JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID;

SELECT
    Customers.Customer_Name,
    Orders.Order_ID
FROM Customers
RIGHT JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID;

SELECT
    Product_Name,
    Price,
    CASE
        WHEN Price >= 50000 THEN 'Premium'
        WHEN Price >= 5000 THEN 'Mid Range'
        ELSE 'Budget'
    END AS Product_Category
FROM Products;



SELECT *
FROM Products
WHERE Price >
(
    SELECT AVG(Price)
    FROM Products
);

SELECT *
FROM Orders
WHERE Total_Amount =
(
    SELECT MAX(Total_Amount)
    FROM Orders
);

CREATE VIEW CustomerOrders AS
SELECT
    Customers.Customer_Name,
    Orders.Order_Date,
    Orders.Total_Amount
FROM Customers
JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID;

SELECT * FROM CustomerOrders;

DROP VIEW CustomerOrders;

UPDATE Orders
JOIN Customers

  SELECT
    Customers.Customer_Name,
    SUM(Orders.Total_Amount) AS Total_Spent
FROM Customers
JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID
GROUP BY Customers.Customer_Name;

ON Orders.Customer_ID = Customers.Customer_ID
SET Orders.Total_Amount = Orders.Total_Amount - 500
WHERE Customers.City = 'Delhi';

DELETE Orders
FROM Orders
JOIN Customers
ON Orders.Customer_ID = Customers.Customer_ID
WHERE Customers.City = 'Jaipur';

SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 1;

SELECT DISTINCT Price
FROM Products
ORDER BY Price DESC
LIMIT 1 OFFSET 1;

SELECT SUM(Total_Amount) AS Total_Sales
FROM Orders;

SELECT AVG(Total_Amount)
FROM Orders;

SELECT
    Customers.Customer_Name,
    SUM(Orders.Total_Amount) AS Total_Spent
FROM Customers
JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID
GROUP BY Customers.Customer_Name;

SELECT Product_Name
FROM Products
WHERE Product_ID NOT IN
(
    SELECT Product_ID
    FROM Order_Items
);

SELECT
    Product_ID,
    SUM(Quantity) AS Total_Sold
FROM Order_Items
GROUP BY Product_ID
ORDER BY Total_Sold DESC;

SELECT
    Customers.Customer_Name,
    SUM(Orders.Total_Amount) AS Total
FROM Customers
JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID
GROUP BY Customers.Customer_Name
ORDER BY Total DESC
LIMIT 1;

SELECT *
FROM Products
WHERE Price <
(
    SELECT AVG(Price)
   FROM Products
);

SELECT
    Customers.City,
    COUNT(Orders.Order_ID) AS Total_Orders
FROM Customers
LEFT JOIN Orders
ON Customers.Customer_ID = Orders.Customer_ID
GROUP BY Customers.City;











CREATE INDEX idx_customer_name
ON Customers(Customer_Name);


SHOW INDEX FROM Customers;

views.sql

CREATE VIEW Sales_Report AS

SELECT
    c.Customer_Name,
    p.Product_Name,
    o.Order_Date,
    o.Total_Amount

FROM Customers c

JOIN Orders o
ON c.Customer_ID = o.Customer_ID

JOIN Order_Items oi
ON o.Order_ID = oi.Order_ID

JOIN Products p
ON oi.Product_ID = p.Product_ID;

procedures.sql

DELIMITER $$

CREATE PROCEDURE GetAllCustomers()

BEGIN

SELECT * FROM Customers;

END $$

DELIMITER ;

CALL GetAllCustomers();

SELECT

Product_Name,

Price,

RANK() OVER(ORDER BY Price DESC) AS Product_Rank

FROM Products;

SELECT

Customer_Name,

ROW_NUMBER() OVER(ORDER BY Customer_Name)

FROM Customers;

SELECT

Product_Name,

Price,

DENSE_RANK() OVER(ORDER BY Price DESC)

FROM Products;

Database

↓

Reverse Engineer

↓

Select EcommerceDB

↓

Finish


