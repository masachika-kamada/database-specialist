SELECT 最終入荷日 FROM 販売管理.商品 WHERE 商品種別コード = 1
UNION
SELECT 最終入荷日 FROM 販売管理.商品 WHERE 商品種別コード = 2
ORDER BY 1;

-- 和両立: 項目数が同じで、項目の型も同じである必要がある
SELECT 1, 最終入荷日 FROM 販売管理.商品 WHERE 商品種別コード = 1
UNION
SELECT 2, 最終入荷日 FROM 販売管理.商品 WHERE 商品種別コード = 2
ORDER BY 1;

-- UNION: 重複を除いて結合する
-- UNION ALL: 重複を含めて結合する
SELECT
  (SELECT COUNT(*) FROM (
    SELECT 最終入荷日 FROM 販売管理.商品 WHERE 商品種別コード = 1
    UNION
    SELECT 最終入荷日 FROM 販売管理.商品 WHERE 商品種別コード = 2
  ) AS t) AS "union_count",
  (SELECT COUNT(*) FROM (
    SELECT 最終入荷日 FROM 販売管理.商品 WHERE 商品種別コード = 1
    UNION ALL
    SELECT 最終入荷日 FROM 販売管理.商品 WHERE 商品種別コード = 2
  ) AS t2) AS "union_all_count";


SELECT 商品コード, 商品種別コード FROM 販売管理.商品
EXCEPT
SELECT 商品コード, 商品種別コード FROM 販売管理.商品 WHERE 商品種別コード = 1
ORDER BY 商品コード;
