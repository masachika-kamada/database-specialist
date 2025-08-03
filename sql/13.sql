SELECT 単価 || '円' AS 金額, 商品名 FROM 販売管理.商品 WHERE 商品名 LIKE 'ボールペン%';

-- 重複の排除 (正確には、射影では重複を排除する)
SELECT DISTINCT 単価 FROM 販売管理.商品;

-- NULL を別の値に置き換える
SELECT 商品名, COALESCE(型番, 'なし') FROM 販売管理.商品;
-- SELECT CASE WHEN 型番 IS NULL THEN 'なし' ELSE 型番 END FROM 販売管理.商品;

-- CASE WHEN 式を使用して条件分岐
SELECT 商品名,
    CASE
        WHEN 単価 <= 300 THEN '割引対象'
        ELSE '通常価格'
    END AS 価格区分
FROM 販売管理.商品;