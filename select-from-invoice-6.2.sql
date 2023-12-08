/* 
Created by: Ihor Semeniuk
Create Date: 07/12/2023
Decscription: JOINS, Simplifying using alises AS "i" or AS "c" for Invoice or Customer respectively
*/
SELECT
    c.FirstName,
    c.LastName,
    i.InvoiceId,
    i.CustomerId,
    i.InvoiceDate,
    i.Total
FROM 
	Invoice AS i
JOIN
	Customer AS c ON i.CustomerId = c.CustomerId
ORDER BY 
    c.CustomerId
