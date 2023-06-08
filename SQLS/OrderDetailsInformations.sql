-- 링크 : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all
-- 조건 : 제품명,가격, 주문 갯수, 고객명 표시

SELECT  ProductName, Price, Quantity, CustomerName
FROM ((OrderDetails AS ORDDT
			INNER JOIN Products AS PRD   -- OrderDetails과 Products를 JOIN해서 상품명, 상품 가격, 주문 갯수 출력 / OR_PRD 테이블 생성됨.
			ON ORDDT.ProductID = PRD.ProductID) AS OR_PRD
		INNER JOIN Orders AS ORD         -- OR_PRD와 Orders JOIN 해서 회원 아이디 출력 / OR_PRD_C 테이블이 생성됨
		ON OR_PRD. OrderID = ORD.OrderID) AS OR_PRD_C
INNER JOIN Customers AS CUST    -- OR_PRD_C와 Customers JOIN 회원 이름 출력
ON OR_PRD_C.CustomerID = CUST.CustomerID

-- Result:
-- Number of Records: 518
