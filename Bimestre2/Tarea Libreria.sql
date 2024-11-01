use Librerias82260
go
--Libros que tengan mas de 500 paginas 
Select nombre, paginas from libros where paginas > 500
--Libros de un autor en especifico
select nombre, autor from libros where autor = 'Miguel de Cervantes'
--Editoriales de un nombre en especifico
select * from editoriales where nombre = 'Editorial Gamma'
--Autores de una editorial en especifico
select autor, editorial from libros where editorial = 'Editorial mondadori'
--Libros de un autor en especifico que tenga páginas entre 234 y 789
select nombre, autor from libros where paginas between 234 and 789 and autor = 'Gabriel Garcia'