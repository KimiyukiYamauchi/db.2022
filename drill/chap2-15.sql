-- 書いてみよう

SELECT
  ProductName
FROM
  Products
ORDER BY
  Price
;

-- 練習問題
-- 第1問

SELECT
  EmployeeID, EmployeeName, BirthDay
FROM
  Employees
ORDER BY
  BirthDay
;

-- 第2問

SELECT
  SaleID, Quantity, CustomerID, ProductID, saleDate
FROM
  Sales
ORDER BY
  CustomerID, ProductID, SaleDate DESC
;

-- 第3問

SELECT
  CategoryID,
  COUNT(*) AS "商品数"
FROM
  Products
WHERE
  Price <= 1000
GROUP BY
  CategoryID
HAVING
  COUNT(*) < 5
ORDER BY
  CategoryID
;

-- 第4問

SELECT
  EmployeeID AS "社員ID",
  SUM(Amount) AS "給与合計"
FROM
  Salary
GROUP BY
  EmployeeID
ORDER BY
  SUM(Amount) DESC
;

-- 第5問

SELECT
  DepartmentID AS "部署ID",
  COUNT(*) "レコード数"
FROM
  BelongTo
WHERE
  EndDate IS NULL
GROUP BY
  DepartmentID
ORDER BY
  COUNT(*) DESC
;