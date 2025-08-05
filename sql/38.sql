SELECT COUNT(*) FROM 販売管理.会員;

SELECT * FROM 販売管理.会員 LIMIT 1;

-- INSERT INTO 販売管理.会員
-- VALUES (101, '山田太郎', 500, '2023-10-01');

-- SELECT COUNT(*) FROM 販売管理.会員;

-- DELETE FROM 販売管理.会員
-- WHERE 会員コード = 101;

-- INSERT INTO 販売管理.会員 (会員コード, 氏名, ポイント, 最終使用日)
-- SELECT 102, 氏名, ポイント, 最終使用日 FROM 販売管理.会員
-- WHERE 会員コード = 1;

SELECT * FROM 販売管理.会員
WHERE 会員コード IN (1, 101, 102);

UPDATE 販売管理.会員
SET 氏名 = '骨川スネ夫', ポイント = 1000, 最終使用日 = '2025-10-01'
WHERE 会員コード = 102;

SELECT * FROM 販売管理.会員
WHERE 会員コード = 102;
