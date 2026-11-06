SELECT 
  e.firstName ||' '|| e.lastName AS [Sales Person's Name],
  c.firstName ||' '|| c.lastName AS [Customer's Name],
  m.model AS [Car Model],
  s.salesAmount AS [Sales Amount]
FROM 
  sales AS s
INNER JOIN 
  employee AS e 
ON
  s.employeeId = e.employeeId
INNER JOIN
  customer as c
ON
  s.customerId = c.customerId
INNER JOIN
  inventory AS i
ON
  s.inventoryId = i.inventoryId
INNER JOIN 
  model as m
ON
  i.modelId = m.modelId
LIMIT
  10


