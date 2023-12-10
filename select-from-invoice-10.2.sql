/* 
Created by: Ihor Semeniuk
Create Date: 10/12/2023
Decscription: Views
*/
CREATE VIEW V_AvgTotal AS
SELECT
	ROUND(AVG(Total), 2) AS [Average Total]
   
FROM 
	Invoice;

-- it's for deleting views (V_AvgTotal view name)
-- DROP VIEW IF EXISTS V_AvgTotal;  
