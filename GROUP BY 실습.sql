-- SELECT MIN(column_name)
-- FROM table_name
-- WHERE condition;

-- SELECT *
-- FROM members;

-- SELECT COUNT(MEMBERS_ID) -- (*)는 전체 레코드의 갯수를 카운트 해줌, ()안에 프라이머리키 컬럼을 넣어주면 좋음(빅데이터 분석일땐 안됨) 프라이머리키는 데이터가 없는 값이 없기 때문에 
-- FROM members
-- WHERE GENDER_CODE_ID = 'G-04'
-- GROUP BY MEMBERS_ID;  

SELECT COUNT(*)  -- 퀘스트에 COUNT가 있으면 무조건 GROUP BY를 쓴다고 생각해라, 전체에서 카운트 하는거 아니면 
FROM members
GROUP BY GENDER_CODE_ID;  

-- MIN, MAX는 GROUP BY를 잘 쓰지 않음. 
-- Alias = 테이블명, 컬럼명의 이름을 줄이거나 바꿀수 있음.
-- SELECT COUNT(*), ORS.EmployeeID AS ID  ID = EmployeeID의 약자(아무거나 내맘대로 해도됨)
-- FROM ORDERS AS ORS  ORS = ORDERS의 약자(아무거나 내맘대로 해도됨)
-- WHERE ORS.ID IN (7,9)
-- GROUP BY ORS.ID;

-- ()로 SELECT 두번 쓰기
-- SELECT COUNT(*), T_OUTER_ORS.EmployeeID
-- FROM (
-- 		SELECT T_INERS_ORS.*
-- 		FROM ORDERS AS T_INERS_ORS
-- 		WHERE T_INERS_ORS.EmployeeID IN (7,9)
-- ) AS T_OUTER_ORS
-- GROUP BY T_OUTER_ORS.EmployeeID;