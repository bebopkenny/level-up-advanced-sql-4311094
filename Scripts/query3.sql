SELECT e.firstName, e.lastName, COUNT(s.salesId) AS carsSold
FROM employee AS e
INNER JOIN sales AS s
ON e.employeeId = s.employeeId
WHERE e.title = 'Sales Person'
GROUP BY e.employeeId, e.firstName, e.lastName
HAVING carsSold > 5