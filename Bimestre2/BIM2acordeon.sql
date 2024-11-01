CREATE DATABASE HospitalFabCA;
go

USE HospitalFabCA;
go

CREATE TABLE Consultorios (
    id_consultorio INT,
    nombre VARCHAR(100),
    especialidad VARCHAR(100),
    piso INT,
);
go

INSERT INTO Consultorios (nombre, especialidad, piso) VALUES
('Consultorio A', 'Cardiolog�a', 1),
('Consultorio B', 'Pediatr�a', 1),
('Consultorio C', 'Ginecolog�a', 1),
('Consultorio D', 'Dermatolog�a', 1),
('Consultorio E', 'Oftalmolog�a', 1),
('Consultorio F', 'Neurolog�a', 2),
('Consultorio G', 'Oncolog�a', 2),
('Consultorio H', 'Urolog�a', 2),
('Consultorio I', 'Otorrinolaringolog�a', 2),
('Consultorio J', 'Psiquiatr�a', 2),
('Consultorio K', 'Endocrinolog�a', 3),
('Consultorio L', 'Neumolog�a', 3),
('Consultorio M', 'Reumatolog�a', 3),
('Consultorio N', 'Gastroenterolog�a', 3),
('Consultorio O', 'Nefrolog�a', 3);
go

CREATE TABLE Doctores (
    id_doctor INT,
    nombre VARCHAR(100),
    especialidad VARCHAR(100),
    telefono VARCHAR(15)
);
go

INSERT INTO Doctores (nombre, especialidad, telefono) VALUES
('Dr. Juan P�rez', 'Cardiolog�a', '123-456-7890'),
('Dr. Luis Gonz�lez', 'Pediatr�a', '234-567-8901'),
('Dra. Ana L�pez', 'Ginecolog�a', '345-678-9012'),
('Dra. Marta S�nchez', 'Dermatolog�a', '456-789-0123'),
('Dr. Pedro Ram�rez', 'Oftalmolog�a', '567-890-1234'),
('Dra. Laura Torres', 'Neurolog�a', '678-901-2345'),
('Dr. Jos� Mart�nez', 'Oncolog�a', '789-012-3456'),
('Dr. Carlos D�az', 'Urolog�a', '890-123-4567'),
('Dra. Paula Fern�ndez', 'Otorrinolaringolog�a', '901-234-5678'),
('Dr. Javier G�mez', 'Psiquiatr�a', '012-345-6789'),
('Dra. Carmen Rojas', 'Endocrinolog�a', '123-456-7891'),
('Dr. Francisco V�zquez', 'Neumolog�a', '234-567-8902'),
('Dra. Elena Castillo', 'Reumatolog�a', '345-678-9013'),
('Dr. Alejandro Rivera', 'Gastroenterolog�a', '456-789-0124'),
('Dra. Beatriz Herrera', 'Nefrolog�a', '567-890-1235');
go

CREATE TABLE Torres (
    id_torre INT,
    nombre VARCHAR(100),
    pisos INT,
    direccion VARCHAR(255)
);
go

INSERT INTO Torres (nombre, pisos, direccion) VALUES
('Torre A', 5, 'Calle Principal 123'),
('Torre B', 4, 'Avenida Secundaria 456'),
('Torre C', 6, 'Calle Tercera 789'),
('Torre D', 3, 'Avenida Cuarta 101'),
('Torre E', 5, 'Calle Quinta 112'),
('Torre F', 7, 'Avenida Sexta 131'),
('Torre G', 4, 'Calle S�ptima 415'),
('Torre H', 5, 'Avenida Octava 161'),
('Torre I', 6, 'Calle Novena 718'),
('Torre J', 3, 'Avenida D�cima 192'),
('Torre K', 4, 'Calle Once 223'),
('Torre L', 5, 'Avenida Doce 242'),
('Torre M', 6, 'Calle Trece 263'),
('Torre N', 7, 'Avenida Catorce 284'),
('Torre O', 3, 'Calle Quince 305');
go

CREATE TABLE Salas (
    id_sala INT,
    nombre VARCHAR(100),
    capacidad INT,
    id_torre INT
);
go

INSERT INTO Salas (nombre, capacidad, id_torre) VALUES
('Sala A', 20, 1),
('Sala B', 15, 2),
('Sala C', 25, 3),
('Sala D', 10, 4),
('Sala E', 30, 5),
('Sala F', 20, 6),
('Sala G', 15, 7),
('Sala H', 25, 8),
('Sala I', 10, 9),
('Sala J', 30, 10),
('Sala K', 20, 11),
('Sala L', 15, 12),
('Sala M', 25, 13),
('Sala N', 10, 14),
('Sala O', 30, 15);
go

CREATE TABLE Pacientes (
    id_paciente INT,
    nombre VARCHAR(100),
    edad INT,
    enfermedad VARCHAR(255)
);
go

INSERT INTO Pacientes (nombre, edad, enfermedad) VALUES
('Juan Gonz�lez', 45, 'Hipertensi�n'),
('Mar�a Fern�ndez', 60, 'Diabetes'),
('Pedro L�pez', 30, 'Gripe'),
('Ana Ram�rez', 25, 'Migra�a'),
('Luis Mart�nez', 50, 'Asma'),
('Laura V�zquez', 70, 'Artritis'),
('Carlos D�az', 55, 'Insuficiencia renal'),
('Paula Herrera', 40, 'Gastritis'),
('Javier G�mez', 35, 'Colesterol alto'),
('Carmen Rojas', 65, 'Osteoporosis'),
('Alejandro Rivera', 28, 'Alergias'),
('Beatriz Castillo', 33, 'Ansiedad'),
('Francisco Torres', 48, 'Depresi�n'),
('Marta S�nchez', 52, 'Hipotiroidismo'),
('Elena Fern�ndez', 37, 'Hipertensi�n');
go

SELECT TOP (5) [id_consultorio]
      ,[nombre]
      ,[especialidad]
      ,[piso]
  FROM [HospitalFabCA].[dbo].[Consultorios]
go

select DISTINCT * from Torres
where pisos > 6; /* o = 7*/
go

select DISTINCT * from Torres
where pisos BETWEEN 4 AND 5;
go

select DISTINCT * from Pacientes
where enfermedad = 'Depresion'
go

select DISTINCT * from Salas 
where nombre = 'Sala A'
AND capacidad = 20
go