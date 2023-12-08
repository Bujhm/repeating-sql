/* 
Created by: Ihor Semeniuk
Create Date: 07/12/2023
Decscription: JOINS
*/
SELECT
    *
FROM 
	Invoice AS i
JOIN
	Customer AS c ON i.CustomerId = c.CustomerId
