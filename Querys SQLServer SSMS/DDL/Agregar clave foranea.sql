use mydb;

alter table dbo.Employee /*Alteracion de estructura de tabla*/
	add constraint EK_Employee_manager /*Agrega Restriccion llamada asi*/
	foreign key (ngrid) references dbo.Employee(empid);/*La restriccion es de clave foranea entre ngrid y empid*/