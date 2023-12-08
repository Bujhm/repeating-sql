/* 
Created by: Ihor Semeniuk
Create Date: 07/12/2023
Decscription: Get all invoices who's billing city is starts with P or starts with D?
*/

-- % -> i dont catre what comes next
SELECT
	i.CustomerId,
	i.InvoiceDate,
	i.BillingAddress,
	i.BillingCity,
	i.total
FROM 
	Invoice AS i
WHERE
    i.BillingCity LIKE 'P%' OR i.BillingCity LIKE 'D%'
ORDER BY i.CustomerId