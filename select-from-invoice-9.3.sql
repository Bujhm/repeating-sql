/* 
Created by: Ihor Semeniuk
Create Date: 09/12/2023
Decscription: Subqueries in SELECT | How each indidvidual sity performing against the global aversge sales?
*/

SELECT
    BillingCity,
    AVG(Total) AS [City average],
    (
        SELECT ROUND(AVG(Total), 2)
            FROM 
        Invoice
    ) AS [Global average]
FROM Invoice
GROUP BY BillingCity
ORDER BY BillingCity


