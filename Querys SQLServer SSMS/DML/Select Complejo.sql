use AdventureWorksLT2019;

	select ProductID, 'Nombre: ' + [Name] TheName, 'Unilateral' as Literal, 100+2  /*Asi podemos darle nombres a las columnas y añadir cosas en los resultados dentro de cada registro*/
		from SalesLT.Product;