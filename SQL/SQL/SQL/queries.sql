-- Total Customers
SELECT COUNT(*) FROM Customers;

-- Total Products
SELECT COUNT(*) FROM Products;

-- Expensive Products
SELECT *
FROM Products
WHERE Price > 1000;

-- Product Wise Sales
SELECT Product_ID,
SUM(Quantity)
FROM Order_Items
GROUP BY Product_ID;
