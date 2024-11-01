--consultas SQL

use Hospital82196
go

--consultar toda la tabla 
select * from doctores
go

--consultar solo algunas 
--consultar columnas de una tabla 
select DoctorNombre, Especialidad from doctores
go

--Alias
select DoctorNombre as 'NombresDeDoctores', Especialidad as 'TrabajaDe' from doctores
go

--consultas especificas 
select * from consultorios where ClienteNombre = 'Carlos L�pez'
go

select NombreConsultorio, DoctorNombre from consultorios where ClienteNombre = 'Ana Mart�nez'
go

--Prefijos 
select NombreDePaciente as 'Paciente' , DoctorNombre as 'Doctor' from pacientes, doctores where DoctorNombre = 'Dr. Gonz�lez' or DoctorNombre = 'Dr. House'
go
