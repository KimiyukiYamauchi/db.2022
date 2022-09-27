-- 書いてみよう

SELECT * FROM Products WHERE ProductID IN
 (SELECT ProductID FROM Sales GROUP BY ProductID HAVING SUM(Quantity) > 100);

UPDATE
  Products
SET
  Price = Price * 1.01
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
      SUM(Quantity) > 100
  )
;


-- 練習問題
-- 第1問

SELECT
  *
FROM
  Products
WHERE
  ProductID NOT IN
  (
    SELECT ProductID FROM Sales
  )
;

UPDATE
  Products
SET
  Price = Price * 0.97
WHERE
  ProductID NOT IN
  (
    SELECT ProductID FROM Sales
  )
;


-- 第2問

SELECT
  *
FROM
  Salary
WHERE
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
    GROUP BY
      EmployeeID
    HAVING
      COUNT(*) < 10
  )
  AND PayDate = '2007-10-01'
;

UPDATE
  Salary
SET
  Amount = Amount * 0.95
WHERE
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
    GROUP BY
      EmployeeID
    HAVING
      COUNT(*) < 10
  )
  AND PayDate = '2007-10-01'
;



-- 第3問

SELECT
  *
FROM
  Salary
WHERE
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
    GROUP BY
      EmployeeID
    HAVING
      COUNT(*) >= 50
  )
  AND PayDate = '2007-10-01'
;

UPDATE
  Salary
SET
  Amount = Amount * 1.1
WHERE
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
    GROUP BY
      EmployeeID
    HAVING
      COUNT(*) >= 50
  )
  AND PayDate = '2007-10-01'
;

-- 第4問


SELECT
  *
FROM
  Salary
WHERE
  EmployeeID  NOT IN
    (
      SELECT
        EmployeeID
      FROM
        Sales
      WHERE
        SaleDate <= '2007-08-25'
    )
  AND PayDate = '2007-08-25'
;

UPDATE
  Salary
SET
  Amount = Amount * 0.9
WHERE
  EmployeeID  NOT IN
    (
      SELECT
        EmployeeID
      FROM
        Sales
      WHERE
        SaleDate <= '2007-08-25'
    )
  AND PayDate = '2007-08-25'
;

-- 第5問

SELECT
  *
FROM
  Salary
WHERE
  EmployeeID IN
    (
      SELECT
        EmployeeID
      FROM
        Sales s
      JOIN
        Customers c
      ON s.CustomerID = c.CustomerID
      WHERE
        c.CustomerClassID = 1 AND s.SaleDate <= '2007-08-25'
    )
    AND PayDate = '2007-08-25'
;

UPDATE
  Salary
SET
  Amount = Amount * 1.1
WHERE
  EmployeeID IN
    (
      SELECT
        EmployeeID
      FROM
        Sales s
      JOIN
        Customers c
      ON s.CustomerID = c.CustomerID
      WHERE
        c.CustomerClassID = 1 AND s.SaleDate <= '2007-08-25'
    )
    AND PayDate = '2007-08-25'
;