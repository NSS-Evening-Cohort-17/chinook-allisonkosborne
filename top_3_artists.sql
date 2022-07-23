SELECT Composer
FROM
(SELECT Track.TrackID, Track.Name, Track.Composer,
COUNT (Track.Composer) as BestSelling
FROM Track
JOIN InvoiceLine
  ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice
  ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Track.Name)
ORDER BY BestSelling DESC
LIMIT 3