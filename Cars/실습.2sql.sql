INSERT INTO `options`
(OPTION_ID,CAR_INFOR_ID,OPTION_INFOR_ID)
value
('O006', 'CI001', 'OI005');

INSERT INTO `OPTIONS`
(OPTION_ID, CAR_INFOR_ID, OPTION_INFOR_ID)
value
('O008', 'CI001', 'OI003')
;

INSERT INTO `OPTIONS`
(OPTION_ID, CAR_INFOR_ID, OPTION_INFOR_ID)
value
('O007', 'CI002', 'OI004')
;

DELETE FROM `options`
WHERE CAR_INFOR_ID = 'CI001' AND OPTION_INFOR_ID = 'OI003';