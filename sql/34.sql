-- SELECT DISTINCT tbl1.col1
SELECT *
FROM(VALUES
    (1, 11),
    (3, 33),
    (9, 99)
) AS tbl1(col1, col2)
LEFT OUTER JOIN (VALUES
    (3, 33),
    (9, 99)
) AS tbl2(col1, col2)
ON tbl1.col1 = tbl2.col1;
