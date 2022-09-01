-- 書いてみよう

select * from products;

INSERT
INTO Products
(
  ProductID, ProductName, Price, CategoryID
)
VALUES
(
  101, 'サカナまっしぐら', 270, 5
)
;



-- 練習問題
-- 第1問
select * from employees;
INSERT
INTO Employees
(
  EmployeeID, EmployeeName, Height, Weight, Email, HireFiscalYear, BirthDay, BloodType
)
VALUES
(
  31, 'モクモク', 170, 60, 'moku@nekoyasudo', 2007, '1989-08-08', 'AB'
)
;

-- 第2問
select * from belongto;

INSERT
INTO BelongTo
(
  BelongID, EmployeeID, DepartmentID, StartDate
)
VALUES
(
  35, 31, 1, '2007-09-01'
)
;


-- 第3問
select * from sales order by saleid;

INSERT
INTO Sales
(
  SaleID, Quantity, CustomerID, ProductID, EmployeeID, SaleDate
)
VALUES
(
  1006, 10, 1, 40, 31, '2007-09-01'
)
;

-- 第4問
select * from salary order by salaryid;

INSERT
INTO Salary
(
  SalaryID, EmployeeID, PayDate, Amount
)
VALUES
(
  354, 31, '2007-09-05', 100000
)
;

-- 第5問
select * from Customers order by CustomerID;

INSERT
INTO Customers
(
  CustomerID, CustomerName, Address, CustomerClassID, PrefecturalID
)
VALUES
(
  31, '有限会社貉商会', '和歌山県吉野郡', 1, 30
)
;