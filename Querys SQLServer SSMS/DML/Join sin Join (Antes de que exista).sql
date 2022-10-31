use AdventureWorksLT2019;

	/*Apareamiento entre customerid en clientes y en ventas*/

	select Customer.CustomerID, FirstName, LastName, SalesOrderID, TotalDue
	from SalesLT.Customer, SalesLT.SalesOrderHeader
	where Customer.CustomerID = SalesOrderHeader.CustomerID;