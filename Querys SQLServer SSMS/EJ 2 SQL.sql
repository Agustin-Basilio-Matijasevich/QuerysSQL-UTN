-- EJ P
use AdventureWorksLT2019

select ProductID, [Name], SellStartDate 
from SalesLT.Product 
where SellStartDate >= '20020101'
order by SellStartDate asc;

-- Ej q
use AdventureWorksLT2019

select SalesOrderID, OrderDate, ShipDate, DATEPART(DAY,ShipDate - OrderDate) as 'Dias Transcurridos'
from SalesLT.SalesOrderHeader
order by [Dias Transcurridos] asc;

-- Ej r
use AdventureWorksLT2019

select SalesOrderID, OrderDate, ShipDate, DATEPART(DAY,GETDATE() - OrderDate) as 'Dias Transcurridos'
from SalesLT.SalesOrderHeader
order by [Dias Transcurridos] asc;

-- Ej s
use AdventureWorksLT2019

select Customer.FirstName, Customer.LastName, Customer.MiddleName
from SalesLT.Customer
where Customer.MiddleName IS NOT NULL;

-- Ej t
use AdventureWorksLT2019



-- Ej x
use AdventureWorksLT2019

select Product.[Name], Product.ProductID
from SalesLT.Product
LEFT JOIN SalesLT.SalesOrderDetail
on Product.ProductID = SalesOrderDetail.ProductID
where SalesOrderDetail.ProductID IS NULL
order by ProductID;