-- 조건 : EmployeeID가 7, 9 직원에 각각 주문 갯수
-- 링크:https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_groupby

SELECT COUNT(*), EmployeeID
FROM Orders
WHERE EmployeeID IN (7,9)
GROUP BY EmployeeID;

-- Number of Records: 2
-- ID 7 = 14 
-- ID 9 = 6