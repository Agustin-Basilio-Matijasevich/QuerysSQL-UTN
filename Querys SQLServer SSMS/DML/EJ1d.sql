use AdventureWorksLT2019;

	select *
	from SalesLT.Customer
	where LastName = 'Benson' OR LastName = 'Brown' OR LastName = 'Miller';