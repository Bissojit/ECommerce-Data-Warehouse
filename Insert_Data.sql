-- Insert Sample Data

-- Insert Regions
INSERT INTO Regions (RegionName) VALUES
('North America'),
('Europe'),
('Asia'),
('Australia'),
('South America');

-- Insert Customers
INSERT INTO Customers (FirstName, LastName, Email, Phone, RegionID) VALUES
('John', 'Doe', 'john.doe@example.com', '1234567890', 1),
('Jane', 'Smith', 'jane.smith@example.com', '0987654321', 2),
('Ali', 'Khan', 'ali.khan@example.com', '1122334455', 3),
('Emma', 'Brown', 'emma.brown@example.com', '5566778899', 4),
('Carlos', 'Gomez', 'carlos.gomez@example.com', '6677889900', 5),
('Lisa', 'Adams', 'lisa.adams@example.com', '9988776655', 1),
('Wang', 'Wei', 'wang.wei@example.com', '5544332211', 3);

-- Insert Products
INSERT INTO Products (ProductName, Category, Price) VALUES
('Laptop', 'Electronics', 1000.00),
('Smartphone', 'Electronics', 700.00),
('Headphones', 'Accessories', 150.00),
('Office Chair', 'Furniture', 250.00),
('Desk', 'Furniture', 300.00),
('Monitor', 'Electronics', 200.00),
('Keyboard', 'Accessories', 50.00);

-- Insert Orders
INSERT INTO Orders (OrderDate, CustomerID, TotalAmount) VALUES
('2024-12-01', 1, 1150.00),
('2024-12-02', 2, 1450.00),
('2024-12-03', 3, 700.00),
('2024-12-04', 5, 550.00),
('2024-12-05', 6, 1050.00),
('2024-12-06', 7, 850.00);

-- Insert OrderDetails
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, LineTotal) VALUES
(1, 1, 1, 1000.00),
(1, 3, 1, 150.00),
(2, 2, 2, 1400.00),
(2, 4, 1, 250.00),
(3, 2, 1, 700.00),
(4, 5, 1, 300.00),
(4, 7, 5, 250.00),
(5, 1, 1, 1000.00),
(5, 6, 1, 200.00),
(6, 2, 1, 700.00),
(6, 3, 1, 150.00);
