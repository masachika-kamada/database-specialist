-- AND(積) と OR(和) では、AND の方が優先される
SELECT * FROM 販売管理.商品 WHERE 単価 >= 300 AND 商品名 LIKE '鉛筆%' OR 商品名 = 'ボールペン';

SELECT * FROM 販売管理.商品 WHERE 単価 >= 300 AND (商品名 LIKE '鉛筆%' OR 商品名 = 'ボールペン');

SELECT * FROM 販売管理.商品 WHERE 最終入荷日 >= '2023-01-01';

SELECT * FROM 販売管理.商品 WHERE 最終入荷日 BETWEEN '2023-01-01' AND '2023-02-01';

SELECT * FROM 販売管理.商品 WHERE 商品名 IN ('ボールペン', '鉛筆');