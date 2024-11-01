/* 
Base de datos de un Hostipal82196
tablas
consultorios
doctores
torres
salas 
pacientes 

a cada tabla al menos 4 atributos 
a cada tabla al menos 15 registros 
*/

create database Hospital82196 
go 

use Hospital82196
go

create table tablas (
ID int,
NombreTabla varchar(50),
TipoTabla varchar(60),
Secci�nTabla varchar(60)
)
go

create table consultorios (
ID int, 
NombreConsultorio varchar(60),
ClienteNombre varchar(60),
DoctorNombre varchar(60)
)
go

create table doctores (
ID int,
DoctorNombre varchar (60),
Especialidad varchar(60),
ConsultorioDeDoctor varchar(60)
)
go

create table salas (
ID int, 
PisoDeSala varchar(60),
NumeroDeSala int, 
TipoDeSala varchar(60)
)
go

create table pacientes (
ID int,
NombreDePaciente varchar(60),
ApellidoPaternoDePaciente varchar(60),
ApellidoMaternoDePaciente varchar(60)
)
go

insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (1, 'Carlos', 'L�pez', 'Gonz�lez')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (2, 'Ana', 'Mart�nez', 'Fern�ndez')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (3, 'Jorge', 'Ram�rez', 'D�az')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (4, 'Marta', 'Garc�a', 'G�mez')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (5, 'Luis', 'P�rez', 'Torres')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (6, 'Sof�a', 'Morales', 'Castillo')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (7, 'Pedro', 'Torres', 'Ramos')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (8, 'Laura', 'S�nchez', 'Medina')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (9, 'Miguel', 'Herrera', 'Hern�ndez')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (10, 'Sara', 'Jim�nez', 'Romero')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (11, 'Ricardo', 'Vega', 'Navarro')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (12, 'Elena', 'Ruiz', 'Jim�nez')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (13, 'Andr�s', 'Flores', 'Aguilar')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (14, 'Paula', 'Rodr�guez', 'Salinas')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (15, 'Diana', 'Guti�rrez', 'Ortiz')
go

insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (1, 'Clientes', 'Informaci�n personal', 'Administraci�n')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (2, 'Productos', 'Cat�logo', 'Ventas')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (3, 'Ventas', 'Transacciones', 'Ventas')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (4, 'Empleados', 'Recursos Humanos', 'Recursos Humanos')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (5, 'Proveedores', 'Log�stica', 'Compras')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (6, 'Inventario', 'Almac�n', 'Inventario')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (7, 'Pedidos', 'Ordenes', 'Ventas')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (8, 'Categor�as', 'Clasificaci�n', 'Inventario')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (9, 'Sucursales', 'Ubicaciones', 'Operaciones')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (10, 'Facturas', 'Finanzas', 'Finanzas')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (11, 'Envios', 'Log�stica', 'Log�stica')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (12, 'Devoluciones', 'Postventa', 'Postventa')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (13, 'Cuentas', 'Finanzas', 'Finanzas')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (14, 'Cobros', 'Cobros y pagos', 'Finanzas')
insert into tablas (ID, NombreTabla, TipoTabla, Secci�nTabla) values (15, 'Pagos', 'Cobros y pagos', 'Finanzas')
go

insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (1, 'Consultorio Central', 'Carlos L�pez', 'Dr. Gonz�les')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (2, 'Consultorio Norte', 'Ana Mart�nez', 'Dra. Fern�ndez')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (3, 'Consultorio Sur', 'Jorge Ram�rez', 'Dr. D�az')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (4, 'Consultorio Este', 'Marta Garc�a', 'Dra. G�mez')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (5, 'Consultorio Oeste', 'Luis P�rez', 'Dr. Torres')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (6, 'Consultorio Familiar', 'Sof�a Morales', 'Dra. Castillo')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (7, 'Consultorio Pedi�trico', 'Pedro Torres', 'Dr. Ramos')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (8, 'Consultorio Ginecol�gico', 'Laura S�nchez', 'Dra. Medina')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (9, 'Consultorio Cardiolog�a', 'Miguel Herrera', 'Dr. Hern�ndez')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (10, 'Consultorio Dermatolog�a', 'Ricardo Vega', 'Dr. Navarro')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (11, 'Consultorio Neurolog�a', 'Sara Jim�nez', 'Dra. Romero')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (12, 'Consultorio Psiquiatr�a', 'Elena Ruiz', 'Dra. Jum�nez')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (13, 'Consultorio Oftalmolog�a ', 'Andr�s Flores', 'Dra. Aguilar')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (14, 'Consultorio Ortopedia', 'Paula Rodr�gez', 'Dr. Salinas')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (15, 'Consultorio Endocrinolog�a', 'Diana Guti�rrez', 'Dr. Ortiz')
go

insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (1, 'Dr. Gonz�lez', 'Medicina General', 'Consultorio Central')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (2, 'Dra. Fern�ndez', 'Pediatr�a', 'Consultorio Norte')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (3, 'Dr. D�az', 'Cardiolog�a', 'Consultorio Sur')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (4, 'Dra. G�mez', 'Neurolog�a', 'Consultorio Este')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (5, 'Dr. Torres', 'Dermatolog�a', 'Consultorio Oeste')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (6, 'Dra. Castillo', 'Psiquiatr�a', 'Consultorio Familiar')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (7, 'Dr. Ramos', 'Oftalmolog�a', 'Consultorio Pedi�trico')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (8, 'Dra. Medina', 'Ginecolog�a', 'Consultorio Ginecol�gico')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (9, 'Dr. Hern�ndez', 'Ortopedia', 'Consultorio Cardiolog�a')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (10, 'Dra. Romero', 'Endocrinolog�a', 'Consultorio Neurolog�a')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (11, 'Dr. Navarro', 'Oncolog�a' , 'Consultorio Dermatolog�a')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (12, 'Dra. Jim�nez', 'Neumolog�a', 'Consultorio Psiquiatr�a')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (13, 'Dr. Aguilar', 'Urolog�a', 'Consultorio Oftalmolog�a')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (14, 'Dra. Salinas', 'Gastroenterolog�a', 'Consultorio Ortopedia')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (15, 'Dr. Ortiz', 'Reumatolog�a', 'Consultorio Endocrinolog�a')
go

insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (1, 'Piso 1', 101, 'Consulta')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (2, 'Piso 2', 102, 'Examen')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (3, 'Piso 3', 103, 'Cirug�a')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (4, 'Piso 1', 104, 'Consulta')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (5, 'Piso 2', 105, 'Examen')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (6, 'Piso 3', 106, 'Cirug�a')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (7, 'Piso 1', 107, 'Consulta')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (8, 'Piso 2', 108, 'Examen')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (9, 'Piso 3', 109, 'Cirug�a')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (10, 'Piso 1', 110, 'Consulta')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (11, 'Piso 2', 111, 'Examen')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (12, 'Piso 3', 112, 'Cirug�a')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (13, 'Piso 1', 113, 'Consulta')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (14, 'Piso 2', 114, 'Examen')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (15, 'Piso 3', 115, 'Cirug�a')
go