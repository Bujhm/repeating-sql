/* 
Created by: Ihor Semeniuk
Create Date: 08/12/2023
Decscription: JOINS, on more than two rables | What employees are responsible for the 10 highest individual sales?
*/
SELECT
	e.FirstName,
    e.LastName,
    i.Total
FROM 
	Invoice AS i
JOIN 
	Customer AS c ON c.CustomerId = i.CustomerId
JOIN
    Employee AS e ON c.SupportRepId = e.EmployeeId

ORDER BY i.Total DESC
LIMIT 10;
