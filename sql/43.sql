-- DROP TABLE 販売管理.返品;

-- CREATE TABLE 販売管理.返品
-- (
--     返品番号 INTEGER PRIMARY KEY,
--     返品日付 DATE NOT NULL,
--     理由 VARCHAR(100) DEFAULT NULL
-- );

-- CREATE TABLE 販売管理.返品明細
-- (
--     返品番号 INTEGER,
--     返品明細番号 INTEGER,
--     売上番号 INTEGER NOT NULL,
--     売上明細番号 INTEGER NOT NULL,
--     PRIMARY KEY (返品番号, 返品明細番号),
--     FOREIGN KEY (返品番号) REFERENCES 販売管理.返品 (返品番号),
--     FOREIGN KEY (売上番号, 売上明細番号) REFERENCES 販売管理.売上明細 (売上番号, 明細番号)
-- );

-- 返品の連絡を受けた
-- INSERT INTO 販売管理.返品 (返品番号, 返品日付, 理由) VALUES (1, '2023-01-01', '不良品');
SELECT * FROM 販売管理.返品;

-- SELECT * FROM 販売管理.売上明細;

-- 返品明細を追加
-- INSERT INTO 販売管理.返品明細 (返品番号, 返品明細番号, 売上番号, 売上明細番号) VALUES (1, 1, 3, 2);
SELECT * FROM 販売管理.返品明細;
