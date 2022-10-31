use AdventureWorksLT2019;


	select Color, [Name], ProductNumber
	from SalesLT.Product
	order BY Color asc, [Name] asc; /*Ordena primero por color asc y dentro de los colores iguales ordena los nombres asc*/