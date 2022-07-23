SELECT *
FROM
(SELECT Track.TrackID, Track.Name,
COUNT (InvoiceLine.InvoiceId) as MostPurchased
FROM Track
JOIN InvoiceLine
  ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice
  ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Track.Name)
ORDER BY MostPurchased DESC
LIMIT 5