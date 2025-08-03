SELECT
    column_name,
    data_type,
    is_nullable,
    column_default
FROM information_schema.columns
WHERE table_schema = '販売管理'
  AND table_name = '商品'
ORDER BY ordinal_position;

SELECT * FROM 販売管理.商品 LIMIT 1;

SELECT * FROM 販売管理.商品 WHERE 商品コード = 26;

SELECT * FROM 販売管理.商品 WHERE 商品名 = '鉛筆';

SELECT * FROM 販売管理.商品 WHERE 単価 = 100 + 10;

SELECT * FROM 販売管理.商品 WHERE 割引価格 < 単価 / 2;

SELECT * FROM 販売管理.商品 WHERE 型番 IS NULL;
