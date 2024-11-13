create database ProyectoUNObim3
go

use ProyectoUNObim3
go

-- 1-1 un estudiante tiene un solo expediente y cada expediente pertenece a un solo estudiante
create table Estudiante (
ID int primary key not null identity (1,1),
NombreEstudiante varchar(50)
)
go

create table Expediente (
id int primary key not null identity (1,1),
promedio decimal(2,2),
ID_Estudiante int unique foreign key references Estudiante(ID)
)
go

-- 1-* Un estudiante puede tener varias inscripciones en varios a�os 
create table Inscripci�n (
ID int primary key not null identity (1,1),
FechaInscripcion date,
ID_Estudiante int foreign key references Estudiante(ID)
)
go
-- *-* cada inscripcion inluye varias asignaturas y una asignatura puede estar en muchas inscripciones
create table Asignatura (
ID int primary key not null identity (1,1),
NombreAsignatura varchar(50)
)
go

create table Inscripcion_Asignatura (
Id_Inscripcion int foreign key references Inscripci�n(ID),
Id_Asignatura int foreign key references Asignatura(ID),
)
go

-- 1-* un profesor solo tiene un grupo pero una asignatura tiene varios profesores
create table profesor (
ID int primary key not null identity (1,1),
NombreProfesor varchar(50),
ID_Asignatura int foreign key references Asignatura(ID)
)
go

-- *-* un profesor puede tener varios departamentos, y un departamento puede tener varios profesores 
create table Departamento (
ID int primary key not null identity (1,1),
NombreApartamento varchar(50)
)
go

create table Profesor_Departamento (
ID_Profesor int foreign key references Profesor(ID),
ID_Departamento int foreign key references Departamento(ID)
)
go

-- 1-1 cada departamento tiene un solo director cada director tiene un solo departamento
create table DirectorDepartamento (
ID int primary key not null identity (1,1),
NombreDirector varchar(50),
ID_Departamento int unique foreign key references Departamento(ID)
)
go
