SELECT
  e.firstName,
  e.lastName,
  MIN(s.salesAmount) AS minSale,
  MAX(s.salesAmount) AS maxSale,
  s.soldDate
FROM
  employee AS e
LEFT JOIN
  sales AS s
ON
  e.employeeId = s.employeeId AND e.title = 'Sales Person'
WHERE
  s.salesAmount NOT NULL
GROUP BY
  e.employeeId, e.firstName, e.lastName