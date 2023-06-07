-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;
-- ORDER BY column1, column2, ... ASC|DESC;

-- SELECT *
-- FROM members
-- WHERE TELEPHONE LIKE '010%'  -- '%'||'010'||'%'(이렇게 사용하는게 좋다)
-- ORDER BY 

-- SELECT *
-- FROM members
-- WHERE AGE BETWEEN 25 AND 35
-- ORDER BY GENDER_CODE_ID, AGE DESC;

-- SELECT *
-- FROM members
-- WHERE AGE IN (32,28);

SELECT NAME, AGE
FROM members
WHERE TELEPHONE LIKE '%1%' AND GENDER_CODE_ID = 'G-01';