-- 링크 : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all
-- 조건 : Orders TABLE에서 가장 많이 주문 받은 회사 직원명과 갯수
SELECT COUNT(FirstName) AS ORDER_COUNT, FirstName, ShipperName
FROM (
		Orders AS T_ORD
		INNER JOIN Employees AS T_EMP
		ON T_ORD.EmployeeID = T_EMP.EmployeeID)
  	INNER JOIN Shippers AS T_SHP
    ON T_ORD.ShipperID = T_SHP.ShipperID 
GROUP BY FirstName;

-- Result:
-- Number of Records: 9
-- ORDER_COUNT	LastName	FirstName	ShipperName
-- 20	         Fuller	     Andrew	     Speedy Express
-- 6	         Dodsworth	    Anne	Federal Shipping
-- 31	          Leverling	   Janet	 Speedy Express
-- 27	          Callahan	    Laura	 Federal Shipping
-- 40	          Peacock	   Margaret	  United Package
-- 18	          Suyama	  Michael	   Speedy Express
-- 29	           Davolio	    Nancy	 Speedy Express
-- 14	            King	    Robert	 Federal Shipping
-- 11	           Buchanan	    Steven	  Federal Shipping
