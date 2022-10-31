use AdventureWorksLT2019;


	select [Name], ProductNumber, Color
	from SalesLT.Product
	order BY [Name] desc; /*desc para descendente y asc para ascendente por defecto es ascendente*/