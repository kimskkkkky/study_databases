-- 링크 : https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_having_orderby
-- 조건 : Products Table에서 CategoryID 가 10개 이상 

SELECT COUNT(PD.CategoryID) AS PDC, PD.CategoryID
FROM Products AS PD
GROUP BY PD.CategoryID
HAVING count(PD.CategoryID) >= 10;

-- Result:
-- Number of Records: 5
-- PDC	CategoryID
-- 12	1
-- 12	2
-- 13	3
-- 10	4
-- 12	8