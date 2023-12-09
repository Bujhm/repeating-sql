/* 
Created by: Ihor Semeniuk
Create Date: 09/12/2023
Decscription: Calculate the ages of all employees
*/
SELECT
	FirstName,
    LastName,
    BirthDate,
    STRFTIME('%Y-%m-%d', BirthDate) AS [Birth Date No Timecode],
    STRFTIME('%Y-%m-%d', 'now') - STRFTIME('%Y-%m-%d', BirthDate) AS Age
FROM 
	Employee
