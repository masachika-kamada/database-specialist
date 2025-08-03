SELECT 部署コード,
        COUNT(CASE WHEN 役職 = '主任' THEN 1 ELSE NULL END) AS 主任の数,
        COUNT(CASE WHEN 役職 = '一般社員' THEN 1 ELSE NULL END) AS 一般社員の数
FROM exam.社員
GROUP BY 部署コード
-- COUNTで人数を出しているが、データがあればカウントされるので、カウントしたくない方をNULLにしている
-- そのため、条件に当てはまるときの値はなんでもいい（hogeとかでもいい）