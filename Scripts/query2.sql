SELECT
  e.firstName,
  e.lastName,
  COUNT(s.salesId) AS carsSold
FROM 
  employee as e
LEFT JOIN
  sales AS s
ON
  e.employeeId = s.employeeId  
WHERE
  e.title = 'Sales Person'
GROUP BY 
  e.firstName, e.lastName