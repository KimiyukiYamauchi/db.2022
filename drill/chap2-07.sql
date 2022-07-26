-- 書いてみよう
SELECT
 AVG(Price) AS 平均単価
FROM
  Products
;
-- 練習問題
-- 第1問
SELECT
 COUNT(*) AS お得意様数
FROM
  Customers
;
-- 第2問
SELECT
 SUM(Weight) AS 社員体重合計
FROM
  Employees
;

-- 第3問
SELECT
 MAX(Price) AS 最高額価格
FROM
  Products
;

-- 第4問
SELECT
 MIN(Weight) AS 最軽量体重
FROM
  Employees
;
-- 第5問
SELECT
 AVG(Height) AS 平均身長
, AVG(Weight) AS 平均体重
FROM
  Employees
;