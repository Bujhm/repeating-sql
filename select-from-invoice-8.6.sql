/* 
Created by: Ihor Semeniuk
Create Date: 09/12/2023
Decscription: Grouping by more than one field at a time | What are the average invoice totals by billing country & city?
*/
SELECT
    BillingCity,
    BillingCountry,
    ROUND(AVG(Total), 2) AS [Average sale by City]
FROM 
	Invoice
GROUP BY BillingCity, BillingCountry
ORDER BY BillingCountry


