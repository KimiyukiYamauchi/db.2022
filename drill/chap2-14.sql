-- 書いてみよう

SELECT
  HireFiscalYear AS "入社年度",
  SUM(
    CASE
      WHEN BloodType = 'A' THEN 1
      ELSE 0
    END
  ) AS "A型",
  SUM(
    CASE
      WHEN BloodType = 'B' THEN 1
      ELSE 0
    END
  ) AS "B型",
  SUM(
    CASE
      WHEN BloodType = 'O' THEN 1
      ELSE 0
    END
  ) AS "O型",
  SUM(
    CASE
      WHEN BloodType = 'AB' THEN 1
      ELSE 0
    END
  ) AS "AB型"
FROM
  Employees
GROUP BY
  HireFiscalYear
;

-- 練習問題
-- 第1問

SELECT
  HireFiscalYear AS "入社年度",
  SUM(
    CASE
      WHEN Height <= 160 THEN 1
      ELSE 0
    END
  ) AS "160cm以下",
  SUM(
    CASE
      WHEN Height > 160 AND Height <= 170 THEN 1
      ELSE 0
    END
  ) AS "170cm以下",
  SUM(
    CASE
      WHEN Height > 170 AND Height <= 180 THEN 1
      ELSE 0
    END
  ) AS "180cm以下",
  SUM(
    CASE
      WHEN Height > 180 THEN 1
      ELSE 0
    END
  ) AS "180cm超"
FROM
  Employees
GROUP BY
  HireFiscalYear
;

SELECT
  HireFiscalYear AS "入社年度",
  COUNT(
    CASE
      WHEN Height <= 160 THEN 1
      ELSE NULL
    END
  ) AS "160cm以下",
  COUNT(
    CASE
      WHEN Height > 160 AND Height <= 170 THEN 1
      ELSE NULL
    END
  ) AS "170cm以下",
  COUNT(
    CASE
      WHEN Height > 170 AND Height <= 180 THEN 1
      ELSE NULL
    END
  ) AS "180cm以下",
  COUNT(
    CASE
      WHEN Height > 180 THEN 1
      ELSE NULL
    END
  ) AS "180cm超"
FROM
  Employees
GROUP BY
  HireFiscalYear
;

-- 第2問

SELECT
  CategoryID AS "商品カテゴリID",
  SUM(
    CASE
      WHEN Price < 100 THEN 1
      ELSE 0
    END
  ) AS "100円未満",
  SUM(
    CASE
      WHEN Price >= 100 AND Price < 400 THEN 1
      ELSE 0
    END
  ) AS "400円未満",
  SUM(
    CASE
      WHEN Price >= 400 AND Price < 1000 THEN 1
      ELSE 0
    END
  ) AS "1000円未満",
  SUM(
    CASE
      WHEN Price >= 1000 THEN 1
      ELSE 0
    END
  ) AS "1000円以上"
FROM
  Products
GROUP BY
  CategoryID
;

-- 第3問

SELECT
  CustomerID AS "顧客ID",
  SUM(
    CASE
      WHEN MONTH(saleDate) = 9 THEN Quantity
      ELSE 0
    END
  ) AS "9月",
  SUM(
    CASE
      WHEN MONTH(saleDate) = 10 THEN Quantity
      ELSE 0
    END
  ) AS "10月",
  SUM(
    CASE
      WHEN MONTH(saleDate) = 11 THEN Quantity
      ELSE 0
    END
  ) AS "11月"
FROM
  Sales
GROUP BY
  CustomerID
;

-- 第4問

SELECT
  PrefecturalID AS "都道府県ID",
  SUM(
    CASE
      WHEN CustomerClassID = 1 THEN 1
      ELSE 0
    END
  ) AS "法人",
  SUM(
    CASE
      WHEN CustomerClassID = 2 THEN 1
      ELSE 0
    END
  ) AS "個人"
FROM
  Customers
GROUP BY
  PrefecturalID
;

-- 第5問

SELECT
  HireFiscalYear AS "入社年度",
  SUM(
    CASE
      WHEN Weight <= 50 THEN 1
      ELSE 0
    END
  ) AS "50kg以下",
  SUM(
    CASE
      WHEN Weight >= 51 AND Weight <= 60 THEN 1
      ELSE 0
    END
  ) AS "51～60kg",
  SUM(
    CASE
      WHEN Weight >= 61 AND Weight <= 80 THEN 1
      ELSE 0
    END
  ) AS "61～80kg",
  SUM(
    CASE
      WHEN Weight > 80 THEN 1
      ELSE 0
    END
  ) AS "80kg超"
FROM
  Employees
GROUP BY
  HireFiscalYear
;