SELECT 商品名
FROM 販売管理.商品
WHERE 商品コード = (
    SELECT 商品コード
    FROM 販売管理.売上明細
    WHERE 売上番号 = 1 AND 明細番号 = 1
);

SELECT 数量
FROM 販売管理.売上明細
WHERE 売上番号 = 3;

SELECT 商品コード, 数量
FROM 販売管理.売上明細
WHERE 数量 > ALL (
    SELECT 数量
    FROM 販売管理.売上明細
    WHERE 売上番号 = 3
);

-- ALL: 副問い合わせの結果の全てよりも大きい
-- SOME (ANY): 副問い合わせの結果のいずれかよりも大きい
