-- 書いてみよう

SELECT * FROM Employees WHERE EmployeeID = 17;

DELETE
FROM
  Employees
WHERE
  EmployeeID = 17
;

-- 練習問題
-- 第1問

SELECT * FROM Sales WHERE SaleID = 1006;

DELETE
FROM
  Sales
WHERE
  SaleID = 1006
;

-- 第2問

SELECT * FROM Salary WHERE EmployeeID = 10 AND PayDate = '2007-10-01';

DELETE
FROM
  Salary
WHERE
  EmployeeID = 10 AND PayDate = '2007-10-01'
;

-- 第3問

SELECT * FROM Customers WHERE CustomerID >= 10000;

DELETE
FROM
  Customers
WHERE
  CustomerID >= 10000
;

-- 第4問

SELECT * FROM Products WHERE CategoryID = 1;

DELETE
FROM
  Products
WHERE
  CategoryID = 1
;

-- 第5問

SELECT * FROM Customers WHERE CustomerClassID = 2 AND PrefecturalID in (3, 5, 7, 13);

DELETE
FROM
  Customers
WHERE
  CustomerClassID = 2 AND PrefecturalID in (3, 5, 7, 13)
;