-- 書いてみよう
SELECT
 COUNT(*) AS 子のつく社員の人数
FROM
  Employees
WHERE
  EmployeeName LIKE '%子'
;
-- 練習問題
-- 第1問
SELECT
  CustomerName
FROM
  Customers
WHERE
  CustomerName LIKE '%株式会社%'
;
-- 第2問
SELECT
  AVG(Height) AS 平均身長
FROM
  Employees
WHERE
  EmployeeName LIKE '%ー%'
;

-- 第3問
SELECT
  COUNT(CustomerName) AS 顧客数
FROM
  Customers
WHERE
  CustomerName NOT LIKE '%株式会社%'
;

-- 第4問

SELECT
  EmployeeName, Height
FROM
  Employees
WHERE
  EmployeeName LIKE '%リ%' AND Height <= 160
;
-- 第5問

SELECT
  *
FROM
  Customers
WHERE
  CustomerName NOT LIKE '%株式会社%' AND Address LIKE '%江戸川区%'
;