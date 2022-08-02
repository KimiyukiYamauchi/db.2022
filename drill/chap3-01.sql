-- 書いてみよう

SELECT
  *
FROM
  Products
WHERE
  ProductID NOT IN
  (
    SELECT
      ProductID
    FROM
      Sales
  )
;

-- 練習問題
-- 第1問

SELECT
  EmployeeID, EmployeeName
FROM
  Employees
WHERE EmployeeID IN
(
  SELECT
    EmployeeID
  FROM
    Salary
  GROUP BY
    EmployeeID
  HAVING
    MAX(Amount) >= 300000
)
;

-- 第2問

SELECT
  SaleID, Quantity, CustomerID,
  (
    SELECT
      CustomerName
    FROM
      Customers
    WHERE
      Customers.CustomerID = Sales.CustomerID
  ) AS "顧客名"
FROM
  Sales
WHERE
  Quantity >= 100
;

-- 第3問

SELECT
  ProductID, ProductName
FROM
  Products
WHERE
  ProductID IN
  (
    SELECT
      ProductID
    FROM
      Sales
    GROUP BY
      ProductID
    HAVING
      SUM(Quantity) >= 100
  )
;


-- 第4問

SELECT
  EmployeeID, EmployeeName,
  (
    SELECT
      MAX(Amount)
    FROM
      Salary
    WHERE
      EmployeeID = Employees.EmployeeID
  ) AS "最高給与額"
FROM
  Employees
WHERE EmployeeID IN
(
  SELECT
    EmployeeID
  FROM
    Salary
  GROUP BY
    EmployeeID
  HAVING
    MAX(Amount) >= 300000
)
;


-- 第5問

SELECT
  SaleID, Quantity, CustomerID,
  (
    SELECT
      CustomerName
    FROM
      Customers
    WHERE
      Customers.CustomerID = Sales.CustomerID
  ) AS "顧客名",
  (
    SELECT
      ProductName
    FROM
      Products
    WHERE
      ProductID = Sales.ProductID
  ) AS "商品名"
FROM
  Sales
WHERE
  Quantity >= 100
;
