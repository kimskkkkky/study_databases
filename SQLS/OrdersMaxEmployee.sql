-- 링크 : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all
-- 조건 : Orders TABLE에서 가장 많이 주문 받은 회사 직원명과 갯수



SELECT MAX(ORDER_COUNT), FirstName, LastName, ShipperName  -- 최대 주문량과 직원 이름, 회사이름
FROM (SELECT COUNT(FirstName) AS ORDER_COUNT, FirstName, LastName, ShipperName  --직원 이름 별로 주문수량, 회사 이름 리스트
       FROM (Orders AS T_ORD
       		INNER JOIN Employees AS T_EMP
       		ON T_ORD.EmployeeID = T_EMP.EmployeeID)
        INNER JOIN Shippers AS T_SHP
        ON T_ORD.ShipperID = T_SHP.ShipperID 
       	GROUP BY FirstName);

-- Result:
-- Number of Records: 1
-- MAX(ORDER_COUNT)	FirstName	LastName	ShipperName
-- 40	             Margaret	 Peacock	United Package
