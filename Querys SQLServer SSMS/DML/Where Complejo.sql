use AdventureWorksLT2019;

	select CustomerID, FirstName, LastName
		from SalesLT.Customer
		where CustomerID >= 2 AND CustomerID <= 10

	select CustomerID, FirstName, LastName
		from SalesLT.Customer
		where CustomerID BETWEEN 2 AND 10