-- 書いてみよう

SELECT
  EmployeeName
FROM
  Employees
EXCEPT
SELECT
  e.EmployeeName
FROM
  Sales AS s
JOIN
  Employees AS e
ON s.EmployeeID = e.EmployeeID
;

-- 練習問題
-- 第1問

SELECT
  CustomerID AS "ID",
  CustomerName AS "名前"
FROM
  Customers
EXCEPT
SELECT
  EmployeeID AS "ID",
  EmployeeName AS "名前"
FROM
  Employees
ORDER BY
  ID
;

-- 第2問

SELECT
  EmployeeID AS "ID",
  EmployeeName AS "名前"
FROM
  Employees
EXCEPT
SELECT
  EmployeeID AS "ID",
  EmployeeName AS "名前"
FROM
  Employees
ORDER BY
  ID
;

-- 第3問

SELECT
  ProductID
FROM
  Products
EXCEPT
SELECT
  ProductID
FROM
  Sales
ORDER BY
ProductID
;

-- 第4問

SELECT
  s.ProductID
FROM
  Sales s
JOIN
  Customers c
ON s.CustomerID = c.CustomerID
WHERE
  c.CustomerClassID = 1 AND s.Quantity >= 100
EXCEPT
SELECT
  s.ProductID
FROM
  Sales s
JOIN
  Customers c
ON s.CustomerID = c.CustomerID
WHERE
  c.CustomerClassID = 2 AND s.Quantity >= 10
ORDER BY
  ProductID
;

-- 第5問

SELECT
  s.ProductID
FROM
  Sales s
JOIN
  Customers c
ON s.CustomerID = c.CustomerID
WHERE
  c.CustomerClassID = 2 AND s.Quantity >= 10
EXCEPT
SELECT
  s.ProductID
FROM
  Sales s
JOIN
  Customers c
ON s.CustomerID = c.CustomerID
WHERE
  c.CustomerClassID = 1 AND s.Quantity >= 100
ORDER BY
  ProductID
;