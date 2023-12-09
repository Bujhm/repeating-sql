/* 
Created by: Ihor Semeniuk
Create Date: 09/12/2023
Decscription: Creating Mailing list of US Custumers
*/
SELECT
	FirstName,
    LastName,
    `Address`,
    FirstName || ' ' || LastName || ' ' || Address || ', ' || City || ' ' || State || '' || PostalCode AS [Mailing Adres],
    LENGTH(PostalCode),
    SUBSTR(postalcode, 1,5) AS [5 Digitpostalcode]
FROM 
	Customer
WHERE
    Country = 'USA';