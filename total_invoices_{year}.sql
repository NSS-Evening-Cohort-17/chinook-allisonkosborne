SELECT COUNT(Invoice.InvoiceId)
FROM Invoice
WHERE Invoice.InvoiceDate
LIKE '2009%' OR Invoice.InvoiceDate LIKE '2011%'
