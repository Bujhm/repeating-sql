/* 
Created by: Ihor Semeniuk
Create Date: 09/12/2023
Decscription: Subqueries without aggregate functions
*/

SELECT
    InvoiceDate,
    BillingAddress,
    BillingCity
FROM 
    Invoice
WHERE 
    InvoiceDate > 
    (
        SELECT 
            InvoiceDate
        FROM 
            Invoice
        WHERE InvoiceId = 251
    ) 



