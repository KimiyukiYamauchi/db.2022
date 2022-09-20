CREATE VIEW AvgSalaryByDept
  (
    DepartmentName, AvgAmount
  )
AS
SELECT
  d.DepartmentName AS "部門名",
  AVG(s.Amount) AS "部門別平均給与額"
FROM
  Salary AS s
    JOIN
  BelongTo AS b
    ON s.EmployeeID = b.EmployeeID
    JOIN
  Departments AS d
    ON b.DepartmentID = d.DepartmentID
GROUP BY
  d.DepartmentID
;

CREATE VIEW AvgSalaryByDept
  (
    DepartmentName, AvgAmount
  )
AS
SELECT
  d.DepartmentName,
  AVG(s.Amount)
FROM
  Salary AS s
    JOIN
  BelongTo AS b
    ON s.EmployeeID = b.EmployeeID
    JOIN
  Departments AS d
    ON b.DepartmentID = d.DepartmentID
GROUP BY
  d.DepartmentID
;

SELECT
  *
FROM
  AvgSalaryByDept
WHERE
  DepartmentName = '販売'
;