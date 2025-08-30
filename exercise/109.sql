-- create table exam.月末商品在庫109 (
--     商品コード varchar(20) not null,
--     商品名 varchar(100) not null,
--     在庫数 int check (在庫数 >= 0)
-- );

-- INSERT INTO exam.月末商品在庫109 (商品コード, 商品名, 在庫数)
-- VALUES
--     ('S001', 'A', 100),
--     ('S002', 'B', 250),
--     ('S003', 'C', 300),
--     ('S004', 'D', 450),
--     ('S005', 'E', 200);

-- select * from exam.月末商品在庫109;

-- create table exam.当月商品出荷実績109 (
--     商品コード varchar(20) not null,
--     商品出荷日 date not null,
--     出荷数 int check (出荷数 > 0)
-- );

-- INSERT INTO exam.当月商品出荷実績109 (商品コード, 商品出荷日, 出荷数)
-- VALUES
--     ('S001', '2017-03-01', 50),
--     ('S003', '2017-03-05', 150),
--     ('S001', '2017-03-10', 100),
--     ('S005', '2017-03-15', 100),
--     ('S005', '2017-03-20', 250),
--     ('S003', '2017-03-25', 150);

-- CREATE VIEW exam.商品別出荷実績109 (商品コード, 出荷実績数, 月末在庫数)
--     AS SELECT 月末商品在庫109.商品コード, SUM(出荷数), 在庫数
--         FROM exam.月末商品在庫109 LEFT OUTER JOIN exam.当月商品出荷実績109
--         ON 月末商品在庫109.商品コード = 当月商品出荷実績109.商品コード
--         GROUP BY 月末商品在庫109.商品コード, 在庫数;

-- 作成したビューの確認
-- SELECT * FROM exam.商品別出荷実績109
-- ORDER BY 商品コード;

-- NULLに明示的に整数型を指定
SELECT SUM(value) FROM (VALUES (NULL::integer)) AS t(value);
