SELECT * FROM db_cars.factorys;car_infors

SELECT count(*) AS CNT FROM factorys;

INSERT INTO factorys
(COMPANY_ID,COMPANY)
value
('CAR-01', 'AUDI');

UPDATE factorys
SET COMPANY = '패러리'
WHERE COMPANY_ID = 'CAR-01';

DELETE FROM factorys
WHERE COMPANY_ID = 'CAR-01';
