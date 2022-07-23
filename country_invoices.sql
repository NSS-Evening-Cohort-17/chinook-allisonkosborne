SELECT Invoice.BillingCountry,
COUNT (Invoice.InvoiceId)
FROM Invoice
GROUP BY Invoice.BillingCountry