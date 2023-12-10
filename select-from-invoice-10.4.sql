/* 
Created by: Ihor Semeniuk
Create Date: 10/12/2023
Decscription: Views & Joins
*/
CREATE VIEW V_Tracks_InvoiceLine AS
SELECT
	il.InvoiceId,
	il.UnitPrice,
	il.Quantity,
    t.Name,
	t.Composer,
	t.Milliseconds
FROM 
	InvoiceLine il
JOIN Track t
ON t.TrackId = il.TrackId
