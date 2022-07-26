-- すでにcustomer表があれば削除する
DROP TABLE IF EXISTS customer;

-- cidを主キーでテーブルを作成
CREATE TABLE customer (
  cid int(3) PRIMARY KEY,
  name char(30)
);

INSERT INTO customer VALUES (1, 'YAMADA');

INSERT INTO customer VALUES (1, 'SUZUKI');
INSERT INTO customer VALUES (2, 'SUZUKI');

DROP TABLE IF EXISTS order_history;

CREATE TABLE order_history(
  cid int(3) NOT NULL,
  order_date date,
  item_cd char(10),
  FOREIGN KEY (cid) REFERENCES customer(cid)
);

INSERT INTO order_history VALUES (1, '2020-12-01', 'ABC1001');
INSERT INTO order_history VALUES (2, '2020-12-01', 'DEF2001');
INSERT INTO order_history VALUES (2, '2020-12-01', 'HIJ2001');
INSERT INTO order_history VALUES (3, '2020-12-01', 'ABC1001');

DELETE FROM customer WHERE cid = 1;