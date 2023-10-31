-- SELECT T_MEMS. *, T_MEMS_LOG.EMAIL                                    -- 컬럼을 지정해주지 않으면 중복 컬럼이 그냥 보여짐
-- FROM members AS T_MEMS                                                -- 대부분 PRIMARY KEY가 있는 테이블을 먼저 써줌
-- 	INNER JOIN members_login AS T_MEMS_LOG                               -- INNER JOIN을 입력하지 않으면 자동으로 INNER JOIN됨
--     ON T_MEMS .MEMBERS_ID = T_MEMS_LOG.MEMBERS_ID                     -- 어떤 조건으로 JOIN할것인가 =CONDITION = JOIN의 WHERE이므로 AND가 사용 가능


SELECT COUNT(*), T_MEMS.AGE    
FROM members AS T_MEMS 
	INNER JOIN members_login AS T_MEMS_LOG  
    ON T_MEMS .MEMBERS_ID = T_MEMS_LOG.MEMBERS_ID                 
GROUP BY T_MEMS.AGE ;