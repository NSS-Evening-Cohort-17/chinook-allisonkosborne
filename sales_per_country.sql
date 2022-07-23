SELECT Invoice.BillingCountry, 
SUM (Invoice.Total) as Total_Sales
FROM Employee
JOIN Customer
  ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice
  ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Invoice.BillingCountry