--Modelo basico de un negocio
--Categorias
--Empleados
--Productos/Servicios
--Clientes
--Comprasqu
--Inventarios
--Ventas
 
--Modelo básico de un negocio

CREATE database ModeloDeNegociosGenerico8166812;
GO

USE ModeloDeNegociosGenerico8166812;
GO

CREATE TABLE Categorias (
    ID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    Tipo VARCHAR(50),
    Descripcion VARCHAR(50)
);
GO

CREATE TABLE Inventario (
    ID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    Nombre VARCHAR(50),
    Stock INT,
    CategoriasID INT FOREIGN KEY REFERENCES Categorias(ID)
);
GO

CREATE TABLE Productos_o_servicio (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Tipo VARCHAR(30), -- Qué es
    Nombre VARCHAR(40), -- Cómo se llama
    Disponibilidad VARCHAR(30), -- Está disponible o no
    Precio NUMERIC(8,2), -- Costo
    Descripcion VARCHAR(250), -- De lo que va
    CategoriasID INT FOREIGN KEY REFERENCES Categorias(ID)
);
GO

CREATE TABLE Clientes (
    ID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    NombreCliente VARCHAR(50),
    ProductoPreferencia VARCHAR(50),
    HistorialDeCompas VARCHAR(50),
    Sexo VARCHAR(20)
);
GO

CREATE TABLE Ventas (
	ID int primary key not null identity (1,1),
    Monto NUMERIC,
    FechaVentas DATETIME DEFAULT GETDATE(),
	ClientesID int foreign key references Clientes(ID)
)
GO

CREATE TABLE Compras (
    ID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    FechaDeCompra DATE,
    MetodoDePago VARCHAR(25),
    TotalDeCompra INT,
    ProductosComprados VARCHAR(30),
    NumeroDeOrden VARCHAR(15),
    ClientesID INT FOREIGN KEY REFERENCES Clientes(ID)
);
GO

CREATE TABLE empleados (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50), -- Su nombre
    Apellido_paterno VARCHAR(50), -- Apellido del padre
    Apellido_materno VARCHAR(50), -- Apellido de la madre
    Contacto VARCHAR(50), -- Donde se puede contactar
    Direccion VARCHAR(50), -- Donde vive
    Fecha_de_contratacion DATE, -- Cuando fue contratado
    Turno VARCHAR(20), -- Cuando trabaja
    Fecha_de_nacimiento DATE, -- Cuando nació
    sexo VARCHAR(25), -- Su sexo
    Ocupacion VARCHAR(25), -- De lo que trabaja
    Salario NUMERIC(8,2), -- Lo que gana
    Estado VARCHAR(50), -- Que tal si está de vacaciones o algo así
	VentasID int foreign key references Ventas(ID),
	ComprasID int foreign key references Compras(ID)
);
GO

CREATE TABLE Compras_ProductoServicio (
    ID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    ComprasID INT FOREIGN KEY REFERENCES Compras(ID),
    Productos_o_servicioID INT FOREIGN KEY REFERENCES Productos_o_servicio(id)
);
GO