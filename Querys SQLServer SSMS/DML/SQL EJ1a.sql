use AdventureWorksLT2019;

	select 'Nombre: ' + FirstName as Nombre, 'Apellido: ' + LastName as Apellido,CustomerID as IDCliente, 'Email: ' + EmailAddress as Email, '¡¡Felicitaciones!!' as Mensaje
		from SalesLT.Customer;