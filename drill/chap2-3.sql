-- 書いてみよう
SELECT
 ProductName As 商品名
, Price As 単価
FROM
  Products
;

-- 練習問題
-- 第1問
SELECT
 EmployeeName AS 社員名
FROM
  Employees
;

-- 第2問
SELECT
 CustomerCode AS 顧客コード
, CustomerName AS 顧客名
FROM
  Customers
;

-- 第3問
SELECT
 ProductCode AS 商品コード
,ProductName AS 商品名
,Price AS 価格
FROM
  Products
;

-- 第4問
SELECT
 CustomerName AS 顧客名
,CustomerName AS 得意先名
FROM
  Customers
;

-- 第5問
SELECT
 EmployeeName AS 社員名
,Email AS メールアドレス
,Email AS 連絡先
FROM
  Employees
;