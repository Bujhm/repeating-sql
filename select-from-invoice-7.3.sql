/* 
Created by: Ihor Semeniuk
Create Date: 08/12/2023
Decscription: Creating Mailing list of US Custumers
*/
SELECT
	FirstName,
    LastName,
    `Address`,
    FirstName || ' ' || LastName || ' ' || Address || ', ' || City || ' ' || State || '' || PostalCode AS [Mailing Adres] 
FROM 
	Customer
WHERE
    Country = 'USA';