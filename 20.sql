
SELECT *
FROM 販売管理.商品
ORDER BY 商品コード DESC;
-- 昇順は ASC (デフォルト)、降順は DESC

SELECT 商品コード, SUM(数量) AS 合計数量
FROM 販売管理.売上明細
GROUP BY 商品コード
HAVING SUM(数量) > 20
ORDER BY 2;
-- ORDER BY 2 は、2番目の列（合計数量）でソートすることを意味する