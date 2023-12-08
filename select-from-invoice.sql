/* 
How many customers bought two songs at $0.99 each (my version) 

I think my version is more correct as version from lesson selects purchases, not customers
Created by: Ihor Semeniuk
Create Date: 07/12/2023
Decscription: How many customers bought two songs at $0.99 each
*/
SELECT
	DISTINCT (c.FirstName || ' ' || c.LastName) AS UniqueCustomerNamescFirstName
-- 	DISTINCT i.CustomerId 
FROM 
	InvoiceLine AS il
JOIN 
	Invoice AS i ON il.InvoiceId = i.InvoiceId
JOIN
	Customer AS c on c.CustomerId = i.CustomerId
WHERE 
	il.UnitPrice = 0.99
GROUP BY il.InvoiceId
HAVING count(il.TrackId)=2
ORDER BY i.CustomerId

-- ---------------------------------
/* 
The version (from the lesson)
*/
SELECT
	i.CustomerId,
	i.InvoiceDate,
	i.BillingAddress,
	i.BillingCity,
	i.total
FROM 
	Invoice AS i
WHERE
	i.Total = 1.98
ORDER BY i.CustomerId