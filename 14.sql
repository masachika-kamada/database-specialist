SELECT 商品種別コード, 最終入荷日, COUNT(*) AS 商品数 FROM 販売管理.商品
GROUP BY 商品種別コード, 最終入荷日
ORDER BY 商品種別コード, 最終入荷日;

-- COUNT: 集約関数、*を指定すると全行をカウントするが、特定の列を指定するとその列の値がNULLでない行をカウントする

SELECT 商品種別コード, COUNT(DISTINCT 最終入荷日) AS 入荷日数
FROM 販売管理.商品
GROUP BY 商品種別コード;