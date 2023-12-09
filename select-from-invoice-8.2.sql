/* 
Created by: Ihor Semeniuk
Create Date: 09/12/2023
Decscription: Grouping in SQL | What are the average invoice totals by city
*/
SELECT
    BillingCity,
    ROUND(AVG(Total), 2) AS [Average sale by City]
FROM 
	Invoice
GROUP BY BillingCity


