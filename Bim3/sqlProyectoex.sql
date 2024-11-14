/* entidades 
reservas 
clientes
gastos
*/

create database restaurante 
go 

use restaurante 
go

create table Cliente (
ID int not null primary key identity (1,1),
NombreCliente varchar(50),
Contacto varchar(50),
FechaRegistro date,
-- ReservacionID int foreign key references Reservas(ID)
)

create table Reservas (
ID int not null primary key identity (1,1),
FechayHora varchar(15),
CantidadDePersonas int,
EstadoDeReserva varchar(20),
ClienteID int foreign key references Cliente(ID),
--MesaID int foreign key references Mesas(ID)
)

create table gastos (
ID int not null primary key identity (1,1),
FechaGasto date,
Monto decimal(10,3),
MetodoPago varchar(35),
ComprobantePago varchar(100),
-- ProveedorID int foreign key references Proveedor(ID)
)
