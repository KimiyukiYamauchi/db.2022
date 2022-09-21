-- 書いてみよう
SELECT
  p.ProductName,
  s1.SaleDate
FROM
  Sales AS s1
JOIN
  Products AS p
ON s1.ProductID = p.ProductID
WHERE
  s1.Quantity >
  (
    SELECT
      AVG(Quantity)
    FROM
      Sales AS s2
    WHERE
      s1.ProductID = s2.ProductID
  )
ORDER BY p.ProductID, s1.SaleDate DESC
;

-- 練習問題
-- 第1問

SELECT DISTINCT
  A.ProductID,
  B.ProductName,
  Quantity
FROM
  Sales AS A
JOIN
  Products AS B
ON A.ProductID = B.ProductID
WHERE
  A.Quantity =
  (
    SELECT
      MAX(Quantity)
    FROM
      Sales AS C
    WHERE
      ProductID = A.ProductID
  )
ORDER BY
  A.ProductID
;

SELECT
  p.ProductID,
  p.ProductName, 
  MAX(s.Quantity) AS Quantity
FROM
  Sales s
JOIN
  Products p
  ON
    s.ProductID = p.ProductID
GROUP BY
  p.ProductID, p.ProductName
ORDER BY
  p.ProductID
;

-- 第2問

SELECT
  ProductID, ProductName
FROM
  Products AS A
WHERE
  EXISTS
  (
    SELECT
      *
    FROM
      Sales AS B
    WHERE
      ProductID = A.ProductID
  )
;


-- 第3問

SELECT
  ProductID, ProductName
FROM
  Products AS A
WHERE
  NOT EXISTS
  (
    SELECT
      *
    FROM
      Sales AS B
    WHERE
      ProductID = A.ProductID
  )
;


-- 第4問

SELECT
  A.ProductID,
  ProductName,
  A.Quantity
FROM
  (
    SELECT
      ProductID,
      MAX(Quantity) AS Quantity
      -- MAX(Quantity) AS "Quantity" 
    FROM
      Sales
    GROUP BY
      ProductID
  ) AS A
JOIN
  Products AS B
ON A.ProductID = B.ProductID
ORDER BY
  A.ProductID
;

-- 第5問

SELECT
  A.ProductID, ProductName
FROM
  (
    SELECT ProductID
    FROM
      Sales
    GROUP BY
      ProductID
    HAVING
      MAX(Quantity) / 10 > AVG(Quantity)
  ) A
JOIN
  Products B
ON A.ProductID = B.ProductID
ORDER BY A.ProductID
;

SELECT
  ProductID, ProductName
FROM
  Products p
WHERE
  ProductID IN
    (
      SELECT
        ProductID
      FROM
        Sales
      WHERE
        ProductID = p.ProductID
      HAVING
        MAX(Quantity) / 10 > AVG(Quantity)
    )
ORDER BY ProductID;