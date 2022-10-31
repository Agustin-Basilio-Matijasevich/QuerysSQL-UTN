use AdventureWorksLT2019;

	select Product.ListPrice,Product.[Name], ProductCategory.[Name]
	from SalesLT.Product, SalesLT.ProductCategory
	where Product.ProductCategoryID = ProductCategory.ProductCategoryID;