SELECT *
FROM 販売管理.売上
INNER JOIN 販売管理.売上明細 USING (売上番号)
INNER JOIN 販売管理.商品 USING (商品コード)

-- 3つのテーブルを結合
-- 結合条件が順に（左側に）つながるように順序を指定する必要がある
