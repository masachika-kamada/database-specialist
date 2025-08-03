-- HAVING: グルーピング後の結果に対して条件を指定する

SELECT 商品コード, SUM(数量) AS 合計数量
FROM 販売管理.売上明細
GROUP BY 商品コード
HAVING SUM(数量) > 30;