use AdventureWorksLT2019;

--a. Obtener todos los clientes de la compañía para enviarles felicitaciones por la llegada de fin de año.
select SalesLT.Customer.FirstName as Nombre, SalesLT.Customer.LastName as Apellido, SalesLT.[Address].City as Ciudad
from SalesLT.Customer, SalesLT.[Address], SalesLT.CustomerAddress
where SalesLT.Customer.CustomerID = SalesLT.CustomerAddress.CustomerID AND SalesLT.[Address].AddressID = SalesLT.CustomerAddress.AddressID
AND SalesLT.[Address].City IN ('Calgary','Toronto','Montreal','Arlington')
order by SalesLT.[Address].City asc;


--g. El depto. de ventas desea armar ofertas para todos los productos que correspondan con los modelos Mountain-100 y Classic Vest.
select SalesLT.Product.[Name] as 'Nombre Producto', SalesLT.ProductModel.[Name] as Modelo
from SalesLT.Product, SalesLT.ProductModel
where SalesLT.Product.ProductModelID = SalesLT.ProductModel.ProductModelID AND SalesLT.ProductModel.[Name] in ('Mountain-100','Classic Vest')
order by SalesLT.ProductModel.[Name] asc;

--h. Obtener la lista de todos los clientes ordenados por apellido
select SalesLT.Customer.LastName as Apellido, SalesLT.Customer.FirstName as Nombre
from SalesLT.Customer
order by SalesLT.Customer.LastName asc;

--i. Obtener la lista de todos los clientes ordenados por apellido y luego por nombre usando alias en tablas y campos
select SalesLT.Customer.LastName as Apellido, SalesLT.Customer.FirstName as Nombre
from SalesLT.Customer
order by SalesLT.Customer.LastName asc, SalesLT.Customer.FirstName asc;

--j. Los primeros 5 clientes ordenados por apellido y luego por nombre.
Select top 5 FirstName, LastName
from SalesLT.Customer
order by LastName, FirstName;