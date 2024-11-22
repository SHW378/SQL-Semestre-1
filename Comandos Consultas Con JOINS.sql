create database prueba1
go

use prueba1
go

create table Personas (
ID int, 
nombre_Personas varchar(50),
)
go

create table Curso (
ID int,
Nombre_Curso varchar(50),
id_personaFK int
)
go
select * from Personas
select * from Curso
go

--Consulta para ver las personas y los cursos que toman 

-- Para ver registros que tienen coincidencias en ambas tablas 
-- INNER JOIN (Union Interna)

select Personas.nombre_personas, Curso.Nombre_Curso from Personas inner join Curso on Personas.ID = Curso.id_personaFK
go
-- Consulta	que traigo todoas las personas y, si tienen cursos, que tambien traiga los cursos
--Left Join
select Personas.nombre_Personas, Curso.Nombre_Curso from Personas left join Curso on Personas.ID = Curso.id_personaFK

--Consulta que traiga todos los cursos y , si hay alumnos inscritos en ellos que traiga de esos alumnos 
select Personas.nombre_Personas, Curso.Nombre_Curso from Personas right join Curso on Personas.ID = Curso.id_personaFK where Personas.ID =  3

--Consulta que traiga todas las personas, todos los cursos incluyendo los que no coincidan entre si
select Personas.nombre_Personas, Curso.Nombre_Curso from Personas full join Curso on Personas.ID = Curso.id_personaFK

-- Left outer join
select Personas.nombre_Personas, Curso.Nombre_Curso from Personas left outer join Curso on Personas.ID = Curso.id_personaFK where Curso.id_personaFK is null

-- Right outer join
select Personas.nombre_Personas, Curso.Nombre_Curso from Personas right outer join Curso on Personas.ID = Curso.id_personaFK where Curso.id_personaFK is null

count() --Agrupar registros por cuenta
MAX() -- Valor maximo de un grupo de datos
MIN() -- Valor minimo de un grupo de datos
avg() -- valor promedio de un grupo de datos
sum() --valor symado de un grupo de datos

-- Consultas de agrupaci�n 
--group by

--select columnas from tabla inner join group by columnas 

create table Ventas (
ID INT, 
producto varchar(50),
Categoria varchar(50),
Precio int,
cantidad int, 
)

select * from ventas 

-- hacer consulta que cuente cuantos productos hay en cada categoria
select Ventas.Categoria, count(*) as NumerodeProductos from Ventas group by Categoria

-- Consulta que traiga el total de los ingresos por cada caregoria 
select Categoria, sum(Precio*Cantidad) as IngresosTotales from Ventas group by Categoria

-- obtener los ingresos de productos que cuestan mas de 43 pesos mexicanos
select Categoria, sum(Precio*Cantidad) as IngresosTotales from Ventas  where precio > '20' group by Categoria

-- mostrar categorias con ingresos totales superiores a 500
select Categoria, sum(Precio*cantidad) as IngresosTotales from Ventas group by Categoria having sum(Precio*Cantidad) > 500