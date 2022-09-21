-- 書いてみよう

SELECT
  p1.ProductName AS "商品名1",
  p2.ProductName AS "商品名2",
   (p1.Price + p2.Price) AS "セット価格"
FROM
  Products AS p1
    JOIN
  Products AS p2
    ON p1.ProductID < p2.ProductID
    AND p1.categoryID <> p2.categoryID
WHERE
  (p1.Price + p2.Price) > 2500
;

-- 練習問題
-- 第1問

SELECT
  p1.ProductName AS "商品名1",
  p2.ProductName AS "商品名2"
FROM
  Products AS p1
  JOIN
  Products AS p2
  ON p1.ProductID < p2.ProductID
  AND p1.categoryID = p2.categoryID
;

-- 第2問

SELECT
  c1.CustomerName AS "顧客名1",
  c2.CustomerName AS "顧客名2"
FROM
  Customers AS c1
JOIN
  Customers AS c2
ON c1.CustomerID < c2.CustomerID
AND c1.PrefecturalID = c2.PrefecturalID
AND c1.CustomerClassID = c2.CustomerClassID
;

-- 第3問

SELECT
  me.EmployeeName AS "従業員名1",
  you.EmployeeName AS "従業員名2"
FROM
  Employees me
JOIN
  Employees you
ON me.EmployeeID <> you.EmployeeID
AND me.Birthday > you.Birthday
;


-- 第4問

SELECT
  c1.CategoryName AS "カテゴリ名1",
  c2.CategoryName AS "カテゴリ名2"
FROM
  Categories c1
JOIN
  Categories c2
ON
  c1.CategoryID < c2.CategoryID
;



-- 第5問

SELECT
  c1.CustomerName AS "顧客名1",
  c2.CustomerName AS "顧客名2"
FROM
  Customers AS c1
JOIN
  Customers AS c2
ON c1.CustomerID < c2.CustomerID
AND c1.PrefecturalID = c2.PrefecturalID
AND c1.CustomerClassID = c2.CustomerClassID
AND (c1.PrefecturalID <> 13 OR c2.PrefecturalID <> 13)
;

SELECT
  c1.CustomerName AS "顧客名1",
  c2.CustomerName AS "顧客名2"
FROM
  Customers AS c1
JOIN
  Customers AS c2
  ON c1.CustomerID < c2.CustomerID
      AND c1.PrefecturalID = c2.PrefecturalID
      AND c1.CustomerClassID = c2.CustomerClassID
WHERE
  c1.PrefecturalID <> 13 OR c2.PrefecturalID <> 13
;
