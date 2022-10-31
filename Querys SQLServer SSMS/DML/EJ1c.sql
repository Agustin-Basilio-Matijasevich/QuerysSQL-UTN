use AdventureWorksLT2019;

	select *
	from SalesLT.Customer
	where CompanyName = 'The Bike Shop' OR CompanyName = 'The Commissary' OR CompanyName = 'The Gear Store';