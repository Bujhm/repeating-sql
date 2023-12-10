/* 
Created by: Ihor Semeniuk
Create Date: 09/12/2023
Decscription: Subqueries | Gather data about all innvoices that are less than this aversge?
*/

SELECT
    InvoiceDate,
    BillingAddress,
    BillingCity,
    Total
FROM 
	Invoice
WHERE Total < (
        SELECT ROUND(AVG(Total), 2) AS [Average sale by City]
        FROM 
        Invoice
    )
ORDER BY Total DESC


