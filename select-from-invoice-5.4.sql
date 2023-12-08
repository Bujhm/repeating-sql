/* 
Created by: Ihor Semeniuk
Create Date: 07/12/2023
Decscription: How many invoices were billed to Brussels. And another requirement --> Brussels, Orlando or Paris?
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
	-- i.BillingCity = 'Brussels'
	i.BillingCity IN ('Brussels','Orlando','Paris')

ORDER BY i.CustomerId