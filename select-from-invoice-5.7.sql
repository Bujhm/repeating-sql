/* 
Created by: Ihor Semeniuk
Create Date: 07/12/2023
Decscription: How many invoices were billed after 2010-05-22 00:00:00?
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
    DATE(i.InvoiceDate) > '2010-05-22' AND i.Total < 3.00
ORDER BY i.CustomerId