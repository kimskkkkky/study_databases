-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- SELECT *
-- FROM members
-- ORDER BY AGE;

-- 회원정보같은 데이터는 바뀐 데이터를 확인하며 바뀐 데이터만 넣는것 보다 한 사람의 모든 제이터를 통째로 넣어주는게 좋다.

UPDATE members
SET AGE = 29
WHERE AGE IN(30, 32);