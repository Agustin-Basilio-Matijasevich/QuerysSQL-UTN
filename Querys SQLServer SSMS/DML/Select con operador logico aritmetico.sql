use AdventureWorksLT2019;

	select ProductID, [Name], ListPrice * 1.21 + 20 /*List Price no tiene nombre porque no le ponemos ya que al añadir los operadores creamos un nuevo campo, una nueva columna*/
		from SalesLT.Product;

	
	select ProductID, [Name] TheName, ListPrice * 1.21 + 20 as NetPrice /*Asi le podemos poner nombres a las columnas nuevas o modificar los existentes*/
		from SalesLT.Product;