SELECT Customer.FirstName, Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Customer
JOIN Invoice
  ON Customer.CustomerId = Invoice.CustomerId
WHERE Invoice.BillingCountry = "Brazil"