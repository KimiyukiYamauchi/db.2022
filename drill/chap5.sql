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
  e.EmployeeID, e.EmployeeName, SUBSTR(SaleDate, 1, 7)
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


-- その5


-- その6
-- その7
-- その8
-- その9
-- その10
