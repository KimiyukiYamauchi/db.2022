-- 書いてみよう

SELECT DISTINCT
  Address AS "住所"
FROM
  Customers
;

-- 練習問題
-- 第1問

SELECT DISTINCT
  HireFiscalYear
FROM
  Employees
;

-- 第2問

SELECT DISTINCT
  CustomerID, ProductID
FROM
  Sales
;

-- 第3問

SELECT DISTINCT
  CustomerClassID, PrefecturalID
FROM
  Customers
;

-- 第4問

SELECT DISTINCT
  CustomerID, ProductID, EmployeeID
FROM
  Sales
;

-- 第5問

SELECT DISTINCT
  Price, CategoryID
FROM
  Products
;