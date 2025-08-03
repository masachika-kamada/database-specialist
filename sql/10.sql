SELECT * FROM 販売管理.商品 WHERE 商品名 LIKE 'ボールペン%';

SELECT * FROM 販売管理.商品 WHERE 商品名 LIKE '%ラーメン%';

-- NOT LIKE は LIKE の逆を考える
-- SELECT * FROM 販売管理.商品 WHERE 商品名 NOT LIKE '定規%';

SELECT * FROM 販売管理.商品 WHERE 商品名 LIKE 'ボールペン%' AND 単価 <= 160;

SELECT * FROM 販売管理.商品 WHERE 商品名 = 'ボールペン' OR 商品名 = '鉛筆';