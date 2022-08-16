-- 書いてみよう

SELECT
  CustomerName AS "氏名"
FROM
  Customers
UNION
SELECT
  EmployeeName AS "氏名"
FROM
  Employees
;


-- 練習問題
-- 第1問

SELECT
  CustomerID AS "ID",
  CustomerName AS "名前"
FROM
  Customers
UNION
SELECT
  EmployeeID AS "ID",
  EmployeeName AS "名前"
FROM
  Employees
ORDER BY ID
;
-- 第2問

SELECT
  EmployeeID AS "ID",
  EmployeeName AS "名前"
FROM
  Employees
UNION
SELECT
  EmployeeID AS "ID",
  EmployeeName AS "名前"
FROM
  Employees
ORDER BY ID
;

-- 第3問

SELECT
  ProductID
FROM
  Products
UNION
SELECT
  ProductID
FROM
  Sales
ORDER BY
  ProductID
;


-- 第4問

SELECT
  CustomerID, ProductID
FROM
  Sales
WHERE
  SaleDate BETWEEN '2006-10-01' AND '2006-12-31' AND Quantity >= 10
UNION
SELECT
  CustomerID, ProductID
FROM
  Sales
WHERE
  SaleDate BETWEEN '2007-01-01' AND '2007-03-31' AND Quantity >= 10
UNION
SELECT
  CustomerID, ProductID
FROM
  Sales
WHERE
  SaleDate BETWEEN '2007-04-01' AND '2007-06-30' AND Quantity >= 10
ORDER BY
  CustomerID, ProductID
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
UNION
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