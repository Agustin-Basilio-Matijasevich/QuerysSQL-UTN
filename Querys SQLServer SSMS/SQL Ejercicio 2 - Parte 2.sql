use AdventureWorksLT2019;

-- p. Obtener todas los productos que se empezaron a vender a partir del 2002
select ProductID, [Name], SellStartDate
from SalesLT.Product
where SellStartDate >= YEAR(2002)
order by SellStartDate asc;

-- q. Listar todas las facturas, obteniendo el tiempo transcurrido en días entre la fecha de pedido y de envío
select SalesOrderID, OrderDate, ShipDate, DATEDIFF(DAY, OrderDate, ShipDate) as 'Dias Transcurridos'
from SalesLT.SalesOrderHeader
order by [Dias Transcurridos] asc;

-- r. Listar todas las facturas, obteniendo el tiempo transcurrido en días entre la fecha de pedido y hoy
select SalesOrderID, OrderDate, ShipDate, DATEDIFF(DAY,OrderDate,GETDATE()) as 'Dias Transcurridos'
from SalesLT.SalesOrderHeader
order by [Dias Transcurridos] asc;

-- s. Obtener todos los clientes que tengan segundo nombre
select FirstName as Nombre, MiddleName as 'Segundo Nombre', LastName as Apellido
from SalesLT.Customer
where MiddleName IS NOT NULL
order by Nombre;

-- t. Obtener todas las facturas con sus clientes
select *
from SalesLT.SalesOrderHeader
INNER JOIN SalesLT.Customer
ON SalesOrderHeader.CustomerID = Customer.CustomerID

-- u. Sumar al anterior todos los productos
select *
from SalesLT.SalesOrderHeader
INNER JOIN SalesLT.Customer
ON SalesOrderHeader.CustomerID = Customer.CustomerID
INNER JOIN SalesLT.SalesOrderDetail
ON SalesOrderHeader.SalesOrderID = SalesOrderDetail.SalesOrderID
INNER JOIN SalesLT.Product
ON SalesOrderDetail.ProductID = Product.ProductID

-- v. Listar todas las categorías con la categoría de la que dependen (recursiva)
select B.ProductCategoryID as IDCAT, B.[Name] as Categoria, A.[Name] as Depende
from SalesLT.ProductCategory as A
RIGHT OUTER JOIN SalesLT.ProductCategory as B
ON A.ProductCategoryID = B.ParentProductCategoryID
order by A.ProductCategoryID;

-- w. Obtener todos las categorías con sus productos, ordenados por categoría y luego por producto
select Product.[Name] as Nombre, ProductCategory.[Name] as Categoria
from SalesLT.ProductCategory
INNER JOIN SalesLT.Product
ON ProductCategory.ProductCategoryID = Product.ProductCategoryID
order by ProductCategory.ProductCategoryID, ProductID

-- x. Listar todos los productos que no tuvieron ninguna venta
select Product.[Name], Product.ProductID
from SalesLT.Product
LEFT JOIN SalesLT.SalesOrderDetail
on Product.ProductID = SalesOrderDetail.ProductID
where SalesOrderDetail.ProductID IS NULL
order by ProductID