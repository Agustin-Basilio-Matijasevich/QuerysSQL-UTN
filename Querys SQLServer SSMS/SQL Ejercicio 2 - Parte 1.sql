use AdventureWorksLT2019;

--k. Los clientes de la posición 11 a 20 ordenados por apellido y luego por nombre.
SELECT FirstName as Nombre, LastName as Apellido
FROM SalesLT.Customer
ORDER BY LastName, FirstName asc
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;

--l. Todos los productos que contengan frame en su nombre
Select [Name] as Nombre
from SalesLT.Product
where [Name] like '%frame%';

--m. Listar todos los productos Mountain, es decir aquellos que tienen una M en el cuarto carácter de Número de Producto
select [Name] as Nombre, ProductNumber as 'Numero de producto'
from SalesLT.Product
where ProductNumber like '___m%'
order by ProductNumber;

--n. Listar todos los productos exceptuando aquellos ‘Rear Wheel’, es decir los que comienzan con RW en el Numero de Producto.
select [Name] as Nombre, ProductNumber as 'Numero de producto'
from SalesLT.Product
where ProductNumber not like 'rw%'
order by ProductNumber;

--o. Listar todos los productos que en sus últimos dos caracteres tienen un número
select [Name] as 'Nombre producto'
from SalesLT.Product
where [Name] like '%[0123456789][0123456789]'
order by [Name];