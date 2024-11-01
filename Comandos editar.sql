use Tienda 
go

--Editar la definicion de las tablas 
--Agregar una columna
alter table Compras add Color varchar(50)
go

--Eliminar columna 
alter table Compras drop column Color 
go

--Renombrar una columna 
exec sp_rename 'Compras.CompraId', 'ComprasId', 'COLUMN';
go

--Cambiar tipo de dato de columna 
alter table Compras alter column ComprasId int
go

--Borrar tablas 
drop table Compras
go

--Borrar base de datos
use master 
drop database Tienda 
go

--agregar registros a una tabla 
use Peliculas 
insert into peliculas (ID, Nombre, Genero, sinopsis, duracion) values (4, 'lort', 'acción', 'bien', 110.10)
go

--Update 
update peliculas set duracion='110.10min' where  ID=5
select * from peliculas 
go

--Borrar registros 
delete from peliculas where id=4 
go