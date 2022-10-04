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
-- その9
-- その10
