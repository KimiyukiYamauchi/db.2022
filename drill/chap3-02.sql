-- 書いてみよう

SELECT
  PrefecturalID,
  (
    SELECT
      PrefecturalName
    FROM
      Prefecturals p
    WHERE
      p.PrefecturalID = c.PrefecturalID
  ) AS "都道府県名",
  COUNT(*) AS "顧客数"
FROM
  Customers c
GROUP BY
  PrefecturalID
;

SELECT
  Customers.PrefecturalID,
  Prefecturals.PrefecturalName AS "都道府県名",
  COUNT(*) AS "顧客数"
FROM
  Customers
    JOIN
  Prefecturals
    ON Customers.PrefecturalID = Prefecturals.PrefecturalID
GROUP BY
  Customers.PrefecturalID, Prefecturals.PrefecturalName
;

-- 練習問題
-- 第1問

SELECT
  EmployeeName, PayDate, Amount
FROM
  Salary
    JOIN
  Employees
    ON Salary.EmployeeID = Employees.EmployeeID
ORDER BY
  Salary.EmployeeID
;

-- 第2問

SELECT
  Quantity, CustomerName, ProductName, EmployeeName
FROM
  Sales A
    JOIN
  Customers B
    ON A.CustomerID = B.CustomerID
    JOIN
  Employees C
    ON A.EmployeeID = C.EmployeeID
    JOIN
  Products D
    ON A.ProductID = D.ProductID
WHERE
  Quantity >= 200
;
-- 第3問

SELECT
  A.ProductID, ProductName,
  SUM(Quantity) AS "数量合計"
FROM
  Sales AS A
    JOIN
  Products AS B
    ON A.ProductID = B.ProductID
GROUP BY
  A.ProductID, B.ProductName
HAVING
  SUM(Quantity) >= 300
;


-- 第4問

SELECT
  Quantity, CustomerName, ProductName, EmployeeName
FROM
  Sales A, Customers B, Employees C, Products D
WHERE
  A.CustomerID = B.CustomerID AND
  A.EmployeeID = C.EmployeeID AND
  A.ProductID = D.ProductID AND
  Quantity >= 200
;


-- 第5問

SELECT
  CustomerName, PrefecturalName, CustomerClassName
FROM
  Customers A, Prefecturals B, CustomerClasses C
WHERE
  A.PrefecturalID = B.PrefecturalID AND
  A.CustomerClassID = C.CustomerClassID
ORDER BY
  A.PrefecturalID
;