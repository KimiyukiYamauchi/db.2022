-- 書いてみよう

SELECT * FROM Products;

UPDATE
  Products
SET
  Price = Price * 0.97
;



-- 練習問題
-- 第1問

SELECT * FROM Customers;

UPDATE
  Customers
SET
  CustomerCode = CustomerCode + 1000
;



-- 第2問

-- 「||」を文字列連結演算子として使用する設定
SET sql_mode = 'PIPES_AS_CONCAT';


SELECT Email FROM Employees;

UPDATE
  Employees
SET
  Email = Email || '.co.jp'
;


-- 第3問

SELECT EmployeeID, Height, Weight FROM Employees;

UPDATE
  Employees
SET
  Height = Height + 2,
  Weight = Weight - 5
;



-- 第4問

SELECT DepartmentName FROM Departments;

UPDATE
  Departments
SET
  DepartmentName = DepartmentName || '部'
;

-- 第5問

SELECT CustomerName FROM Customers;

UPDATE
  Customers
SET
  CustomerName = CustomerName ||
  CASE
    WHEN CustomerClassID = 1 THEN '御中'
    ELSE '様'
  END
;