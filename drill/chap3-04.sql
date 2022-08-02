-- 書いてみよう

SELECT
  p.ProductName,
  AVG(
    p.Price *
    CASE
      WHEN S.Quantity IS NULL THEN 0
      ELSE s.Quantity
    END
  ) AS "平均販売価格"
FROM
  Products AS P
    LEFT OUTER JOIN
  Sales AS s
    ON s.ProductID = p.ProductID
GROUP BY
  p.ProductName
;

-- 練習問題
-- 第1問

SELECT
  A.CustomerName,
  SUM(
    CASE
      WHEN Quantity IS NULL THEN 0
      ELSE Quantity
    END
  ) AS "販売数量合計"
FROM
  Customers AS A
    LEFT OUTER JOIN
  Sales AS B
    ON A.CustomerID = B.CustomerID
GROUP BY
  A.CustomerID
;


-- 第2問

SELECT
  A.EmployeeID,
  MAX(EmployeeName) AS "社員名",
  SUM(
    CASE
      WHEN Quantity IS NULL THEN 0
      ELSE 1
    END
  ) AS "販売件数"
FROM
  Employees AS A
    LEFT OUTER JOIN
  Sales AS B
    ON A.EmployeeID = B.EmployeeID
GROUP BY
  A.EmployeeID
;


-- 第3問

SELECT
  PrefecturalName,
  SUM(
    CASE
      WHEN CustomerName IS NULL THEN 0
      ELSE 1
    END
  ) AS "顧客数"
FROM
  Prefecturals AS A
    LEFT OUTER JOIN
  Customers AS B
    ON A.PrefecturalID = B.PrefecturalID
GROUP BY
  A.PrefecturalID
;

-- 第4問

SELECT
  e.EmployeeID,
  SUM(
    CASE
      WHEN Quantity IS NULL THEN 0
      ELSE 1
    END
  ) AS "販売件数"
FROM
  Employees e
    LEFT OUTER JOIN
  Sales s
    ON e.EmployeeID = s.EmployeeID
GROUP BY
  e.EmployeeID
;

SELECT
  A.EmployeeID,
  CASE
    WHEN B.CNT IS NULL THEN 0
    ELSE B.CNT
  END
  AS "販売件数"
FROM
  Employees A
    LEFT OUTER JOIN
  (
    SELECT
      EmployeeID, COUNT(*) AS CNT
    FROM
      Sales
    GROUP BY
      EmployeeID
  ) B
    ON A.EmployeeID = B.EmployeeID
;


-- 第5問

SELECT
  EmployeeName,
  CASE
    WHEN s.Amount IS NULL THEN 0
    ELSE s.Amount
  END AS "支給額"
FROM
  Employees e
    LEFT OUTER JOIN
  (
    SELECT EmployeeID, Amount
    FROM Salary
    WHERE PayDate = '2007-02-25'
  ) s
    ON e.EmployeeID = s.EmployeeID
GROUP BY
  s.EmployeeID
;

SELECT
  *
FROM
  Employees
WHERE
  EmployeeName = 'ミーヤ'
;