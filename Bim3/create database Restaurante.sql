create database Restaurante
go

use Restaurante
go
--JOSE

CREATE TABLE Empleados (
    ID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    Nombres VARCHAR(30),
    ApellidoPaterno VARCHAR(20),
    ApellidoMaterno VARCHAR(20),
    FechadeNacimiento DATE,
    Rol VARCHAR(20),
        CONSTRAINT chk_Rol CHECK (Rol IN ('Mesero', 'Gerente', 'Cajero', 'Cocinero')),
    Turno VARCHAR(10),
        CONSTRAINT chk_Turno CHECK (Turno IN ('Matutino', 'Vespertino')),
    Sueldo money,
    CURP CHAR(18)
        CONSTRAINT chk_CURP CHECK (
        CURP LIKE '[A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][A-Z][A-Z][A-Z][0-9][0-9][A-Z][A-Z][0-9][A-Z][A-Z]'),
    FechaDeIngreso date,
    Estado VARCHAR(10),
        CONSTRAINT chk_Estado CHECK (Estado IN ('Acitvo', 'Inactivo', 'Baja')),
    FechaDeSalida date
)
go
create TABLE Menu(
    ID int PRIMARY key not NULL IDENTITY(1,1),
    Nombre VARCHAR(30),
    Tipo VARCHAR(10),
        CONSTRAINT chk_TipoMenu CHECK ( Tipo IN('Postre','Comida','Desayuno','Bebida')),
    Tiempo INT,
    Descripcion VARCHAR(30),
    Precio money
)
GO
create TABLE Ingredientes(
    ID int PRIMARY KEY NOT NULL IDENTITY(1,1),
    Nombre VARCHAR(20),
    Tipo VARCHAR(10),
        CONSTRAINT chk_TipoIngrediente CHECK (Tipo IN ('Base','Liquidos','Secos','Condimento/Especia','Grasos')),
    Cantidad INT
)

--OSMAR
create table Ventas (
ID int Primary key not null IDENTITY (1, 1),
Cantidad  int,
Fecha smalldatetime,
Tipo_de_venta varchar(50), 
Forma_de_pago varchar(50), 
)
go

create table Proveedores (
ID int Primary key not null IDENTITY (1, 1),
Nombre_del_Proveedor varchar (100),
Tipo_de_Producto varchar (50),
Ubicacion_del_Proveedor varchar (75),
email varchar (25),
teléfono varchar (15),
Calificación decimal(3, 2),
)
go

--CESAR
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
create database Restaurante
go
 
use Restaurante
go
 

CREATE TABLE Empleados (
    ID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    Nombres VARCHAR(30),
    ApellidoPaterno VARCHAR(20),
    ApellidoMaterno VARCHAR(20),
    FechadeNacimiento DATE,
    Rol VARCHAR(20),
        CONSTRAINT chk_Rol CHECK (Rol IN ('Mesero', 'Gerente', 'Cajero', 'Cocinero')),
    Turno VARCHAR(10),
        CONSTRAINT chk_Turno CHECK (Turno IN ('Matutino', 'Vespertino')),
    Sueldo money,
    CURP CHAR(18)
        CONSTRAINT chk_CURP CHECK (
        CURP LIKE '[A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][A-Z][A-Z][A-Z][0-9][0-9][A-Z][A-Z][0-9][A-Z][A-Z]'),
    FechaDeIngreso date,
    Estado VARCHAR(10),
        CONSTRAINT chk_Estado CHECK (Estado IN ('Acitvo', 'Inactivo', 'Baja')),
    FechaDeSalida date
)
go
create TABLE Menu(
    ID int PRIMARY key not NULL IDENTITY(1,1),
    Nombre VARCHAR(30),
    Tipo VARCHAR(10),
        CONSTRAINT chk_TipoMenu CHECK ( Tipo IN('Postre','Comida','Desayuno','Bebida')),
    Tiempo INT,
    Descripcion VARCHAR(30),
    Precio money
)
GO
 
create table Proveedores (
ID int Primary key not null IDENTITY (1, 1),
Nombre_del_Proveedor varchar (100),
Tipo_de_Producto varchar (50),
Ubicacion_del_Proveedor varchar (75),
email varchar (25),
teléfono varchar (15),
Calificación decimal(3, 2),
)
go
 
create table Inventario(
ID INT primary key IDENTITY(1,1) NOT NULL,
cantidad INT,--CANTIDAD
tipo varchar(50),--DE QUE TIPO ES
nombre varchar(50),--NOMBRE
descripcion varchar(250),--DESCRIPCION
actualizacion date,--CUANDO FUE LA ULTIMA VEZ ACTUALIZADA
disponiblidad varchar(50),--SI ESTA DISPONIBLE O NO
estado VARCHAR(50),--un decir caducado o fresco
fecha_ingreso DATE,--cuando se ingreso
categoria VARCHAR(50), --diferencia de tipo y categoria tipo es cuando un decir refresco jugo agua y categoria es carnes verduras o lacteos
fecha_vencimiento DATE,--caducacion
costo numeric(10, 2),--costo del producto
medible int, --puse null por que no todo es medible a que me refiero con esto un decir gramo litros etc.
ProveedorID int foreign key references Proveedores(ID),
MenuID int foreign key references Menu(ID)
--CONECTIVA DE PROVEDORES
--POSIBLE CONECTIVA EMPLEADO
-- CONECTIVA DE GASTOS
--POSIBLE CONECTIVA CON MENU
)
 
create TABLE Ingredientes(
    ID int PRIMARY KEY NOT NULL IDENTITY(1,1),
    Nombre VARCHAR(20),
    Tipo VARCHAR(10),
        CONSTRAINT chk_TipoIngrediente CHECK (Tipo IN ('Base','Liquidos','Secos','Condimento/Especia','Grasos')),
    Cantidad INT,
	InventarioID int foreign key references Inventario(ID)
)
 
--OSMAR
create table Ventas (
ID int Primary key not null IDENTITY (1, 1),
Cantidad  int,
Fecha smalldatetime,
Tipo_de_venta varchar(50), 
Forma_de_pago varchar(50), 
MenuID int foreign key references Menu(ID)
)
go
 
--CESAR
create table Cliente (
ID int not null primary key identity (1,1),
NombreCliente varchar(50),
Contacto varchar(50),
FechaRegistro date
)
create table Mesa(
ID int not null primary key identity (1,1),
cantidad_de_personas INT,--CANTIDAD DE PERSONA
estatus varchar (50),--OCUPADO O DISPONIBLE
tipo_de_mesa VARCHAR(50) --un decir redonda o cuadrada
--CONECTIVA DE RESERVAS
--CLIENTE CONECTIVA
--FACTURA CONECTIVA
--CONECTIVA EMPLEADO POR MOTIVO DE QUE QUIEN LA ATIENDE Y SERIA NULL SI ESTATUS DISPONIBLE
)
 
create table Reservas (
ID int not null primary key identity (1,1),
FechayHora varchar(15),
CantidadDePersonas int,
EstadoDeReserva varchar(20),
ClienteID int foreign key references Cliente(ID),
MesaID int foreign key references Mesa(ID)
)
create table Gastos (
ID int not null primary key identity (1,1),
FechaGasto date,
Monto decimal(10,3),
MetodoPago varchar(35),
ComprobantePago varchar(100),
ProveedorID int foreign key references Proveedores(ID)
)
 
--Victor
create table Factura(
ID INT IDENTITY(1,1) NOT NULL,
Fecha date,--Fecha de la factura
Descripcion varchar(250),--La descripcion
forma_de_pago varchar(250),--Efectivo o Tarjeta
datos_fiscales varchar(250),--INFO
RFC varchar(50),--RFC
subtotal numeric(10,2),--CUESTA
total numeric(10, 2),--SUBTOTAL +IMPUESTO
impuesto numeric(10,2),--IMPUESTO
fecha_vencimiento DATE,--CUANDO VENCE
Unidades varchar(50),--LO QUE COMPRO DEL RESTAURANTE
Hora time,--QUE HORA FUE
Cambio int null,--CAMBIO PONGO NULL POR MOTIVO DE QUE NO TODOS
propina numeric(10,2), --Esto si esta en duda ya que vi que hay unas facturas que si metes la propina 
ClienteID int foreign key references Cliente(ID),
EmpleadoID int foreign key references Empleados(ID),
MesaID int foreign key references Mesa(ID),
MenuID int foreign key references Menu(ID)
--tiene que haber una conectiva con mesa
--conectiva con el trabajador y cliente ya que quien lo atendio y a quien atendio
--POSIBLE CONECTIVA CON MENU Y VENTAS
)
 

--Victor
create table factura(
facutra_id INT IDENTITY(1,1) NOT NULL,
Fecha date,--Fecha de la factura
Descripcion varchar(250),--La descripcion
forma_de_pago varchar(250),--Efectivo o Tarjeta
datos_fiscales varchar(250),--INFO
RFC varchar(50),--RFC
subtotal numeric(10,2),--CUESTA
total numeric(10, 2),--SUBTOTAL +IMPUESTO
impuesto numeric(10,2),--IMPUESTO
fecha_vencimiento DATE,--CUANDO VENCE
Unidades varchar(50),--LO QUE COMPRO DEL RESTAURANTE
Hora time,--QUE HORA FUE
Cambio int null,--CAMBIO PONGO NULL POR MOTIVO DE QUE NO TODOS
propina numeric(10,2) null --Esto si esta en duda ya que vi que hay unas facturas que si metes la propina 
--tiene que haber una conectiva con mesa
--conectiva con el trabajador y cliente ya que quien lo atendio y a quien atendio
--POSIBLE CONECTIVA CON MENU Y VENTAS
) 
create table invetario(
inventario_id INT IDENTITY(1,1) NOT NULL,
cantidad INT,--CANTIDAD
tipo varchar(50),--DE QUE TIPO ES
nombre varchar(50),--NOMBRE
descripcion varchar(250),--DESCRIPCION
actualizacion date,--CUANDO FUE LA ULTIMA VEZ ACTUALIZADA
disponiblidad varchar(50),--SI ESTA DISPONIBLE O NO
estado VARCHAR(50),--un decir caducado o fresco
fecha_ingreso DATE,--cuando se ingreso
categoria VARCHAR(50), --diferencia de tipo y categoria tipo es cuando un decir refresco jugo agua y categoria es carnes verduras o lacteos
fecha_vencimiento DATE,--caducacion
costo numeric(10, 2),--costo del producto
medible int null --puse null por que no todo es medible a que me refiero con esto un decir gramo litros etc.
--CONECTIVA DE PROVEDORES
--POSIBLE CONECTIVA EMPLEADO
-- CONECTIVA DE GASTOS
--POSIBLE CONECTIVA CON MENU
)

create table mesa(
mesa_id INT IDENTITY(1,1) NOT NULL,
cantidad_de_personas INT,--CANTIDAD DE PERSONA
estatus varchar (50),--OCUPADO O DISPONIBLE
tipo_de_mesa VARCHAR(50) --un decir redonda o cuadrada
--CONECTIVA DE RESERVAS
--CLIENTE CONECTIVA
--FACTURA CONECTIVA
--CONECTIVA EMPLEADO POR MOTIVO DE QUE QUIEN LA ATIENDE Y SERIA NULL SI ESTATUS DISPONIBLE
)
