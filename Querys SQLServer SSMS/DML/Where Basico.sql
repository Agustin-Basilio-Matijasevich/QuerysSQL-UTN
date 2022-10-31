use AdventureWorksLT2019;

	select CustomerID, FirstName, LastName
		from SalesLT.Customer
		where CustomerID=2

	select CustomerID, FirstName, LastName
		from SalesLT.Customer
		where LastName='Adams'