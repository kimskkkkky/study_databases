--  링크 :https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_alias_column0
-- 조건 CategoryName가 Produce, Beverages 제품에 갯수 각각 표시
-- where 완료 후 가상 Table로 group by 진행

SELECT COUNT(*) AS CATN, OUT_CAT.CategoryName
FROM (
		SELECT CAT.*
		FROM Categories AS CAT
		WHERE CAT.CategoryName IN ('Produce','Beverages')
) AS OUT_CAT
GROUP BY OUT_CAT.CategoryName;

-- Result:
-- CATN	CategoryName
-- 1	Beverages
-- 1	Produce