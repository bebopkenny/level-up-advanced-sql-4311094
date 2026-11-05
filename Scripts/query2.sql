
SELECT 
  e.firstName,
  e.lastName
FROM employee AS e
LEFT JOIN
sales AS s
ON
e.employeeId = s.employeeId
WHERE
e.employeeId NOT IN (SELECT s.employeeId FROM sales AS s)

