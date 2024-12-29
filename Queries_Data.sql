-- Sample Queries

-- 1. Total Sales by Region
SELECT R.RegionName, SUM(O.TotalAmount) AS TotalSales
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Regions R ON C.RegionID = R.RegionID
GROUP BY R.RegionName
ORDER BY TotalSales DESC;

-- 2. Top-Selling Products
SELECT P.ProductName, SUM(OD.Quantity) AS TotalQuantity
FROM OrderDetails OD
JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY TotalQuantity DESC;

-- 3. Customer Lifetime Value
SELECT C.FirstName, C.LastName, SUM(O.TotalAmount) AS LifetimeValue
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID
ORDER BY LifetimeValue DESC;

-- 4. Monthly Sales Trend
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(TotalAmount) AS TotalSales
FROM Orders
GROUP BY Month
ORDER BY Month;

-- 5. Average Order Value by Customer
SELECT C.FirstName, C.LastName, AVG(O.TotalAmount) AS AvgOrderValue
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID
ORDER BY AvgOrderValue DESC;

-- 6. Total Quantity Sold per Product
SELECT P.ProductName, SUM(OD.Quantity) AS TotalQuantitySold
FROM OrderDetails OD
JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY TotalQuantitySold DESC;

-- 7. Total Revenue by Category
SELECT P.Category, SUM(OD.LineTotal) AS TotalRevenue
FROM OrderDetails OD
JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY P.Category
ORDER BY TotalRevenue DESC;

-- 8. Customers with the Highest Lifetime Value
SELECT C.FirstName, C.LastName, SUM(O.TotalAmount) AS LifetimeValue
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID
ORDER BY LifetimeValue DESC
LIMIT 5;

-- 9. Orders Placed in the Last 30 Days
SELECT O.OrderID, O.OrderDate, C.FirstName, C.LastName, O.TotalAmount
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
WHERE O.OrderDate >= CURDATE() - INTERVAL 30 DAY
ORDER BY O.OrderDate DESC;

-- 10. Average Order Quantity per Product
SELECT P.ProductName, AVG(OD.Quantity) AS AvgOrderQuantity
FROM OrderDetails OD
JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY AvgOrderQuantity DESC;

-- 11. Region with the Highest Number of Orders
SELECT R.RegionName, COUNT(O.OrderID) AS TotalOrders
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Regions R ON C.RegionID = R.RegionID
GROUP BY R.RegionName
ORDER BY TotalOrders DESC
LIMIT 1;

-- 12. Number of Orders per Customer
SELECT C.FirstName, C.LastName, COUNT(O.OrderID) AS TotalOrders
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID
ORDER BY TotalOrders DESC;

-- 13. Products with the Highest Revenue
SELECT P.ProductName, SUM(OD.LineTotal) AS TotalRevenue
FROM OrderDetails OD
JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY P.ProductID
ORDER BY TotalRevenue DESC
LIMIT 5;

-- 14. Sales Trend by Month (Grouped by Year and Month)
SELECT YEAR(OrderDate) AS Year, MONTH(OrderDate) AS Month, SUM(TotalAmount) AS TotalSales
FROM Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY Year DESC, Month DESC;

-- 15. Customer Order Count by Region
SELECT R.RegionName, COUNT(O.OrderID) AS OrderCount
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Regions R ON C.RegionID = R.RegionID
GROUP BY R.RegionName
ORDER BY OrderCount DESC;

-- 16. Products with No Orders
SELECT P.ProductName
FROM Products P
LEFT JOIN OrderDetails OD ON P.ProductID = OD.ProductID
WHERE OD.OrderDetailID IS NULL;

