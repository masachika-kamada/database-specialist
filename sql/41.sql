-- CREATE TABLE 販売管理.返品
-- (
--     返品番号 INTEGER PRIMARY KEY,
--     -- 売上番号 INTEGER UNIQUE NOT NULL,
--     売上番号 INTEGER UNIQUE,
--     返品日付 DATE NOT NULL,
--     理由 VARCHAR(100) DEFAULT NULL
-- );

-- PRIMARY KEY: UNIQUE + NOT NULL

-- INSERT INTO 販売管理.返品 (返品番号, 売上番号, 返品日付) VALUES (1, 1, '2023-01-01');
-- INSERT INTO 販売管理.返品 (返品番号, 売上番号, 返品日付) VALUES (2, NULL, '2023-01-01');
INSERT INTO 販売管理.返品 (返品番号, 売上番号, 返品日付) VALUES (3, NULL, '2023-01-01');

-- DROP TABLE 販売管理.返品;

SELECT * FROM 販売管理.返品;
