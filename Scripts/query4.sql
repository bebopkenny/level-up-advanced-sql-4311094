

SELECT s.customerId
FROM sales AS s
RIGHT JOIN customer AS c
ON s.customerId = c.customerId
WHERE s.customerId NOT IN ()