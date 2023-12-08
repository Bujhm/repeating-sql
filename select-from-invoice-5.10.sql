/* 
Created by: Ihor Semeniuk
Create Date: 07/12/2023
Decscription: Get customers which cpend between $7.00 and $15.00

Sale Categories:
Baseline Perchase - Between $0.99 and $1.99
Low Purchase      - Between $2.00 and $6.99
Target Purchase   - Between $7.00 and $15.00
Top Performer     - Above $15.00
*/

SELECT
	i.CustomerId,
	i.InvoiceDate,
	i.BillingAddress,
	i.BillingCity,
	i.total,
    CASE
        WHEN i.Total < 2.00 THEN 'Baseline Perchase'
        WHEN i.Total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
        WHEN i.Total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
        ELSE 'Top Performer'
    END AS PurchaseType
FROM 
	Invoice AS i
WHERE
    PurchaseType = 'Top Performer' -- additional condition which is based on calculated field
ORDER BY i.CustomerId