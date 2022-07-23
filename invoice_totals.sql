SELECT Invoice.Total, Customer.FirstName, Customer.LastName, Customer.Country, Employee.FirstName, Employee.LastName
FROM Employee
JOIN Customer 
 ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice 
  ON Customer.CustomerId = Invoice.CustomerId
WHERE Employee.Title = "Sales Support Agent"
