--crear un dise�o de base de datos con tablas y registros suficientes, con relaciones con PK Y FK , para hacer las siguientes consultas
-- 2 consultas de cada tipo de join (inner, left, right, full, left outter, right outter y full outer)
-- 1 consulta por cada tipo de funcion de agrupacion 
-- count(), sum(), max(), min(), avg()
-- al menos 2 consultas que hagan union de al menos 2 tablas

create database ConsultasAvanzadas
go

use ConsultasAvanzadas
go

create table Pacientes (
id int primary key not null,
Nombre_Paciente varchar(50),
Cumpleaños varchar(15),
Contacto varchar(25)
)
insert into Pacientes values (1, 'Juan P�rez', '15/05/1980', '555-1234'), (2, 'Ana G�mez', '22/08/1992', '555-5678'), (3, 'Luis Rodr�guez', '30/11/1985', '555-8765')

create table Doctores (
id int primary key not null,
Nombre varchar(50),
AreaDeEspecialidad varchar(50),
Contacto varchar(30)
)
insert into Doctores values (1, 'Carlos S�nchez', 'Cardiolog�a', '555-1122'), (2, 'Mar�a L�pez', 'Pediatr�a', '555-3344'), (3, 'Jorge Ram�rez', 'Neurolog�a', '555-5566')

create table Citas (
id int primary key not null,
fecha varchar(15),
id_Paciente int foreign key references Pacientes(id),
id_Doctor int foreign key references Doctores(id)
)
insert into Citas values (1, '15/01/2024', 1, 1), (2, '20/01/2024', 2, 2), (3, '22/01/2024', 3, 3)

create table Prescripciones (
id int primary key not null,
fecha varchar(15),
id_Doctor int foreign key references Doctores(id),
id_Paciente int foreign key references Pacientes(id)
)
insert into Prescripciones values (1, '16/01/2024', 1, 1), (2, '21/01/2024', 2, 2), (3, '23/01/2024', 3, 3)

create table Salas (
id int primary key not null, 
PisoDeSala varchar(60),
NumeroDeSala int, 
TipoDeSala varchar(25)
)
insert into Salas values (1, 'Piso 1', 101, 'Individual'), (2, 'Piso 2', 102, 'Doble'), (3, 'Piso 3', 103, 'Suite')

create table Ingresos (
Fecha_Ingreso varchar(15),
Fecha_Salida varchar(15),
id_Paciente int foreign key references Pacientes(id),
id_Sala int foreign key references Salas(id)
)
insert into Ingresos values ('10/01/2024', '15/01/2024', 1, 1), ('18/01/2024', '20/01/2024', 2, 2), ('21/01/2024', '25/01/2024', 3, 3)