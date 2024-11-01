create database test2
go

use test2 
go

create table Doctores (
ID int primary key NOT NULL identity(1,1),
nombre varchar(50),
especialidad  varchar (60)
);
go
insert into Doctores values ('Marco','Pediatra'), ('Mario','Cardiologo'), ('Luis Miguel','Pediatra')

select * from Doctores

delete from Doctores where id = '3'
go

create table Pacientes (
ID int primary key not null identity (1,1),
Nombre varchar(50),
Teléfono varchar(10),
ID_Doctor int foreign key references Doctores(ID)
)
go
insert into Pacientes values ('Pepe','1234567890', 1), ('Papo', '12345678',1), ('Pipo', '211234565',4)
go
select * from Pacientes
select * from Doctores

select Pacientes.Nombre as Paciente, Doctores.nombre as Doctor from Pacientes inner join Doctores ON Pacientes.ID_Doctor = Doctores.ID