-- CREATE TABLE exam.R3PM1_物件 (
--     物件コード varchar(20) not null PRIMARY KEY,
--     物件名 varchar(100) not null,
--     沿線 varchar(50) not null,
--     エアコン varchar(1) check (エアコン in ('Y', 'N')) not null,
--     オートロック varchar(1) check (オートロック in ('Y', 'N')) not null
-- );

-- INSERT INTO exam.R3PM1_物件 (物件コード, 物件名, 沿線, エアコン, オートロック) VALUES
-- ('A001', 'グリーンハイツ', '山手線', 'Y', 'Y'),
-- ('A002', 'サンシャインマンション', '中央線', 'N', 'Y'),
-- ('A003', 'ブルースカイアパートメント', '山手線', 'Y', 'N'),
-- ('A004', 'レインボーハウス', '東海道線', 'N', 'N'),
-- ('A005', 'シティタワー', '中央線', 'Y', 'Y');

-- SELECT * FROM exam.R3PM1_物件;
SELECT * FROM exam.R3PM1_物件
ORDER BY エアコン, オートロック DESC, 物件コード;

-- CREATE TABLE exam.R3PM1_設備 (
--     設備コード varchar(20) not null PRIMARY KEY,
--     設備名 varchar(100) not null
-- );

-- INSERT INTO exam.R3PM1_設備 (設備コード, 設備名) VALUES
-- ('A1', 'エアコン'),
-- ('A2', 'オートロック');

SELECT * FROM exam.R3PM1_設備;

-- 複合主キーを設定したい場合は列ごとにPRIMARY KEYを付与せず、
-- テーブルレベルで PRIMARY KEY (col1, col2, ...) の形で1つだけ宣言する。
-- CREATE TABLE exam.R3PM1_物件設備 (
--     物件コード varchar(20) NOT NULL,
--     設備コード varchar(20) NOT NULL,
--     設置済個数 int NOT NULL CHECK (設置済個数 >= 0),
--     CONSTRAINT R3PM1_物件設備_pkey PRIMARY KEY (物件コード, 設備コード),
--     CONSTRAINT fk_物件設備_物件 FOREIGN KEY (物件コード) REFERENCES exam.R3PM1_物件(物件コード),
--     CONSTRAINT fk_物件設備_設備 FOREIGN KEY (設備コード) REFERENCES exam.R3PM1_設備(設備コード)
-- );

-- INSERT INTO exam.R3PM1_物件設備 (物件コード, 設備コード, 設置済個数)
-- SELECT 物件コード, 'A1', 1 FROM exam.R3PM1_物件 WHERE エアコン = 'Y'
-- UNION ALL
-- SELECT 物件コード, 'A2', 1 FROM exam.R3PM1_物件 WHERE オートロック = 'Y';

SELECT * FROM exam.R3PM1_物件設備;