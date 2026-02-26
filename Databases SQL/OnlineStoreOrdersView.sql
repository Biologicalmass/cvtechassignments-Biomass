CREATE VIEW [OrderSummary] AS 
SELECT Customers.Name, Orders.OrderDate,  SUM(OrderLines.Quantity * Products.UnitPrice) AS TotalOrderAmount 
FROM OrderLines 
INNER JOIN Orders ON OrderLines.OrderID = Orders.OrderID
INNER JOIN Products ON Orderlines.ProductID = Products.ProductID
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY  Customers.Name, Orders.OrderDate

SELECT * FROM OrderSummary
DROP VIEW OrderSummary