use mydb;

alter table dbo.Employee
	add
		birthdate date NULL, /*Columnas que no acepten nulos hay que o sacarle la restriccion nulo o ponerle valor por defecto*/
		phonenumber varchar(20) NULL;