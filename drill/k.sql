SELECT
  ProductName,
  s1.SaleDate
FROM
  Sales s1
JOIN
  Products p
ON s1.ProductID = p.ProductID
WHERE
  s1.Quantity >
  (
    SELECT
      AVG(Quantity)
    FROM
      Sales s2
    WHERE
      s1.ProductID = s2.ProductID
  )
ORDER BY
  p.ProductID, s1.SaleDate DESC
;

SELECT DISTINCT
  s1.ProductID,
  ProductName,
  s1.Quantity
FROM
  Sales s1
JOIN
  Products p
ON s1.ProductID = p.ProductID
WHERE
  s1.Quantity =
  (
    SELECT
      MAX(Quantity)
    FROM
      Sales s2
    WHERE
      s1.ProductID = s2.ProductID
  )
ORDER BY
  ProductID
;

SELECT
  A.ProductID,
  ProductName
FROM
  Products A
WHERE
  EXISTS
  (
    SELECT
      *
    FROM
      Sales B
    WHERE
      A.ProductID = B.ProductID
  )
;

SELECT
  A.ProductID,
  ProductName
FROM
  Products A
WHERE
  NOT EXISTS
  (
    SELECT
      *
    FROM
      Sales B
    WHERE
      A.ProductID = B.ProductID
  )
;

SELECT DISTINCT
  s.ProductID,
  ProductName,
  s.Quantity
FROM
  (
    SELECT
      ProductID,
      MAX(Quantity) Quantity
    FROM
      Sales
    GROUP BY
      ProductID
  ) s
JOIN
  Products p
ON s.ProductID = p.ProductID
ORDER BY
  ProductID
;

SELECT DISTINCT
  s1.ProductID,
  ProductName
FROM
  Sales s1
JOIN
  Products p
ON s1.ProductID = p.ProductID
WHERE
  s1.ProductID =
  (
    SELECT
      s2.ProductID
    FROM
      Sales s2
    WHERE
      s1.ProductID = s2.ProductID
    HAVING
      MAX(Quantity) / 10 >= AVG(Quantity)
  )
ORDER BY
  s1.ProductID
;

SELECT
  e.EmployeeID,
  EmployeeName AS "社員名",
  COUNT(Quantity) AS "販売件数"
FROM
  Employees e
LEFT OUTER JOIN
  Sales s
ON e.EmployeeID = s.EmployeeID
GROUP BY
  e.EmployeeID
;