
SELECT
  e.firstName ||' '||e.lastName AS [First Name and Last Name],
  m.firstName ||' '||m.lastName AS [Manager First Name and Last Name]
FROM employee AS e
INNER JOIN
  employee AS m
ON
  e.employeeId = m.managerId