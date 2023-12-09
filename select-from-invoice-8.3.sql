/* 
Created by: Ihor Semeniuk
Create Date: 09/12/2023
Decscription: Grouping in SQL | What are the average by cities starts with L letter
*/
SELECT
    BillingCity,
    ROUND(AVG(Total), 2) AS [Average sale by City]
FROM 
	Invoice
WHERE BillingCity LIKE 'L%'
GROUP BY BillingCity
ORDER BY BillingCity DESC -- DESC, means descending order



