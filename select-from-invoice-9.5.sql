/* 
Created by: Ihor Semeniuk
Create Date: 09/12/2023
Decscription: Return multiple values from the subquery
*/
SELECT
    BillingAddress,
    InvoiceDate,
    BillingCity,
    InvoiceId
FROM
    Invoice
WHERE
    InvoiceDate IN
    (SELECT
        InvoiceDate
    FROM 
        Invoice
    WHERE 
        InvoiceId IN (251, 252, 254)
    )
/* Take a note:
    Whe use only 3 ID's here 251, 252, 254, but we return 4 records in the final result.
    It's because we return not ID's in the result of this subquery, we return 3 values of DateTime.
    So, after that in our main query we are using WHERE which compares 
    our result InvoiceDate from single row with Subquery result InvoiceDate which is 3 different InvoiceDate values
    and made filtration.
*/

