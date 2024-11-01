-- crear tablas
create table Compras (
CompraId int,
FechaCompra date, 
ProductoId int, 
MontoCompra decimal(10, 2),
LugarDeCompra varchar(50)
)

create table Ventas (
VentaId int,
FechaVenta date, 
ProductoId int,
ClienteId int, 
CantidadComprada int
)

create table Empleados (
EmpleadoId int, 
NombreEmpleado varchar(50),
ApellidoEmpleado varchar(50),
Salario int,
Seccion varchar(50)
)

create table Proveedor (
ProveedorId int, 
NombreProveedor varchar(50),
TelefonoProveedor varchar(20),
DireccionProveedor varchar(20),
ContacoExtraProveedor varchar(50)
)n

create table Repartidor (
RepartidorID int, 
NombreRepartidor varchar(50),
ApellidoRepartidor varchar(50),
TotalEntregas int, 
TipoVehiculo varchar(50)
)

use Tienda