-- SELECT * FROM exam.社員28;

SELECT C1.社員コード, C1.資格 AS 資格1, C2.資格 AS 資格2
FROM exam.社員28 C1 LEFT OUTER JOIN exam.社員28 C2  -- AS を省略したエイリアス指定
ON C1.社員コード = C2.社員コード AND C1.資格 = 'FE' AND C2.資格 = 'AP'
WHERE C1.資格 = 'FE';

-- ON 句内の AND 条件:
-- C1 (左側) は全て採用されることが確定している
-- その状態で、C2 に対して AND 条件を追加すると、該当する行が存在しない場合は NULL が返される

-- WHERE 句:
-- 外部結合時に、左側のテーブル (C1) の行が全て採用された
-- その結果に対して FE のみでフィルタリングを行う
