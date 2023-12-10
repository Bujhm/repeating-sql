/* 
Created by: Ihor Semeniuk
Create Date: 10/12/2023
Decscription: Subquery and DISTINCT | Which tracks are NOT selling
*/
SELECT 
    TrackId,
    Composer,
    Name
FROM 
    Track
WHERE 
    TrackId NOT IN 
    (SELECT
        DISTINCT
        TrackId
    FROM
        InvoiceLine

    ORDER BY 
        TrackId
    )
