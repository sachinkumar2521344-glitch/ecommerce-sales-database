INSERT INTO Customers (Customer_Name, Email, Phone, City)
VALUES
('Rahul Sharma','rahul@gmail.com','9876543210','Delhi'),
('Priya Verma','priya@gmail.com','9876543211','Mumbai'),
('Amit Kumar','amit@gmail.com','9876543212','Pune'),
('Neha Singh','neha@gmail.com','9876543213','Jaipur'),
('Rohit Mehta','rohit@gmail.com','9876543214','Bangalore');

SELECT * FROM Customers;

INSERT INTO Products (Product_Name, Category, Price, Stock)
VALUES
('Laptop','Electronics',55000,20),
('Mouse','Electronics',700,100),
('Keyboard','Electronics',1200,60),
('Headphones','Electronics',2500,35),
('Office Chair','Furniture',6500,15);

SELECT * FROM Products;

INSERT INTO Orders (Customer_ID, Order_Date, Total_Amount)
VALUES
(1,'2025-07-01',55700),
(2,'2025-07-02',1200),
(3,'2025-07-03',6500),
(4,'2025-07-04',2500),
(5,'2025-07-05',55000);

SELECT * FROM Orders;

INSERT INTO Order_Items (Order_ID, Product_ID, Quantity)
VALUES
(1,1,1),
(1,2,1),
(2,3,1),
(3,5,1),
(4,4,1),
(5,1,1);

SELECT * FROM Order_Items;

SELECT * FROM Customers;

SELECT * FROM Products;

SELECT * FROM Orders;

SELECT * FROM Order_Items;