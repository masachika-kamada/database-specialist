CREATE TABLE "販売管理".商品種別
(
    商品種別コード    INT              NOT NULL PRIMARY KEY,
    商品種別名        VARCHAR(100)     NOT NULL
);

INSERT INTO 販売管理.商品種別 (商品種別コード, 商品種別名) VALUES (1, '文房具');
INSERT INTO 販売管理.商品種別 (商品種別コード, 商品種別名) VALUES (2, '食品');
INSERT INTO 販売管理.商品種別 (商品種別コード, 商品種別名) VALUES (3, '雑貨');
INSERT INTO 販売管理.商品種別 (商品種別コード, 商品種別名) VALUES (4, '電化製品');
INSERT INTO 販売管理.商品種別 (商品種別コード, 商品種別名) VALUES (5, '書籍');
INSERT INTO 販売管理.商品種別 (商品種別コード, 商品種別名) VALUES (6, '薬');
