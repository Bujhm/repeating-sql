/* 
Created by: Ihor Semeniuk
Create Date: 09/12/2023
Decscription: Aggregate finctions | what are our all time global sales?
*/
SELECT
	SUM(Total) AS [Total sales],
    AVG(Total) AS [Average sale],
    MAX(Total) AS [MAximum sale],
    MIN(Total) AS [Mimimum sale],
    COUNT(*) AS [Number of sales]
FROM 
	Invoice
