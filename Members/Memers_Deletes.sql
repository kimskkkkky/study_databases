-- DELETE FROM table_name WHERE condition;


-- DB_MEMBERS의 모든 데이터를 삭제 한다.
-- FOREIGN KEY 데이터를 먼저 삭제하고 PRIMARY KEY 데이터를 삭제한다.

DELETE FROM members_hobby ;
DELETE FROM members_login ;
DELETE FROM hobby_code ;
DELETE FROM members ;
DELETE FROM address_code ;
DELETE FROM gender_code ;car_infors