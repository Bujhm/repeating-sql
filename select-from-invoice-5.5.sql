/* 
Created by: Ihor Semeniuk
Create Date: 07/12/2023
Decscription: How many invoices were billet in cities starts with B? Another requirement --> B anywhere in it's name.
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
	-- i.BillingCity Like 'B%'  --for 1st requirement
	i.BillingCity Like '%B%'    --for 2nd requirement

ORDER BY i.CustomerId