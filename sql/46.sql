-- PostgreSQL では IDENTIFIED BY は使えません。WITH PASSWORD を使用します。
-- CREATE USER mkamada2 WITH PASSWORD 'password';

-- GRANT USAGE ON SCHEMA "販売管理" TO mkamada2;
-- GRANT SELECT ON 販売管理.会員 TO mkamada2;
-- GRANT SELECT, UPDATE(ポイント, 最終使用日) ON 販売管理.会員 TO mkamada2;

-- REVOKE SELECT ON 販売管理.会員 FROM mkamada2;

-- GRANT ALL PRIVILEGES ON TABLE 販売管理.会員 TO public;

DROP OWNED BY mkamada2;
DROP ROLE IF EXISTS mkamada2;
