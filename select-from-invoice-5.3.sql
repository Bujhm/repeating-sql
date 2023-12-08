/* 
Created by: Ihor Semeniuk
Create Date: 07/12/2023
Decscription: How many invoices exist between $1.98 AND $5.00
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
	-- i.Total BETWEEN 1.98 AND 5.00
	i.Total IN (1.98, 3.96) -- How many invoices do we have that are exactly $1.98 or $3.96
ORDER BY i.CustomerId