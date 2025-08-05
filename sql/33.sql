SELECT 商品名
FROM 販売管理.商品
WHERE EXISTS (
    SELECT *
    FROM 販売管理.売上明細
);

SELECT 商品名
FROM 販売管理.商品
WHERE EXISTS (
    SELECT *
    FROM 販売管理.売上明細
    WHERE 売上番号 = 1000
);

-- EXISTS: 副問い合わせの結果が 1 件以上存在する場合は外側を実行

-- 相関副問い合わせ: 外側のクエリの値を参照する副問い合わせ
SELECT 商品名
FROM 販売管理.商品
WHERE EXISTS (
    SELECT *
    FROM 販売管理.売上明細
    WHERE 商品コード = 商品.商品コード
);

-- （参考）書き換え

-- [INNER JOINでの書き換え]
-- SELECT DISTINCT 商品.商品名
-- FROM 販売管理.商品
-- INNER JOIN 販売管理.売上明細
--     ON 商品.商品コード = 売上明細.商品コード;

-- [IN句での書き換え]
-- SELECT 商品名
-- FROM 販売管理.商品
-- WHERE 商品コード IN (
--     SELECT DISTINCT 商品コード
--     FROM 販売管理.売上明細
-- );