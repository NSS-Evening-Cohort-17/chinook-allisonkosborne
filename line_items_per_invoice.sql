SELECT InvoiceLine.InvoiceId, 
COUNT (InvoiceLine.InvoiceLineId)
FROM InvoiceLine
GROUP BY InvoiceLine.InvoiceId