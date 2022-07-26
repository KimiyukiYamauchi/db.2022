-- パイプ文字（ASCII 124）を文字列連結演算子として使用
SET sql_mode = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION,PIPES_AS_CONCAT';
SET GLOBAL sql_mode = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION,PIPES_AS_CONCAT';

-- 書いてみよう
SELECT
 CustomerName || '様' AS お名前
FROM
  Customers
;
-- 練習問題
-- 第1問
SELECT
  EmployeeName || 'さん' AS "社員名"
FROM
  Employees
;

-- 第2問
SELECT
 'E-MAIL:' || Email AS メールアドレス
FROM
  Employees
;

-- 第3問
SELECT
 EmployeeName || 'さんの' || 'E-MAIL:' || Email AS 連絡先
FROM
  Employees
;

-- 第4問
SELECT
 CustomerName || '様のお住まいは' || Address AS お得意様連絡先
FROM
  Customers
;
-- 第5問
SELECT
 '社員' || EmployeeName || 'さんの血液型は' || BloodType || '型' AS 社員血液型
FROM
  Employees
;