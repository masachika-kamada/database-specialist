-- 内部結合
-- 直積を使用する方法
SELECT *
FROM 販売管理.商品, 販売管理.売上明細
WHERE 商品.商品コード = 売上明細.商品コード;

-- INNER JOINを使用する方法
-- INNER は省略可能 ➡ JOIN だけでも同じ意味
SELECT *
FROM 販売管理.商品 INNER JOIN 販売管理.売上明細
ON 商品.商品コード = 売上明細.商品コード;
-- USING (商品コード);  -- USING を使用すると条件を簡潔に記述可能
-- FROM 販売管理.商品 NATURAL JOIN 販売管理.売上明細;  -- NATURAL JOIN は、同じ名前のカラムを自動的に結合条件にする

-- 数の比較
SELECT
    (SELECT COUNT(*) FROM 販売管理.商品) AS 商品数,
    (SELECT COUNT(*) FROM 販売管理.売上明細) AS 明細数,
    (SELECT COUNT(*) FROM 販売管理.商品, 販売管理.売上明細) AS 直積件数,
    (SELECT COUNT(*) FROM 販売管理.商品, 販売管理.売上明細
     WHERE 商品.商品コード = 売上明細.商品コード) AS "内部結合 (CROSS JOIN) 件数",
    (SELECT COUNT(*) FROM 販売管理.商品
     INNER JOIN 販売管理.売上明細 ON 商品.商品コード = 売上明細.商品コード) AS "内部結合 (INNER JOIN) 件数";

-- 売上明細テーブルには、商品コードはあるが、商品名がない
-- 商品名ごとに、どれくらいの売上があるのかを調べる
SELECT 商品名, SUM(金額 * 数量) AS 売上金額
FROM 販売管理.商品 INNER JOIN 販売管理.売上明細
ON 商品.商品コード = 売上明細.商品コード
GROUP BY 商品名;