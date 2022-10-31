use mydb; /*elije la bd*/

drop table if exists dbo.Employee; /*si existe la tabla la borra*/

create table dbo.Employee /*Crea la tabla*/
(
	empid int primary key identity(1,1) NOT NULL, /*Crea columna con clave primaria con autoincremental en 1 Ese es identity empieza en 1 y se incrementa en 1 por ser clave abstracta*/
	firstname varchar(30) NOT NULL, 
	lastname varchar(30) NOT NULL,
	hiredate date NOT NULL,
	ngrid int NULL, /*Pensado para ser clave foranea puede ser null y relaciona con jefe*/
	ssn varchar(20) NOT NULL,
	salary money NOT NULL
);