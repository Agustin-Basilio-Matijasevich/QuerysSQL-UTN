use AdventureWorksLT2019;

-- a. Obtener todos los clientes de la compañía para enviarles felicitaciones por la llegada de fin de año, indique su ID, nombre y apellido, y correo electrónico.
select 
'Nombre: ' + FirstName as Nombre, 
'Apellido: ' + LastName as Apellido, 
CustomerID as IDCliente, 
'Email: ' + EmailAddress as Email, 
'¡¡Felicitaciones!!' as Mensaje 
from 
SalesLT.Customer;

-- b. Obtener todos los clientes de la compañía Friendly Bike Shop.
select 
* 
from 
SalesLT.Customer 
where 
CompanyName = 'The Bike Shop';

-- c. Obtener todos los clientes de las compañías The Bike Shop , The Commissary, The Gear Store.
select 
* 
from 
SalesLT.Customer 
where 
CompanyName = 'The Bike Shop' 
OR CompanyName = 'The Commissary' 
OR CompanyName = 'The Gear Store';

-- d. Obtener los clientes con apellidos Benson, Brown y Miller.
select 
* 
from 
SalesLT.Customer 
where 
LastName = 'Benson' 
OR LastName = 'Brown' 
OR LastName = 'Miller';

-- e. Obtener una lista de precios de los productos y sus categorías (SIN JOIN - ANSI SQL 89).
select 
Product.ListPrice, 
Product.[Name], 
ProductCategory.[Name] 
from 
SalesLT.Product, 
SalesLT.ProductCategory 
where 
Product.ProductCategoryID = ProductCategory.ProductCategoryID;
