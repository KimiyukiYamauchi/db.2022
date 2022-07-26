-- 書いてみよう
SELECT
  EmployeeName AS 氏名
FROM
  Employees
WHERE
  Height >= 180
;
-- 練習問題
-- 第1問
SELECT
  ProductName
FROM
  Products
WHERE
  Price >= 2500
;
-- 第2問
SELECT
  EmployeeName, Weight
FROM
  Employees
WHERE
  Weight >= 70
;


-- 第3問
SELECT
  EmployeeName, Height
FROM
  Employees
WHERE
  Height BETWEEN 160 AND 180
;

-- 第4問
SELECT
  SaleID
FROM
  Sales
WHERE
  SaleDate >= '2007-06-01'
;
-- 第5問
SELECT
  EmployeeName, Height, Weight
FROM
  Employees
WHERE
  Height >= 170 AND Weight >= 60
;