SELECT SUM(Invoice.Total)
FROM Invoice
WHERE Invoice.InvoiceDate
LIKE '2009%' OR Invoice.InvoiceDate LIKE '2011%'