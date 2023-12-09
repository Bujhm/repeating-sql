/* 
Created by: Ihor Semeniuk
Create Date: 09/12/2023
Decscription: Nesting functions
*/
SELECT
	ROUND(SUM(Total), 2) AS [Total sales],
    ROUND(AVG(Total), 2) AS [Average sale],
    MAX(Total) AS [MAximum sale],
    MIN(Total) AS [Minimum sale],
    COUNT(*) AS [Number of sales]
FROM 
	Invoice
