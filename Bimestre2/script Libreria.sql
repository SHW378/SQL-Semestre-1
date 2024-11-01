use Librerias82260
go

USE [Librerias82260]
GO
/****** Object:  Table [dbo].[autores]    Script Date: 10/10/2024 8:29:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[autores](
	[ID] [int] NULL,
	[nombre] [varchar](50) NULL,
	[email] [varchar](150) NULL,
	[editorial] [varchar](100) NULL,
	[direccion] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[colecciones]    Script Date: 10/10/2024 8:29:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[colecciones](
	[ID] [int] NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[editoriales]    Script Date: 10/10/2024 8:29:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[editoriales](
	[ID] [int] NULL,
	[nombre] [varchar](50) NULL,
	[direccion] [varchar](150) NULL,
	[telefono] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[libros]    Script Date: 10/10/2024 8:29:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[libros](
	[ID] [int] NULL,
	[nombre] [varchar](50) NULL,
	[autor] [varchar](150) NULL,
	[editorial] [varchar](100) NULL,
	[paginas] [int] NULL,
	[genero] [varchar](50) NULL
) ON [PRIMARY]
GO

INSERT INTO libros(ID, nombre, autor,editorial,paginas,genero) VALUES (1, 'joker', 'joaquien fenix', 'mapita', 200, 'accion')
INSERT INTO libros(ID, nombre, autor,editorial,paginas,genero) VALUES (2, 'IT', 'Stephen KIng', 'Editorial sudamericana', 230, 'Terror')
INSERT INTO libros(ID, nombre, autor,editorial,paginas,genero) VALUES (3, 'El amor en los tiempos del colera', 'Gabriel Garcia', 'Editorial mondadori', 250, 'drama')
INSERT INTO libros(ID, nombre, autor,editorial,paginas,genero) VALUES (4, '1984', 'George Orwel', 'Harvill Secker', 328, 'Historia')
INSERT INTO libros(ID, nombre, autor,editorial,paginas,genero) VALUES (5, 'La sombra del viento', 'Carlos Ruiz', 'Planeta', 575, 'Gotico')
INSERT INTO libros(ID, nombre, autor,editorial,paginas,genero) VALUES (6, 'Fahrenheit 451', 'Ray Bradbury', 'Simon & Schuster', 158, 'Ciencia ficcion')
INSERT INTO Libros (ID, Nombre, Autor, Editorial, Paginas, Genero) VALUES (7, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 'Alianza', 1023, 'Cl�sico');
INSERT INTO Libros (ID, Nombre, Autor, Editorial, Paginas, Genero) VALUES (8, 'Fahrenheit 451', 'Ray Bradbury', 'Simon & Schuster', 158, 'Ciencia Ficci�n');
INSERT INTO Libros (ID, Nombre, Autor, Editorial, Paginas, Genero) VALUES (9, 'El Hobbit', 'J.R.R. Tolkien', 'Houghton Mifflin', 310, 'Fantas�a');
INSERT INTO Libros (ID, Nombre, Autor, Editorial, Paginas, Genero) VALUES (10, 'La Metamorfosis', 'Franz Kafka', 'Schocken', 191, 'Novela');
 
INSERT INTO autores (ID, Nombre,  Email, editorial, direccion) VALUES (1, 'Ana P�rez', 'ana.perez@example.com', 'Planeta', 'Calle Falsa 123');
INSERT INTO autores (ID, Nombre,  Email, editorial, direccion) VALUES (2, 'Luis G�mez',  'luis.gomez@example.com', 'Random House', 'Avenida Siempre Viva 456');
INSERT INTO autores (ID, Nombre,  Email, editorial, direccion) VALUES (3, 'Sof�a Mart�nez', 'sofia.martinez@example.com', 'Penguin', 'Paseo del R�o 789');
INSERT INTO autores (ID, Nombre,  Email, editorial, direccion) VALUES (4, 'Javier Torres',  'javier.torres@example.com', 'HarperCollins', 'Calle del Sol 101');
INSERT INTO autores (ID, Nombre,  Email, editorial, direccion) VALUES (5, 'Carla Ruiz',  'carla.ruiz@example.com', 'Alianza', 'Boulevard de los Sue�os 202');
INSERT INTO autores (ID, Nombre,  Email, editorial, direccion) VALUES (6, 'Diego Fern�ndez',  'diego.fernandez@example.com', 'Dover', 'Calle Luna 303');
INSERT INTO autores (ID, Nombre,  Email, editorial, direccion) VALUES (7, 'Claudia Reyes',  'claudia.reyes@example.com', 'Schocken', 'Calle Estrella 404');
INSERT INTO autores (ID, Nombre,  Email, editorial, direccion) VALUES (8, 'Ricardo Castro', 'ricardo.castro@example.com', 'Houghton Mifflin', 'Avenida de la Paz 505');
INSERT INTO autores (ID, Nombre,  Email, editorial, direccion) VALUES (9, 'Valeria Morales',  'valeria.morales@example.com', 'Gallimard', 'Calle del Mar 606');
INSERT INTO autores (ID, Nombre,  Email, editorial, direccion) VALUES (10, 'Fernando Jim�nez', 'fernando.jimenez@example.com', 'Simon & Schuster', 'Calle del Viento 707');
 
INSERT INTO Editoriales (ID, Nombre, Direccion, Telefono) VALUES (1, 'Editorial Alpha', 'Calle Ejemplo 123', '555-0101');
INSERT INTO Editoriales (ID, Nombre, Direccion, Telefono) VALUES (2, 'Editorial Beta', 'Avenida Principal 456', '555-0102');
INSERT INTO Editoriales (ID, Nombre, Direccion, Telefono) VALUES (3, 'Editorial Gamma', 'Paseo Central 789', '555-0103');
INSERT INTO Editoriales (ID, Nombre, Direccion, Telefono) VALUES (4, 'Editorial Delta', 'Calle Luna 101', '555-0104');
INSERT INTO Editoriales (ID, Nombre, Direccion, Telefono) VALUES (5, 'Editorial �psilon', 'Boulevard del Sol 202', '555-0105');
INSERT INTO Editoriales (ID, Nombre, Direccion, Telefono) VALUES (6, 'Editorial Zeta', 'Calle del Mar 303', '555-0106');
INSERT INTO Editoriales (ID, Nombre, Direccion, Telefono) VALUES (7, 'Editorial Eta', 'Avenida de la Paz 404', '555-0107');
INSERT INTO Editoriales (ID, Nombre, Direccion, Telefono) VALUES (8, 'Editorial Theta', 'Calle Estrella 505', '555-0108');
INSERT INTO Editoriales (ID, Nombre, Direccion, Telefono) VALUES (9, 'Editorial Iota', 'Calle del Viento 606', '555-0109');
INSERT INTO Editoriales (ID, Nombre, Direccion, Telefono) VALUES (10, 'Editorial Kappa', 'Avenida Siempre Viva 707', '555-0110');	
 
INSERT INTO colecciones (ID, Nombre, descripcion) VALUES (1, 'Colecci�n Cl�sicos', 'Una selecci�n de las obras m�s importantes de la literatura universal.');
INSERT INTO colecciones (ID, Nombre, descripcion) VALUES (2, 'Colecci�n Ciencia Ficci�n', 'Explora mundos futuristas y conceptos innovadores en la ciencia ficci�n.');
INSERT INTO colecciones (ID, Nombre, descripcion) VALUES (3, 'Colecci�n Romance', 'Historias de amor que capturan el coraz�n y la imaginaci�n.');
INSERT INTO colecciones (ID, Nombre, descripcion) VALUES (4, 'Colecci�n Fantas�a', 'Aventuras m�gicas en reinos lejanos llenos de criaturas fant�sticas.');
INSERT INTO colecciones (ID, Nombre, descripcion) VALUES (5, 'Colecci�n Misterio', 'Intrigas y enigmas que mantienen al lector al borde de su asiento.');
INSERT INTO colecciones (ID, Nombre, descripcion) VALUES (6, 'Colecci�n Aventuras', 'Relatos emocionantes que llevan a los lectores a viajes inolvidables.');
INSERT INTO colecciones (ID, Nombre, descripcion) VALUES (7, 'Colecci�n Biograf�as', 'La vida de personajes hist�ricos que han dejado huella en el mundo.');
INSERT INTO colecciones (ID, Nombre, descripcion) VALUES (8, 'Colecci�n Poes�a', 'Una recopilaci�n de versos que expresan las emociones m�s profundas.');
INSERT INTO colecciones (ID, Nombre, descripcion) VALUES (9, 'Colecci�n Ensayos', 'Reflexiones y an�lisis sobre temas contempor�neos y sociales.');
INSERT INTO colecciones (ID, Nombre, descripcion) VALUES (10, 'Colecci�n Infantil', 'Cuentos y relatos dise�ados para entretener y ense�ar a los m�s peque�os.');
