use AdventureWorksLT2019;

	select CustomerID, FirstName, LastName /*Elije Columnas.*/
		from SalesLT.Customer; /*Elije Tablas*/

	select distinct FirstName, LastName /*Elije Columnas. El distinct hace que elimine los registros repetidos teniendo en cuenta solo las columnas elejidas*/
		from SalesLT.Customer; /*Elije Tablas*/