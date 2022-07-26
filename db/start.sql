SELECT * FROM tab1;

create table tab1
(
  ITEM_NO CHAR(5) NOT NULL,
  ITEM_NAME VARCHAR(20),
  PRICE INT(8),
  PDAY DATE
);

INSERT INTO
  tab1
  values(
    'C0001',
    'pencil',
    90,
    '2020-09-03'
  );

INSERT INTO
  tab1
  values(
    'C002', 'eraser', 100, '2020-09-15'
  ),
  (
    'C003', 'ball point pen', 150, '2020-08-30'
  );

    SELECT
      count(*)
        AS
        レコード数,
      sum(PRICE)
        AS
        合計
      from
        tab1;
SELECT
  count(*)
    AS
    レコード数,
  sum(PRICE)
    AS
    合計,
  AVG(PRICE)
    AS
    平均,
  MIN(PRICE)
    AS
    最小値,
  MAX(PRICE)
    AS
    最大値
  from
    tab1;

UPDATE tab1 set PRICE=0;

UPDATE
  tab1
  SET
    PRICE=90
  WHERE
    ITEM_NO='C0001';

UPDATE
  tab1
  SET
    PRICE=100
  WHERE
    ITEM_NO='C002';

UPDATE
  tab1
  SET
    PRICE=150
  WHERE
    ITEM_NO='C003';

DELETE FROM tab1 WHERE ITEM_NO = 'C002';
DELETE FROM tab1;

INSERT INTO
  tab1
  values('C0001', 'pencil', 90, '2020-09-03'),
  ('C0002', 'eraser', 100, '2020-09-15'),
  ('C0003', 'ball point pen', 150, '2020-08-30');

SELECT
  *
  from
    tab1;

START TRANSACTION;

DELETE FROM tab1;

SELECT * FROM tab1;

ROLLBACK;

COMMIT;