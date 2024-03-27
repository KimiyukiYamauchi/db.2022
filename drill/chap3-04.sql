-- テーブルProductsとSalesを結合し、ProductIDとProductNameでグループ化して
-- ProductID、ProductName、Quantityの合計(列別名は「数量合計」)
-- をProductIDの昇順で表示しなさい。
-- 但し、Salesデータが存在しないQuantityの合計は0を表示しなさい

SELECT
  p.ProductID, ProductName, 
  (
    CASE
      WHEN SUM(Quantity) IS NULL THEN 0
      ELSE SUM(Quantity)
    END
  ) AS "数量合計"
  -- SUM(Quantity) AS "数量合計"
FROM
  Products p
LEFT OUTER JOIN
  Sales s
ON p.ProductID = s.ProductID
GROUP BY
  p.ProductID, ProductName
;


-- 書いてみよう

SELECT
  ProductName, 
  AVG(Price *
    CASE
      WHEN Quantity IS NULL THEN 0
      ELSE Quantity
    END
    ) AS 平均販売価格
FROM
  Products AS p
LEFT OUTER JOIN
  Sales AS s
ON p.ProductID = s.ProductID
GROUP BY
  s.ProductID, ProductName
ORDER BY
  s.ProductID
;

SELECT
  ProductName, 
  AVG(Price * ifnull(Quantity, 0)) AS 平均販売価格
FROM
  Products AS p
LEFT OUTER JOIN
  Sales AS s
ON p.ProductID = s.ProductID
GROUP BY
  s.ProductID, ProductName
ORDER BY
  s.ProductID
;

SELECT
  P.ProductID, P.ProductName, 
  AVG(
    P.Price * S.Quantity
  ) AS "平均販売価格"
FROM
  Products AS P
    JOIN
  Sales AS S
    ON P.ProductID = S.ProductID
GROUP BY
  P.ProductID, P.ProductName
ORDER BY
  P.ProductID
;

SELECT
  P.ProductID, P.ProductName, 
  AVG(
    P.Price * S.Quantity
  ) AS "平均販売価格"
FROM
  Products AS P
    LEFT OUTER JOIN
  Sales AS S
    ON P.ProductID = S.ProductID
GROUP BY
  P.ProductID, P.ProductName
ORDER BY
  P.ProductID
;

SELECT
  P.ProductID, P.ProductName, 
  AVG(
    P.Price * 
    CASE
      WHEN S.Quantity IS NULL THEN 0
      ELSE S.Quantity
    END
  ) AS "平均販売価格"
FROM
  Products AS P
    LEFT OUTER JOIN
  Sales AS S
    ON P.ProductID = S.ProductID
GROUP BY
  P.ProductID, P.ProductName
ORDER BY
  P.ProductID
;



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
  A.CustomerID, A.CustomerName
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

SELECT
  A.EmployeeID,
  MAX(EmployeeName) AS "社員名",
  COUNT(Quantity) AS "販売件数"
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