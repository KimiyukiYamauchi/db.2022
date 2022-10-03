-- 書いてみよう

SELECT
  *
FROM
  Products
WHERE
  ProductID NOT in
  (
    SELECT
      ProductID
    FROM
      Sales
  )
;

DELETE
FROM
  Products
WHERE
  ProductID NOT in
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
  *
FROM
  Salary
WHERE
  NOT EXISTS
  (
    SELECT
      *
    FROM
      Sales
    WHERE
      Sales.EmployeeID = Salary.EmployeeID
  )
;

DELETE
FROM
  Salary
WHERE
  EmployeeID NOT IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
  )
;


-- 第2問

SELECT
  *
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
      SUM(Quantity) < 20
  )
;

DELETE
FROM
  Products
WHERE
  ProductID NOT IN
  (
    SELECT
      ProductID
    FROM
      Sales
    GROUP BY
    ProductID
    HAVING
      SUM(Quantity) >= 20
  )
;

-- 第3問

SELECT
  *
FROM
  Customers
WHERE
  CustomerID NOT IN
  (
    SELECT
      CustomerID
    FROM
      Sales
  )
;

DELETE
FROM
  Customers
WHERE
  CustomerID NOT IN
  (
    SELECT
      CustomerID
    FROM
      Sales
  )
;

-- 第4問

SELECT
  *
FROM
  Employees
WHERE
  EmployeeID NOT IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
    GROUP BY
      EmployeeID
    HAVING
      COUNT(*) > 5
  )
;

DELETE
FROM
  Employees
WHERE
  EmployeeID NOT IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
    GROUP BY
      EmployeeID
    HAVING
      COUNT(*) > 5
  )
;

-- 第5問

SELECT
  *
FROM
  Sales
WHERE
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
      BelongTo
    WHERE
      EndDate IS NULL AND DepartmentID = 3
  )
;

DELETE
FROM
  Sales
WHERE
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
      BelongTo
    WHERE
      EndDate IS NULL AND DepartmentID = 3
  )
;