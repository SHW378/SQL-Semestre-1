create database Examen2Parcial82196
go

use Examen2Parcial82196
go

create table Empleados(
id int,
horarioMatitunoVespertino varchar(20),
edad varchar(15),
NombreEmpleado varchar(30)
);
go

insert into Empleados (id, horarioMatitunoVespertino, edad, NombreEmpleado) values
(1, 'Matutino', '30', 'Juan Perez'),
(2, 'Vespertino', '45', 'Ana Lopez'),
(3, 'Matutino', '25', 'Carlos Sánchez'),
(4, 'Vespertino', '29', 'Maria Gomez'),
(5, 'Matutino', '38', 'Luis Hernandez'),
(6, 'Vespertino', '50', 'Elena Fernandez'),
(7, 'Matutino', '22', 'Pedro Martinez'),
(8, 'Vespertino', '40', 'Laura Ramirez'),
(9, 'Matutino', '34', 'Miguel Torres'),
(10, 'Vespertino', '31', 'Daniela Suarez'),
(11, 'Matutino', '27', 'Jorge Morales'),
(12, 'Vespertino', '43', 'Sandra Alvarez');
go

create table Instrumentos (
id int,
TipoDeIntrumento varchar(25),
color varchar(20),
categoria varchar(30),
Marca varchar(30)
);
go

insert into Instrumentos (id, TipoDeIntrumento, color, categoria, Marca) values
(1, 'Guitarra', 'Rojo', 'Cuerda', 'Fender'),
(2, 'Batería', 'Negro', 'Percusión', 'Yamaha'),
(3, 'Piano', 'Blanco', 'Teclado', 'Yamaha'),
(4, 'Violín', 'Marrón', 'Cuerda', 'Stradivarius'),
(5, 'Trompeta', 'Dorado', 'Viento metal', 'Yamaha'),
(6, 'Flauta', 'Plateado', 'Viento madera', 'Yamaha'),
(7, 'Saxofón', 'Dorado', 'Viento metal', 'Selmer'),
(8, 'Bajo', 'Azul', 'Cuerda', 'Ibanez'),
(9, 'Clarinete', 'Negro', 'Viento madera', 'Buffet Crampon'),
(10, 'Timbal', 'Café', 'Percusión', 'Pearl'),
(11, 'Arpa', 'Dorado', 'Cuerda', 'Lyon & Healy'),
(12, 'Acordeón', 'Rojo', 'Teclado', 'Hohner');
go

create table Refacciones (
id int,
TipoDeRefaccion varchar(50),
Material varchar(30),
MarcaDeRefaccion varchar(30),
);
go

insert into Refacciones (id, TipoDeRefaccion, Material, MarcaDeRefaccion) values
(1, 'Filtro de aire', 'Plástico', 'Bosch'),
(2, 'Pastillas de freno', 'Cerámica', 'Brembo'),
(3, 'Amortiguador', 'Metal', 'Monroe'),
(4, 'Bujía', 'Metal', 'NGK'),
(5, 'Correa de distribución', 'Goma', 'Gates'),
(6, 'Radiador', 'Aluminio', 'Denso'),
(7, 'Alternador', 'Metal', 'Valeo'),
(8, 'Filtro de aceite', 'Metal', 'Mann-Filter'),
(9, 'Llanta', 'Caucho', 'Michelin'),
(10, 'Batería', 'Ácido-plo', 'Varta'),
(11, 'Escobilla limpiaparabrisas', 'Goma', 'Bosch'),
(12, 'Compresor de aire acondicionado', 'Metal', 'Denso');
go

create table Clientes (
id int,
NombreCliente varchar(30),
EstadoDeResidencia varchar(50),
InstrumentoComprado varchar(30),
MesDeCompra varchar(50),
PreferenciaTipoDeInstrumento varchar(50)
);
go

INSERT INTO Clientes (id, NombreCliente, EstadoDeResidencia, InstrumentoComprado, MesDeCompra, PreferenciaTipoDeInstrumento) VALUES
(1, 'Carlos Pérez', 'Ciudad de México', 'Guitarra', 'Octubre', 'Cuerda'),
(2, 'Ana García', 'Jalisco', 'Piano', 'Febrero', 'Teclado'),
(3, 'Luis Hernández', 'Nuevo León', 'Batería', 'Marzo', 'Percusión'),
(4, 'Martha Sánchez', 'Puebla', 'Saxofón', 'Abril', 'Viento metal'),
(5, 'José Gómez', 'Yucatán', 'Violín', 'Mayo', 'Cuerda'),
(6, 'Laura Torres', 'Veracruz', 'Trompeta', 'Junio', 'Viento metal'),
(7, 'Juan Martínez', 'Chihuahua', 'Clarinete', 'Julio', 'Viento madera'),
(8, 'Sofia Ramírez', 'Guanajuato', 'Bajo', 'Agosto', 'Cuerda'),
(9, 'Pedro Domínguez', 'Querétaro', 'Flauta', 'Septiembre', 'Viento madera'),
(10, 'Carmen Ortiz', 'Oaxaca', 'Timbal', 'Octubre', 'Percusión'),
(11, 'Andrés Moreno', 'Michoacán', 'Arpa', 'Noviembre', 'Cuerda'),
(12, 'María López', 'Tabasco', 'Acordeón', 'Diciembre', 'Teclado'),
(13, 'Miguel Fernández', 'Sonora', 'Piano', 'Enero', 'Teclado'),
(14, 'Daniela Castillo', 'Coahuila', 'Guitarra', 'Febrero', 'Cuerda');



update Clientes set InstrumentoComprado = 'batería' where id = '5'
update Clientes set InstrumentoComprado = 'trompeta' where id = '6'
update Clientes set InstrumentoComprado = 'timbal' where id = '10'
update Clientes set InstrumentoComprado = 'arpa' where id = '11'
update Clientes set InstrumentoComprado = 'guitarra' where id = '14'
update Clientes set	InstrumentoComprado = 'clarinete' where id = '7'
select * from clientes
go

delete from Refacciones where id = '1'
delete from Empleados where id = '7'
delete from Clientes where id = '14'
go


select * from Instrumentos where TipoDeIntrumento = 'Piano' and Marca = 'Yamaha' 

select * from Clientes where PreferenciaTipoDeInstrumento = 'Cuerda'

select * from Empleados where horarioMatitunoVespertino = 'Matutino' or horarioMatitunoVespertino = 'Vespertino'

select * from Refacciones where TipoDeRefaccion = 'Llanta' and Material = 'Caucho'

select * from Clientes where EstadoDeResidencia = 'Jalisco'

select * from Empleados where edad between 25 and 35

select * from Instrumentos where categoria = 'Teclado' and color = 'Blanco'