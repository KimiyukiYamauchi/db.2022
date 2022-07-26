-- 書いてみよう
SELECT
ProductName  AS 商品名
,Price * 1.05 AS 税込価格
FROM
  Products
;

-- 練習問題
-- 第1問
SELECT
 Amount * 0.15 AS "給与の15％"
FROM
  Salary
;

-- 第2問
SELECT
 Height/2 AS 身長の半分
FROM
  Employees
;

SELECT
 Height*0.5 AS 身長の半分
FROM
  Employees
;

-- 第3問
SELECT
  Weight * 3 - 50 AS 体重の3倍引く50
FROM
  Employees
;

-- 第4問
SELECT
 (Price+100) * 0.3 AS "（価格＋100）の30％"
FROM
  Products
;

-- 第5問
-- 別名、ダブルコートで囲むとmysqlで動かない
SELECT
 (Quantity + 200) / 3 AS "（数量＋200）÷3"
FROM
  Sales
;