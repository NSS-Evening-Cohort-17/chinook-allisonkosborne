SELECT InvoiceLine.InvoiceLineId, Track.Name, Artist.Name
FROM InvoiceLine
JOIN Track
  ON InvoiceLine.TrackId = Track.TrackId
JOIN Artist
  ON Track.Composer = Artist.Name