SELECT * FROM Customers
-- WHERE Country NOT in ('Germany', 'USA');
WHERE Country NOT LIKE 'Germany' AND Country <>'USA';