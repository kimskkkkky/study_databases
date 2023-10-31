-- 링크 : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all
-- 조건 : Orders TABLE에서 가장 많이 주문 받은 회사 직원명과 갯수



SELECT MAX(ORDER_COUNT), LastName, FirstName -- 최대 주문량과 직원 이름
FROM (SELECT COUNT(FirstName) AS ORDER_COUNT, LastName, FirstName  --직원 이름 별로 주문수량 리스트
       FROM Orders AS T_ORD
        INNER JOIN Employees AS T_EMP
       	ON T_ORD.EmployeeID = T_EMP.EmployeeID
        GROUP BY EmployeeID);   -- FirstName이나 LastName 으로 그룹을 지으면 동명이인이 있을 수 있으니 주의

-- Result:
-- Number of Records: 1
-- MAX(ORDER_COUNT)	FirstName	LastName	ShipperName
-- 40	             Margaret	 Peacock	United Package
