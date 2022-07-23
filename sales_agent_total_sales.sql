SELECT Employee.FirstName, Employee.LastName, 
SUM (Invoice.Total)
FROM Employee
JOIN Customer
  ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice
  ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Employee.FirstName, Employee.LastName