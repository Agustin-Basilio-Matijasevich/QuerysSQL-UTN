use master; /*Selecciona master que es la bd que tiene los metadatos de bd del motor*/
drop database if EXISTS mydb; /*Borra la bd con ese nombre si es que existe*/
create database mydb; /*Crea una bd con ese nombre, si ya existe una con ese nombre da error*/