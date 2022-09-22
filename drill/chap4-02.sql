-- 書いてみよう

select * from salary where paydate = '2008-02-14';

INSERT
INTO Salary
(
  SalaryID,
  EmployeeID,
  PayDate,
  Amount
)
SELECT
  s.EmployeeID + 100000,
  S.EmployeeID,
  '2008-02-14',
  SUM(s.Quantity * p.Price * 0.001)
FROM
  Sales AS s
    JOIN
  Products AS p
    ON s.ProductID = p.ProductID
GROUP BY
  s.EmployeeID + 100000, s.EmployeeID
;


-- 練習問題
-- 第1問

select * from salary where paydate = '2007-10-01';

INSERT
INTO Salary
(
  SalaryID,
  EmployeeID,
  PayDate,
  Amount
)
SELECT
  EmployeeID + 20000,
  EmployeeID,
  '2007-10-01',
  20000
FROM
  Employees
WHERE
  HireFiscalYear <= 1993
;


-- 第2問

SELECT * FROM Customers WHERE CustomerID >= 10000;

INSERT
INTO Customers
(
  CustomerCode,
  CustomerID,
  Address,
  PrefecturalID,
  CustomerClassID,
  CustomerName
)
SELECT
  EmployeeID + 10000,
  EmployeeID + 10000,
  '江戸川区西小岩',
  13,
  2,
  EmployeeName
FROM
  Employees
WHERE
  HireFiscalYear <= 1988
;

-- 第3問

SELECT * FROM Sales WHERE SaleID >= 30000;

INSERT
INTO Sales
(
  SaleID,
  Quantity,
  CustomerID,
  ProductID,
  SaleDate,
  EmployeeID
)
SELECT
  EmployeeID + 30000,
  10,
  10,
  20,
  '2007-09-01',
  EmployeeID
FROM
  Employees
WHERE
  BloodType = 'O'
;


-- 第4問

SELECT * FROM Sales WHERE SaleID >= 40000;

INSERT
INTO Sales
(
  SaleID,
  Quantity,
  EmployeeID,
  ProductID,
  SaleDate,
  CustomerID
)
SELECT
  CustomerID + 40000,
  20,
  5,
  21,
  '2007-09-05',
  CustomerID
FROM
  Customers
WHERE
  PrefecturalID = 8
;


-- 第5問

SELECT * FROM Sales WHERE SaleID >= 50000;

INSERT
INTO Sales
(
  SaleID,
  Quantity,
  CustomerID,
  EmployeeID,
  SaleDate,
  ProductID
)
SELECT
  ProductID + 50000,
  30,
  15,
  2,
  '2007-09-10',
  ProductID
FROM
  Products
WHERE
  CategoryID = 5
;