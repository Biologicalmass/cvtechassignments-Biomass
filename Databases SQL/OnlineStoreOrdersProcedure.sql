
CREATE PROCEDURE usp_GetCustomerOrderHistory @Name varchar(255)
AS 
SELECT Customers.Name, Products.ProductName, OrderLines.Quantity, Products.UnitPrice, Orders.OrderDate
FROM OrderLines
INNER JOIN Products ON OrderLines.ProductID = Products.ProductID
INNER JOIN Orders ON OrderLines.OrderID = Orders.OrderID
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.Name = @Name

EXEC usp_GetCustomerOrderHistory @Name = 'Stuart Little';

DROP PROCEDURE usp_GetCustomerOrderHistory;