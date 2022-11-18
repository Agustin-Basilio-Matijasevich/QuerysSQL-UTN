use AdventureWorksLT2019;

--z. Obtener la cantidad de facturas existentes y el total facturado.
select count(*) as 'Cantidad de facturas',concat('$',SUM(UnitPrice * OrderQty)) as 'Total facturado'
from SalesLT.SalesOrderDetail;

--aa. Obtener la cantidad de productos bajo la categoría "Road Bikes"
select count(*) as 'Categoria "Road Bikes" - Cantidad'
from SalesLT.Product
inner join SalesLT.ProductCategory
on Product.ProductCategoryID = ProductCategory.ProductCategoryID
where ProductCategory.[Name] = 'Road Bikes';

--bb. Contar los productos existentes por categoría
select ProductCategory.[Name] as 'Nombre de categoria', count(*) as Cantidad
from SalesLT.Product
inner join SalesLT.ProductCategory
on Product.ProductCategoryID = ProductCategory.ProductCategoryID
group by ProductCategory.[Name];

--cc. Totalizar las ventas por producto / Igual al anterior pero agregarle el nombre del producto
select Product.[Name] as 'Nombre producto', concat('$', SUM(UnitPrice * OrderQty))as 'Total vendido'
from SalesLT.Product
inner join SalesLT.SalesOrderDetail
on Product.ProductID = SalesLT.SalesOrderDetail.ProductID
group by Product.[Name];

--ee. Filtrar aquellos productos que hayan vendido mas de $20000 en total
select Product.[Name] as 'Nombre producto', concat('$', SUM(UnitPrice * OrderQty)) as 'Total vendido'
from SalesLT.Product
inner join SalesLT.SalesOrderDetail
on Product.ProductID = SalesOrderDetail.ProductID
group by Product.[Name]
having SUM(UnitPrice * OrderQty) > 20000;

/*ff. La empresa desea realizar descuentos de fin de año sobre los productos, en particular quiere rebajar un 10% todos los productos que comiencen con HL.
Cuanto le representa a la empresa el total descontado sobre las ventas existentes. */

-- Total con descuento.
(select sum(Productos_Descuento.totalFacturado) as 'Total Facturado CD'
from (select
case 
when Product.[Name] like 'hl%' then SUM(UnitPrice * OrderQty) * 0.90
else SUM(UnitPrice * OrderQty)
end as totalFacturado
from SalesLT.Product
inner join SalesLT.SalesOrderDetail
on Product.ProductID = SalesOrderDetail.ProductID
group by Product.[Name]) as Productos_Descuento);

-- Total sin descuento.
select SUM(UnitPrice * OrderQty) as 'Total Facturado'
from SalesLT.Product
inner join SalesLT.SalesOrderDetail
on Product.ProductID = SalesLT.SalesOrderDetail.ProductID;

-- Consulta general:
select [Total Facturado], [Total Facturado CD], SUM([Total Facturado] - [Total Facturado CD]) as Diferencia
from 

-- Subconsulta que trae una tabla con el total facturado
(select SUM(UnitPrice * OrderQty) as 'Total Facturado'
from SalesLT.Product
inner join SalesLT.SalesOrderDetail
on Product.ProductID = SalesLT.SalesOrderDetail.ProductID) as SD,

-- Subconsulta que trae una tabla con el total facturado aplicando el descuento
((select sum(Productos_Descuento.totalFacturado) as 'Total Facturado CD'
from 

-- Sub Sub Consulta que trae la nueva tabla de productos que aplica el descuento a los productos especificos solicitados
(select
case 
when Product.[Name] like 'hl%' then SUM(UnitPrice * OrderQty) * 0.90
else SUM(UnitPrice * OrderQty)
end as totalFacturado
from SalesLT.Product
inner join SalesLT.SalesOrderDetail
on Product.ProductID = SalesOrderDetail.ProductID
group by Product.[Name])
-- Fin Sub Sub Consulta

as Productos_Descuento)) as CD
-- Fin Subconsulta

group by [Total Facturado], [Total Facturado CD];

-- ii. Obtener los productos que valen $1000 o más y pertenecen a una categoría con más de 10 productos

-- Categorias con mas de 10 productos
select Product.ProductCategoryID as IDCAT, COUNT(*)
from SalesLT.Product
INNER JOIN SalesLT.ProductCategory
ON Product.ProductCategoryID = ProductCategory.ProductCategoryID
GROUP BY Product.ProductCategoryID
HAVING count(*) > 10;

-- Productos de categorias con mas de 10 productos, valor de $1000 o mas y data de categoria
select Product.[Name] as Producto, ListPrice as Precio, ProductCategory.[Name] as Categoria
from SalesLT.Product

INNER JOIN SalesLT.ProductCategory
ON Product.ProductCategoryID = ProductCategory.ProductCategoryID

INNER JOIN 
(select Product.ProductCategoryID as IDCAT
from SalesLT.Product
INNER JOIN SalesLT.ProductCategory
ON Product.ProductCategoryID = ProductCategory.ProductCategoryID
GROUP BY Product.ProductCategoryID
HAVING count(*) > 10) as WCAT
ON IDCAT = Product.ProductCategoryID

where ListPrice >= 1000
order by Product.ProductCategoryID;


-- jj. Obtener los productos que nunca se vendieron (plantearlo con una clausula EXISTS)

-- Con LEFT JOIN
select *
from SalesLT.Product
LEFT OUTER JOIN SalesLT.SalesOrderDetail
ON SalesLT.Product.ProductID = SalesLT.SalesOrderDetail.ProductID
where SalesOrderDetail.ProductID IS NULL;

-- CON EXISTS
select *
from SalesLT.Product
where NOT EXISTS	(select *
					from SalesLT.SalesOrderDetail
					where Product.ProductID = SalesOrderDetail.ProductID)
order by ProductID;

-- Con IN
select *
from SalesLT.Product
where ProductID IN (select ProductID
					from SalesLT.SalesOrderDetail)
order by ProductID;