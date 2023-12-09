/* 
Created by: Ihor Semeniuk
Create Date: 09/12/2023
Decscription: Grouping in SQL | What are the average invoice totals greather than $5.00
*/
SELECT
    BillingCity,
    ROUND(AVG(Total), 2) AS [Average sale by City]
FROM 
	Invoice
GROUP BY BillingCity
HAVING [Average sale by City] > 5 
ORDER BY BillingCity DESC -- DESC, means descending order



