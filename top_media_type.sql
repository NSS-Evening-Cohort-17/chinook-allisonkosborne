SELECT *
FROM
(SELECT MediaType.Name, 
COUNT (InvoiceLine.InvoiceId) as MostPurchased
FROM Invoice
JOIN InvoiceLine
  ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Track
  ON InvoiceLine.TrackId = Track.TrackId
JOIN MediaType
  ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY Track.MediaTypeId)
ORDER BY MostPurchased DESC
LIMIT 1