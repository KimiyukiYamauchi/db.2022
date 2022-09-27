-- 書いてみよう

SELECT * FROM Salary WHERE PayDate = '2008-02-14';

UPDATE
  Salary s
SET
  Amount = Amount +
    (
      SELECT
        (2007 - e.HireFiscalYear) * 1000
      FROM
        Employees e
      WHERE
        s.EmployeeID = e.EmployeeID
    )
WHERE
  PayDate = '2008-02-14' AND
  EXISTS
  (
    SELECT
      *
    FROM
      Employees e
    WHERE
      e.EmployeeID = s.EmployeeID
  )
;

UPDATE
  Salary s
SET
  Amount = Amount +
    (
      SELECT
        (2007 - e.HireFiscalYear) * 1000
      FROM
        Employees e
      WHERE
        s.EmployeeID = e.EmployeeID
    )
WHERE
  PayDate = '2008-02-14' AND
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
     Salary
    WHERE
      PayDate = '2008-02-14'
  )
;


-- 練習問題
-- 第1問

SET sql_mode = 'PIPES_AS_CONCAT';

SELECT * FROM Customers;

UPDATE
  Customers c
SET Address
  =
  (
    SELECT
      PrefecturalName
    FROM
      Prefecturals p
    WHERE
      p.PrefecturalID = c.PrefecturalID
  )
  || Address
;

-- 第2問

SELECT
 *
 FROM
  Salary
  WHERE
   PayDate = '2007-08-25'
  AND
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
    WHERE
      SaleDate < '2007-08-25'
  )
;

UPDATE
  Salary
SET
  Amount =
    Amount +
    (
      SELECT
        SUM(s.Quantity * p.Price) * 0.03
      FROM
        Sales s
      JOIN
        Products p
      ON s.ProductID = p.ProductID
      WHERE
        s.SaleDate < '2007-8-25'
      AND
        s.EmployeeID = Salary.EmployeeID
    )
WHERE
  PayDate = '2007-08-25' AND
  EXISTS
  (
    SELECT
      *
    FROM
      Sales
    WHERE
      SaleDate < '2007-08-25'
    AND
      EmployeeID = Salary.EmployeeID
  )
;

UPDATE
  Salary
SET
  Amount =
    Amount +
    (
      SELECT
        SUM(s.Quantity * p.Price) * 0.03
      FROM
        Sales s
      JOIN
        Products p
      ON s.ProductID = p.ProductID
      WHERE
        s.SaleDate < '2007-8-25'
      AND
        s.EmployeeID = Salary.EmployeeID
    )
WHERE
  PayDate = '2007-08-25' AND
  EmployeeID IN
  (
    SELECT
      EmployeeID
    FROM
      Sales
    WHERE
      SaleDate < '2007-08-25'
  )
;

-- 第3問

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
  )
;

UPDATE
  Products p
SET
  Price =
    (
      SELECT
        AVG(p.Price * s.Quantity)
      FROM
        Sales s
      WHERE
        ProductID = p.ProductID
    )
WHERE
  EXISTS
  (
    SELECT
      *
    FROM
      Sales
    WHERE
      ProductID = p.ProductID 
  )
;

UPDATE
  Products p
SET
  Price =
    (
      SELECT
        AVG(p.Price * Quantity)
      FROM
        Sales
      WHERE
        ProductID = p.ProductID
    )
WHERE
  ProductID IN
  (
    SELECT
      ProductID
    FROM
      Sales
  )
;

-- 第4問

SELECT * FROM Products;

UPDATE
  Products p
SET
  ProductName =
    ProductName || '(' ||
  (
    SELECT
      CategoryName
    FROM
      Categories
    WHERE
      CAtegoryID = p.CAtegoryID
  ) || ')'
;

-- 第5問

SELECT * FROM Products;

UPDATE
  Products p
SET
  ProductName =
    (
      SELECT
        SUM(Quantity)
      FROM
        Sales
      WHERE
        ProductID = p.ProductID
      GROUP BY
        ProductID
    ) 
    || '個も売れてるヒット商品！' || ProductName
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
      SUM(Quantity) >= 500
  )
;