SELECT 商品コード FROM 販売管理.商品 WHERE 商品種別コード = 2
INTERSECT
SELECT 商品コード FROM 販売管理.売上明細 WHERE 金額 > 300;

-- 積 (共通集合)
-- 和両立である必要がある

SELECT 商品種別コード FROM 販売管理.商品
INTERSECT ALL
SELECT 商品種別コード FROM 販売管理.商品 WHERE 商品種別コード = 1;

-- 和と差と同じく、積も ALL を付けると DISTINCT ではなくなる (重複を含む)

-- 直積: 組み合わせ
SELECT * FROM 販売管理.商品 LIMIT 1;
SELECT * FROM 販売管理.会員 LIMIT 1;

SELECT * FROM 販売管理.商品, 販売管理.会員;

SELECT
    (SELECT COUNT(*) FROM 販売管理.商品) AS 商品数,
    (SELECT COUNT(*) FROM 販売管理.会員) AS 会員数,
    (SELECT COUNT(*) FROM 販売管理.商品 CROSS JOIN 販売管理.会員) AS 組み合わせ数;
-- サブクエリ (副問い合わせ) を SELECT の中で使用するときは括弧で囲む必要がある