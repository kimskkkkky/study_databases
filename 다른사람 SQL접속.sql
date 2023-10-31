CREATE USER 'yojulab'@'%' IDENTIFIED BY '!yojulab*';
-- 유저 생성

GRANT ALL PRIVILEGES ON *.* TO 'yojulab'@'%' WITH GRANT OPTION;
-- 생성한 유저한테 권한 부여

FLUSH PRIVILEGES;
-- 뭐였지..? 서버를 끄지말고 실행해줘라는데....