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
SET
  Quantity = Quantity + 10
WHERE
  CustomerID = 10 AND ProductID = 5 AND SaleDate >= '2007-05-31'
;


-- 第5問

SELECT * FROM Products WHERE CategoryID = 7;

UPDATE
  Products
SET
  Price =
    CASE
      WHEN Price >= 2000 THEN Price * 0.8
      WHEN Price >= 1000 THEN Price * 0.9
      ELSE Price
    END
WHERE
  CategoryID = 7
;