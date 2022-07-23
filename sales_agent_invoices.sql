SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId
FROM Employee
JOIN Customer 
 ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice 
  ON Customer.CustomerId = Invoice.CustomerId
WHERE Employee.Title = "Sales Support Agent"