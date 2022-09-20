-- 書いてみよう

SELECT
  DepartmentName AS "部門名",
  AVG(s.Amount) AS "部門別平均給与額"
FROM
  Salary AS s
    JOIN
  Employees AS e
    ON s.EmployeeID = e.EmployeeID
    JOIN
  BelongTo AS b
    ON e.EmployeeID = b.EmployeeID
    JOIN
  Departments AS d
    ON b.DepartmentID = d.DepartmentID
-- WHERE
--   b.EndDate IS NULL
GROUP BY
  d.DepartmentName
;

SELECT
  d.DepartmentName AS "部門名",
  AVG(s.Amount) AS "部門別平均給与額"
FROM
  Salary AS s
    JOIN
  BelongTo AS b
    ON s.EmployeeID = b.EmployeeID
      JOIN
    Departments AS D
      ON b.DepartmentID = d.DepartmentID
WHERE
  b.EndDate is NULL
GROUP BY
  d.DepartmentName
;

-- 練習問題
-- 第1問

SELECT
  C.CategoryID,
  CategoryName AS "カテゴリ名",
  SUM(A.Quantity) AS "数量合計"
FROM
  Sales AS A
    JOIN
  Products AS B
    ON A.ProductID = B.ProductID
    JOIN
  Categories AS C
    ON B.CategoryID = C.CategoryID
GROUP BY
  C.CategoryID, C.CategoryName
;

SELECT
  C.CategoryID,
  MIN(CategoryName) AS "カテゴリ名",
  SUM(A.Quantity) AS "数量合計"
FROM
  Sales AS A
    JOIN
  Products AS B
    ON A.ProductID = B.ProductID
    JOIN
  Categories AS C
    ON B.CategoryID = C.CategoryID
GROUP BY
  C.CategoryID
;

SELECT
  C.CategoryID,
  CategoryName AS "カテゴリ名",
  SUM(A.Quantity) AS "数量合計"
FROM
  Sales AS A
    JOIN
  Products AS B
    ON A.ProductID = B.ProductID
    JOIN
  Categories AS C
    ON B.CategoryID = C.CategoryID
GROUP BY
  C.CategoryID
;

-- 第2問

SELECT
  SUM(Quantity) AS "合計数量",
  B.PrefecturalID,
  C.PrefecturalName AS "県名"
FROM
  Sales AS A
    JOIN
  Customers AS B
    ON A.CustomerID = B.CustomerID
    JOIN
  Prefecturals AS C
    ON B.PrefecturalID = C.PrefecturalID
GROUP BY
  B.PrefecturalID, C.PrefecturalName
;

-- 第3問

SELECT
  MAX(Quantity) AS "最大数量",
  B.CustomerClassID,
  C.CustomerClassName AS "顧客クラス名"
FROM
  Sales AS A
    JOIN
  Customers AS B
    ON A.CustomerID = B.CustomerID
    JOIN
  CustomerClasses AS C
    ON B.CustomerClassID = C.CustomerClassID
GROUP BY
  B.CustomerClassID, C.CustomerClassName
;

-- 第4問

SELECT
  SUM(Quantity) AS "合計数量",
  B.PrefecturalID,
  C.PrefecturalName AS "県名"
FROM
  Sales AS A,  Customers AS B, Prefecturals AS C
WHERE
  A.CustomerID = B.CustomerID AND
  B.PrefecturalID = C.PrefecturalID
GROUP BY
  B.PrefecturalID, C.PrefecturalName
;

-- 第5問

SELECT
  MAX(Quantity) AS "最大数量",
  B.CustomerClassID,
  C.CustomerClassName AS "顧客クラス名"
FROM
  Sales AS A, Customers AS B, CustomerClasses AS C
WHERE
  A.CustomerID = B.CustomerID AND
  B.CustomerClassID = C.CustomerClassID
GROUP BY
  B.CustomerClassID, C.CustomerClassName
;
