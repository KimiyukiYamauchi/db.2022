-- 書いてみよう

SELECT * FROM Customers WHERE CustomerID = 5;

UPDATE
  Customers
SET
  ADDRESS = '世田谷区たがやせ1丁目'
WHERE
  CustomerID = 5
;


-- 練習問題
-- 第1問

SELECT * FROM Employees WHERE EmployeeID = 10;

UPDATE
  Employees
SET
  Height = Height + 5
WHERE
  EmployeeID = 10
;


-- 第2問

SELECT * FROM Salary WHERE EmployeeID = 5 AND PayDate = '2007-03-25';

UPDATE
  Salary
SET
  Amount = Amount + 20000my
WHERE
  EmployeeID = 5 AND PayDate = '2007-03-25'
;


-- 第3問

SELECT * FROM Employees WHERE BloodType = 'AB';

UPDATE
  Employees
SET
  Height = Height - 2, Weight = Weight + 3
WHERE
  BloodType = 'AB'
;


-- 第4問

SELECT * FROM Sales WHERE CustomerID = 10 AND ProductID = 5 AND SaleDate >= '2007-05-31';

UPDATE
  Sales
WHERE
  CustomerID = 10 AND ProductID = 5 AND SaleDate >= '2007-05-31'
;


-- 第5問

