-- その1

SELECT
  'INSERT INTO Pref_Back VALUES (' || PrefecturalID || ',\'' || PrefecturalName || '\');' AS "都道府県のINSERT文"
FROM
  Prefecturals
;

SELECT
  'INSERT INTO Pref_Back VALUES (' || PrefecturalID || ',''' || PrefecturalName || ''');' AS "都道府県のINSERT文"
FROM
  Prefecturals
;


-- その2

-- mysqlはOK、squatはNG
SELECT
  SUBSTR(SaleDate, 1, 7) AS "年月",
  SUM(
    Quantity *
    (
      SELECT
        Price
      FROM
        Products
      WHERE
        ProductID = Sales.ProductID
    )
  ) AS "販売合計金額"
FROM
  Sales
GROUP BY
  SUBSTR(SaleDate, 1, 7)
;

-- mysqlはNG、squatはjavaでエラー
SELECT
  SUBSTR(CAST(SaleDate AS VARCHAR), 1, 7) AS "年月",
  SUM(
    Quantity *
    (
      SELECT
        Price
      FROM
        Products
      WHERE
        ProductID = Sales.ProductID
    )
  ) AS "販売合計金額"
FROM
  Sales
GROUP BY
  SUBSTR(CAST(SaleDate AS VARCHAR), 1, 7)
;

-- mysql、squatどちらもOK
SELECT
  SUBSTR(SaleDate, 1, 7) AS "年月",
  SUM(s.Quantity*p.Price) AS "販売合計金額"
FROM
  Sales s
JOIN
  Products p
ON s.ProductID = p.ProductID
GROUP BY
  SUBSTR(SaleDate, 1, 7)
ORDER BY
  "年月"
;

-- その3

-- mysqlはOK、squatはNG
SELECT
  e.EmployeeID,
  e.EmployeeName,
  SUBSTR(SaleDate, 1, 7) AS "年月",
  CASE
    WHEN SUM(s.Quantity*p.Price) IS NULL THEN 0
    ELSE SUM(s.Quantity*p.Price)
  END AS "販売合計金額"
FROM
  Sales s
JOIN
  Products p
ON s.ProductID = p.ProductID
RIGHT OUTER JOIN
  Employees e
ON s.EmployeeID = e.EmployeeID
GROUP BY
  e.EmployeeID, e.EmployeeName, 年月
;

-- mysql、squatともにOK

SELECT
  e.EmployeeID,
  e.EmployeeName,
  x.年月,
  CASE
    WHEN SUM(x.販売金額) IS NULL THEN 0
    ELSE SUM(x.販売金額)
  END AS "販売合計金額"
FROM
  Employees e
LEFT OUTER JOIN
  (
    SELECT
      s.EmployeeID,
      SUBSTR(s.SaleDate, 1, 7) AS "年月",
      s.Quantity*p.Price AS "販売金額"
    FROM
      Sales s
    JOIN
      Products p
    ON s.ProductID = p.ProductID
  ) x
ON e.EmployeeID = x.EmployeeID
GROUP BY
  e.EmployeeID, e.EmployeeName, x.年月
ORDER BY
  e.EmployeeID, e.EmployeeName, x.年月
;

-- その4
-- mysqlはOK、squatはNG
-- mysqlはgroup byで列別名が使える

SELECT
  s.ProductID,
  p.ProductName,
  SUBSTR(s.SaleDate, 1, 7) AS "年月",
  SUM(s.Quantity * p.Price) AS "販売合計金額"
FROM
  Sales s
JOIN
  Products p
ON s.ProductID = p.ProductID
WHERE
  p.CategoryID IN (1, 3, 9) 
GROUP BY
  s.ProductID, p.ProductName, 年月
HAVING
  SUM(s.Quantity*p.Price) > 5000
ORDER BY
  s.ProductID, p.ProductName, 年月 DESC
;

-- mysql、squatともにOK

SELECT
  s.ProductID,
  p.ProductName,
  SUBSTR(s.SaleDate, 1, 7) AS "年月",
  SUM(s.Quantity * p.Price) AS "販売合計金額"
FROM
  Sales s
JOIN
  Products p
ON s.ProductID = p.ProductID
WHERE
  p.CategoryID IN (1, 3, 9) 
GROUP BY
  s.ProductID, p.ProductName, SUBSTR(s.SaleDate, 1, 7)
HAVING
  SUM(s.Quantity*p.Price) > 5000
ORDER BY
  s.ProductID, p.ProductName, 年月 DESC
;

-- その5

SELECT
  c.PrefecturalID,
  c.CustomerName,
  p.ProductName,
  SUM(s.Quantity*p.Price) AS "販売合計金額"
FROM
  Customers c
JOIN
  Sales s
ON c.CustomerID = s.CustomerID
JOIN
  Products p
ON s.ProductID = p.ProductID
GROUP BY
  c.CustomerID, c.CustomerName, p.ProductName
ORDER BY
  c.CustomerID, c.CustomerName, p.ProductName
;

-- その6

SELECT
  c.PrefecturalID,
  pref.PrefecturalName,
  p.ProductName,
  SUM(p.Price*s.Quantity) AS "販売合計金額"
FROM
  Sales s
JOIN
  Products p
ON s.ProductID = p.ProductID
JOIN
  Customers c
ON s.CustomerID = c.CustomerID
JOIN
  Prefecturals pref
ON c.PrefecturalID = pref.PrefecturalID
GROUP BY
  c.PrefecturalID, p.ProductName, p.ProductName
ORDER BY
  c.PrefecturalID, p.ProductName, p.ProductName
;

-- その7

SELECT
  b.DepartmentID,
  d.DepartmentName,
  SUBSTR(s.PayDate, 1, 7) AS "年月",
  AVG(s.Amount) AS "平均給与"
FROM
  Salary s
JOIN
  BelongTo b
ON s.EmployeeID = b.EmployeeID AND b.EndDate IS NULL
JOIN
  Departments d
ON b.DepartmentID = d.DepartmentID
WHERE
  s.PayDate BETWEEN '2007-01-01' AND '2007-12-31'
GROUP BY
  b.DepartmentID, d.DepartmentName, SUBSTR(s.PayDate, 1, 7)
ORDER BY
  b.DepartmentID, d.DepartmentName, SUBSTR(s.PayDate, 1, 7)
;

SELECT
  b.DepartmentID,
  d.DepartmentName,
  SUBSTR(s.PayDate, 1, 7) AS "年月",
  AVG(s.Amount) AS "平均給与"
FROM
  Salary s
JOIN
  BelongTo b
ON 
    s.EmployeeID = b.EmployeeID 
  AND
    s.PayDate >= b.StartDate
  AND
    s.PayDate <=
      CASE
        WHEN b.EndDate IS NULL THEN '9999-12-31'
        ELSE b.EndDate
      END
JOIN
  Departments d
ON b.DepartmentID = d.DepartmentID
WHERE
  s.PayDate BETWEEN '2007-01-01' AND '2007-12-31'
GROUP BY
  b.DepartmentID, d.DepartmentName, SUBSTR(s.PayDate, 1, 7)
ORDER BY
  b.DepartmentID, d.DepartmentName, SUBSTR(s.PayDate, 1, 7)
;

-- その8

SELECT
  SUBSTR(s.SaleDate,1, 7) AS "年月",
  SUM(
    CASE
      WHEN p.CategoryID = 1 THEN p.Price
      ELSE 0
    END
    * s.Quantity
  ) AS "CT1",
  SUM(
    CASE
      WHEN p.CategoryID = 2 THEN p.Price
      ELSE 0
    END
    * s.Quantity
  ) AS "CT2",
  SUM(
    CASE
      WHEN p.CategoryID = 3 THEN p.Price
      ELSE 0
    END
    * s.Quantity
  ) AS "CT3",
  SUM(
    CASE
      WHEN p.CategoryID = 4 THEN p.Price
      ELSE 0
    END
    * s.Quantity
  ) AS "CT4",
  SUM(
    CASE
      WHEN p.CategoryID = 5 THEN p.Price
      ELSE 0
    END
    * s.Quantity
  ) AS "CT5",
  SUM(
    CASE
      WHEN p.CategoryID = 6 THEN p.Price
      ELSE 0
    END
    * s.Quantity
  ) AS "CT6",
  SUM(
    CASE
      WHEN p.CategoryID = 7 THEN p.Price
      ELSE 0
    END
    * s.Quantity
  ) AS "CT7",
  SUM(
    CASE
      WHEN p.CategoryID = 8 THEN p.Price
      ELSE 0
    END
    * s.Quantity
  ) AS "CT8",
  SUM(
    CASE
      WHEN p.CategoryID = 9 THEN p.Price
      ELSE 0
    END
    * s.Quantity
  ) AS "CT9",
  SUM(
    CASE
      WHEN p.CategoryID = 10 THEN p.Price
      ELSE 0
    END
    * s.Quantity
  ) AS "CT10"

FROM
  Sales s
JOIN
  Products p
ON
  s.ProductID = p.ProductID
GROUP BY
  SUBSTR(s.SaleDate,1, 7)
ORDER BY
  年月
;

-- その9

-- squatはOK、mysqlはNG

SELECT
  ProductID,
  ProductName,
  "6月販売金額",
  "7月販売金額",
  CASE
    WHEN "7月販売金額" > "6月販売金額" THEN '↑'
    WHEN "7月販売金額" < "6月販売金額" THEN '↓'

    ELSE '→'
  END
  AS "対6月増減",
  "8月販売金額",
  CASE
    WHEN "8月販売金額" > "7月販売金額" THEN '↑'
    WHEN "8月販売金額" < "7月販売金額" THEN '↓'
    ELSE '→'
  END
  AS "対7月増減"
FROM
  (
    SELECT
      p.ProductID,
      p.ProductName,
      SUM(
        CASE
          WHEN s.Quantity IS NULL THEN 0
          WHEN SUBSTR(s.SaleDate, 1, 7) = '2007-06' THEN s.Quantity
          ELSE 0
        END * p.Price
      ) AS "6月販売金額",
      SUM(
        CASE
          WHEN s.Quantity IS NULL THEN 0
          WHEN SUBSTR(s.SaleDate, 1, 7) = '2007-07' THEN s.Quantity
          ELSE 0
        END * p.Price
      ) AS "7月販売金額",
      SUM(
        CASE
          WHEN s.Quantity IS NULL THEN 0
          WHEN SUBSTR(s.SaleDate, 1, 7) = '2007-08' THEN s.Quantity
          ELSE 0
        END * p.Price

      ) AS "8月販売金額"
    FROM
      Sales s
    RIGHT OUTER JOIN
      Products p
    ON s.ProductID = p.ProductID
    GROUP BY
      p.ProductID
  ) x
ORDER BY
  ProductID
;

-- 解答例を参考に作成したが、mysqlでNG、解答例もNG
SELECT
  x.ProductID,
  x.ProductName,
  x.A6 AS "6月販売金額",
  x.A7 AS "7月販売金額",
  CASE
    WHEN x.A7 > x.A6 THEN '↑'
    WHEN x.A7 < x.A6 THEN '↓'
    ELSE '→'
  END
  AS "対6月増減",
  x.A8 AS "8月販売金額"
  -- CASE
  --   WHEN x.A8 > x.A7 THEN '↑'
  --   WHEN x.A8 < x.A7 THEN '↓'
  --   ELSE '→'
  -- END
  -- AS "対7月増減"
FROM
  (
    SELECT
      p.ProductID,
      p.ProductName,
      SUM(
        CASE
          WHEN s.Quantity IS NULL THEN 0
          WHEN SUBSTR(s.SaleDate, 1, 7) = '2007-06' THEN s.Quantity
          ELSE 0
        END * p.Price
      ) AS "A6",
      SUM(
        CASE
          WHEN s.Quantity IS NULL THEN 0
          WHEN SUBSTR(s.SaleDate, 1, 7) = '2007-07' THEN s.Quantity
          ELSE 0
        END * p.Price
      ) AS "A7",
      SUM(
        CASE
          WHEN s.Quantity IS NULL THEN 0
          WHEN SUBSTR(s.SaleDate, 1, 7) = '2007-08' THEN s.Quantity
          ELSE 0
        END * p.Price

      ) AS "A8"
    FROM
      Sales s
    RIGHT OUTER JOIN
      Products p
    ON s.ProductID = p.ProductID
    GROUP BY
      p.ProductID
  ) x
ORDER BY
  ProductID
;

-- その10

SELECT * FROM Customers;

SELECT
  concat(
    CustomerClassID,
    CASE
      WHEN PrefecturalID < 10 THEN concat('0', PrefecturalID)
      ELSE PrefecturalID
    END, 
    concat('0', substr(CustomerCode, 2, 3))
  ) AS "test"
FROM
  Customers;

UPDATE
  Customers
SET
  CustomerCode =
    concat(
      CustomerClassID,
      CASE
        WHEN PrefecturalID < 10 THEN concat('0', PrefecturalID)
        ELSE PrefecturalID
      END, 
      concat('0', substr(CustomerCode, 2, 3))
    )
;