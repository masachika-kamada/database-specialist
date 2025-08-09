-- DROP TABLE 販売管理.返品;

-- CREATE TABLE 販売管理.返品
-- (
--     返品番号 INTEGER PRIMARY KEY,
--     売上番号
--         INTEGER
--         UNIQUE
--         NOT NULL
--         REFERENCES 販売管理.売上 (売上番号)
--         ON DELETE CASCADE,
--     返品日付 DATE NOT NULL,
--     理由 VARCHAR(100) DEFAULT NULL
--     -- ,
--     -- PRIMARY KEY(返品番号),
--     -- UNIQUE(売上番号),
--     -- FOREIGN KEY(売上番号) REFERENCES 販売管理.売上 (売上番号) ON DELETE CASCADE
-- );

-- INSERT INTO 販売管理.返品 (返品番号, 売上番号, 返品日付) VALUES (1, 1, '2023-01-01');
-- INSERT INTO 販売管理.返品 (返品番号, 売上番号, 返品日付) VALUES (2, 999, '2023-01-01');
-- 売上番号は 100 までしか存在しないので、外部キー制約に違反する
-- INSERT INTO 販売管理.返品 (返品番号, 売上番号, 返品日付) VALUES (3, 5, '2023-01-01');

SELECT * FROM 販売管理.売上
WHERE 売上番号 = 5;

DELETE FROM 販売管理.売上
WHERE 売上番号 = 5;
-- ON DELETE CASCADE を設定しているので、返品も削除される

SELECT * FROM 販売管理.返品;

-- INSERT INTO 販売管理.売上 (売上番号, 売上日時, 会員コード, 利用ポイント) VALUES (5, '2024-04-29 21:01:00', 2, 8856);

-- ON DELETE の候補
-- ON DELETE SET NULL: NULLにする
-- ON DELETE NO ACTION: 何もしない
