-- 書いてみよう
SELECT
  -- Weight / (Height / 100) / (Height / 100) AS BMI
  Weight / ((Height / 100) * (Height / 100)) AS BMI
  -- Weight / ((Height / 100) ^ 2) AS BMI  -- mysqlは排他的論理和になるのでNG
FROM
  Employees
;
-- 練習問題
-- 第1問
SELECT
  Height * 3 - Weight * 2.5 AS 結果
FROM
  Employees
;
-- 第2問
SELECT
  HireFiscalYear / Weight + Height AS 結果
FROM
  Employees
;
-- 第3問
SELECT
  Quantity + CustomerID * ProductID * EmployeeID AS 結果
FROM
  Sales
;
-- 第4問
SELECT
  Price - ProductCode * CategoryID AS 結果
FROM
  Products
;
-- 第5問
SELECT
  CustomerID + CustomerClassID * CustomerClassID * CustomerClassID AS 結果
FROM
  Customers
;