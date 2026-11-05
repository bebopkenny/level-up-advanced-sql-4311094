
-- CREATE VIEW V_report AS

SELECT
  e.firstName ||' '|| e.lastName AS EmployeeName,
  SUM(s.inventoryId)
FROM employee AS e
JOIN
sales AS s
ON
e.employeeId = s.employeeId AND e.title = 'Sales Person'
GROUP BY 
  EmployeeName

