/*
Created by Ihor Semeniuk
Create Date: 07/12/2023
Description: This query displays all customers first, last names and email addresses
*/
SELECT 
	FirstName as [Customer First Name], 
	LastName as `Last Name`,
	Email as EMAIL
FROM 
	Customer
ORDER BY
	FirstName ASC,
	LastName DESC
LIMIT 10