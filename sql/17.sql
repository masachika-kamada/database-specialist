SELECT
    商品種別コード,
    MAX(単価) AS 最大単価,
    MIN(単価) AS 最小単価,
    AVG(単価) AS 平均単価,
    COUNT(*) AS 商品数
FROM 販売管理.商品
GROUP BY 商品種別コード;

SELECT 商品コード, SUM(数量)
FROM 販売管理.売上明細
GROUP BY 商品コード