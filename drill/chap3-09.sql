-- 書いてみよう

SELECT
  e.EmployeeName AS "氏名",
  s.SaleDate AS "日付"
FROM
  Sales AS s
    JOIN
  Employees AS e
    ON s.EmployeeID = e.EmployeeID
INTERSECT
SELECT
  e.EmployeeName AS "氏名",
  s.PayDate AS "日付"
FROM
  Salary AS s
    JOIN
  Employees AS e
    ON s.EmployeeID = e.EmployeeID
;

SELECT DISTINCT
  x.氏名
, x.日付
FROM
 (
  SELECT
    e.EmployeeName AS "氏名"
  , s.SaleDate AS "日付"
  FROM
    Sales AS s
      JOIN
    Employees AS e
      ON s.EmployeeID = e.EmployeeID
 ) AS x
WHERE
  EXISTS
  (
   SELECT
     y.氏名
   , y.日付
   FROM
    (
     SELECT
       e.EmployeeName AS "氏名"
     , s.PayDate AS "日付"
     FROM
       Salary AS s
         JOIN
       Employees AS e
         ON s.EmployeeID = e.EmployeeID
    ) AS y
   WHERE
     x.氏名 = y.氏名
     AND
     x.日付 = y.日付
  )
;

-- 練習問題
-- 第1問

SELECT
  CustomerID AS "ID",
  CustomerName AS "名前"
FROM
  Customers
INTERSECT
SELECT
  EmployeeID AS "ID",
  EmployeeName AS "名前"
FROM
  Employees
ORDER BY
  ID
;

SELECT DISTINCT
  x.ID,
  x.名前
FROM
  (
    SELECT
      CustomerID AS "ID",
      CustomerName AS "名前"
    FROM
      Customers
  ) x
WHERE
  EXISTS
  (
    SELECT
      *
    FROM
      (
        SELECT
          EmployeeID AS "ID",
          EmployeeName AS "名前"
        FROM
          Employees
      ) y
    WHERE
      x.ID = y.ID AND x.名前 = y.名前
  )
ORDER BY
  x.ID
;

SELECT
  CustomerID AS "ID",
  CustomerName AS "名前"
FROM
  Customers c
WHERE
  EXISTS
  (
    SELECT
     *
    FROM
      Employees e
    WHERE
      c.CustomerID = e.EmployeeID AND c.CustomerName = e.EmployeeName
  )
ORDER BY
  c.CustomerID
;

-- 第2問
SELECT
  EmployeeID AS "ID",
  EmployeeName AS "名前"
FROM
  Employees
INTERSECT
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
INTERSECT
SELECT
  ProductID
FROM
  Sales
ORDER BY
  ProductID
;

SELECT
  ProductID
FROM
  Products p
WHERE
  EXISTS
    (
      SELECT
        ProductID
      FROM
        Sales s
      WHERE
        p.ProductID = s.ProductID
    )
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
INTERSECT
SELECT
  CustomerID, ProductID
FROM
  Sales
WHERE
  SaleDate BETWEEN '2007-01-01' AND '2007-03-31' AND Quantity >= 10
INTERSECT
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
INTERSECT
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

SELECT DISTINCT
  x.ProductID
FROM
  (
    SELECT
      s.ProductID 
    FROM
      Sales s
    JOIN
      Customers c
    ON s.CustomerID = c.CustomerID
    WHERE
      c.CustomerClassID = 2 AND s.Quantity >= 10
  ) x
WHERE
  EXISTS
    (
      SELECT
        *
      FROM
        (
          SELECT
            s.ProductID
          FROM
            Sales s
          JOIN
            Customers c
          ON s.CustomerID = c.CustomerID
          WHERE
            c.CustomerClassID = 1 AND s.Quantity >= 100
        ) y
      WHERE
        x.ProductID = y.ProductID
    )
ORDER BY
  ProductID
;