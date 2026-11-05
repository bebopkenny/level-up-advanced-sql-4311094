SELECT 
  e.firstName,
  e.lastName,
  s.soldDate
FROM employee AS e
INNER JOIN
  sales AS S
ON
  e.employeeId = s.employeeId
WHERE
  COUNT(s.soldDate) > 5
GROUP BY
  s.employeeId
