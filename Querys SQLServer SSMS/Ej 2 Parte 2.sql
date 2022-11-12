-- Z
use AdventureWorksLT2019

select SUM(UnitPrice*OrderQty) as 'Sumatoria', COUNT(*) as 'Cantidad Facturas'
from SalesLT.SalesOrderDetail;

-- AA
use AdventureWorksLT2019

select COUNT(*) as 'Cantidad Road Bikes'
from SalesLT.Product
INNER JOIN SalesLT.ProductCategory
ON Product.ProductCategoryID = ProductCategory.ProductCategoryID
where ProductCategory.[Name] = 'Road Bikes';

-- BB
use AdventureWorksLT2019

select ProductCategory.ProductCategoryID, MIN(ProductCategory.[Name]) as 'Categoria', COUNT(*) as 'Cantidad'
from SalesLT.Product
INNER JOIN SalesLT.ProductCategory
ON Product.ProductCategoryID = ProductCategory.ProductCategoryID
GROUP BY ProductCategory.ProductCategoryID;

-- CC DD
use AdventureWorksLT2019

select Product.ProductID, COUNT(*) as 'Cantidad', SUM(UnitPrice*OrderQty) as 'Total Vendido $', MIN(Product.[Name]) as Producto
from SalesLT.Product
INNER JOIN SalesLT.SalesOrderDetail
ON Product.ProductID = SalesOrderDetail.ProductID
GROUP BY Product.ProductID

-- EE
use AdventureWorksLT2019

select Product.ProductID, COUNT(*) as 'Cantidad', SUM(UnitPrice*OrderQty) as 'Total Vendido $', MIN(Product.[Name]) as Producto
from SalesLT.Product
INNER JOIN SalesLT.SalesOrderDetail
ON Product.ProductID = SalesOrderDetail.ProductID
GROUP BY Product.ProductID
HAVING SUM(UnitPrice*OrderQty) > 20000.00
ORDER BY [Total Vendido $] desc

-- FF
use AdventureWorksLT2019

select Product.ProductID, COUNT(*) as 'Cantidad', SUM((UnitPrice*0.90)*OrderQty) as 'Total Vendido $', MIN(Product.[Name]) as Producto
from SalesLT.Product
INNER JOIN SalesLT.SalesOrderDetail
ON Product.ProductID = SalesOrderDetail.ProductID
where Product.[Name] LIKE 'HL%'
GROUP BY Product.ProductID
ORDER BY [Total Vendido $] desc