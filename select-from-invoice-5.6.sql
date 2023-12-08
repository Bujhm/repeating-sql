/* 
Created by: Ihor Semeniuk
Create Date: 07/12/2023
Decscription: How many invoices were billed on 2010-05-22 00:00:00?
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
	-- i.InvoiceDate = '2010-05-22 00:00:00'
    DATE(i.InvoiceDate) = '2010-05-22'
ORDER BY i.CustomerId