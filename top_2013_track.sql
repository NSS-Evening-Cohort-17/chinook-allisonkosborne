SELECT Name, InvoiceDate,
MAX (MostPurchased)
FROM
(SELECT Track.TrackID, Track.Name, Invoice.InvoiceDate,
COUNT (InvoiceLine.InvoiceId) as MostPurchased
FROM Track
JOIN InvoiceLine
  ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice
  ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Invoice.InvoiceDate)
WHERE InvoiceDate LIKE "2013%"
ORDER BY Name



-- WHERE Invoice.InvoiceDate = "2013%"






-- top_2013_track.sql:
-- Provide a query that shows the most purchased track(s) of 2013
