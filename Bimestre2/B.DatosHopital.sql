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
SecciónTabla varchar(60)
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

insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (1, 'Carlos', 'López', 'González')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (2, 'Ana', 'Martínez', 'Fernández')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (3, 'Jorge', 'Ramírez', 'Díaz')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (4, 'Marta', 'García', 'Gómez')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (5, 'Luis', 'Pérez', 'Torres')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (6, 'Sofía', 'Morales', 'Castillo')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (7, 'Pedro', 'Torres', 'Ramos')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (8, 'Laura', 'Sánchez', 'Medina')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (9, 'Miguel', 'Herrera', 'Hernández')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (10, 'Sara', 'Jiménez', 'Romero')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (11, 'Ricardo', 'Vega', 'Navarro')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (12, 'Elena', 'Ruiz', 'Jiménez')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (13, 'Andrés', 'Flores', 'Aguilar')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (14, 'Paula', 'Rodríguez', 'Salinas')
insert into pacientes (ID, NombreDePaciente, ApellidoPaternoDePaciente, ApellidoMaternoDePaciente) values (15, 'Diana', 'Gutiérrez', 'Ortiz')
go

insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (1, 'Clientes', 'Información personal', 'Administración')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (2, 'Productos', 'Catálogo', 'Ventas')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (3, 'Ventas', 'Transacciones', 'Ventas')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (4, 'Empleados', 'Recursos Humanos', 'Recursos Humanos')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (5, 'Proveedores', 'Logística', 'Compras')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (6, 'Inventario', 'Almacén', 'Inventario')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (7, 'Pedidos', 'Ordenes', 'Ventas')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (8, 'Categorías', 'Clasificación', 'Inventario')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (9, 'Sucursales', 'Ubicaciones', 'Operaciones')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (10, 'Facturas', 'Finanzas', 'Finanzas')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (11, 'Envios', 'Logística', 'Logística')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (12, 'Devoluciones', 'Postventa', 'Postventa')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (13, 'Cuentas', 'Finanzas', 'Finanzas')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (14, 'Cobros', 'Cobros y pagos', 'Finanzas')
insert into tablas (ID, NombreTabla, TipoTabla, SecciónTabla) values (15, 'Pagos', 'Cobros y pagos', 'Finanzas')
go

insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (1, 'Consultorio Central', 'Carlos López', 'Dr. Gonzáles')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (2, 'Consultorio Norte', 'Ana Martínez', 'Dra. Fernández')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (3, 'Consultorio Sur', 'Jorge Ramírez', 'Dr. Díaz')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (4, 'Consultorio Este', 'Marta García', 'Dra. Gómez')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (5, 'Consultorio Oeste', 'Luis Pérez', 'Dr. Torres')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (6, 'Consultorio Familiar', 'Sofía Morales', 'Dra. Castillo')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (7, 'Consultorio Pediátrico', 'Pedro Torres', 'Dr. Ramos')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (8, 'Consultorio Ginecológico', 'Laura Sánchez', 'Dra. Medina')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (9, 'Consultorio Cardiología', 'Miguel Herrera', 'Dr. Hernández')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (10, 'Consultorio Dermatología', 'Ricardo Vega', 'Dr. Navarro')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (11, 'Consultorio Neurología', 'Sara Jiménez', 'Dra. Romero')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (12, 'Consultorio Psiquiatría', 'Elena Ruiz', 'Dra. Juménez')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (13, 'Consultorio Oftalmología ', 'Andrés Flores', 'Dra. Aguilar')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (14, 'Consultorio Ortopedia', 'Paula Rodrígez', 'Dr. Salinas')
insert into consultorios (ID, NombreConsultorio, ClienteNombre, DoctorNombre) values (15, 'Consultorio Endocrinología', 'Diana Gutiérrez', 'Dr. Ortiz')
go

insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (1, 'Dr. González', 'Medicina General', 'Consultorio Central')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (2, 'Dra. Fernández', 'Pediatría', 'Consultorio Norte')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (3, 'Dr. Díaz', 'Cardiología', 'Consultorio Sur')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (4, 'Dra. Gómez', 'Neurología', 'Consultorio Este')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (5, 'Dr. Torres', 'Dermatología', 'Consultorio Oeste')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (6, 'Dra. Castillo', 'Psiquiatría', 'Consultorio Familiar')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (7, 'Dr. Ramos', 'Oftalmología', 'Consultorio Pediátrico')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (8, 'Dra. Medina', 'Ginecología', 'Consultorio Ginecológico')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (9, 'Dr. Hernández', 'Ortopedia', 'Consultorio Cardiología')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (10, 'Dra. Romero', 'Endocrinología', 'Consultorio Neurología')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (11, 'Dr. Navarro', 'Oncología' , 'Consultorio Dermatología')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (12, 'Dra. Jiménez', 'Neumología', 'Consultorio Psiquiatría')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (13, 'Dr. Aguilar', 'Urología', 'Consultorio Oftalmología')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (14, 'Dra. Salinas', 'Gastroenterología', 'Consultorio Ortopedia')
insert into doctores (ID, DoctorNombre, Especialidad, ConsultorioDeDoctor) values (15, 'Dr. Ortiz', 'Reumatología', 'Consultorio Endocrinología')
go

insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (1, 'Piso 1', 101, 'Consulta')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (2, 'Piso 2', 102, 'Examen')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (3, 'Piso 3', 103, 'Cirugía')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (4, 'Piso 1', 104, 'Consulta')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (5, 'Piso 2', 105, 'Examen')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (6, 'Piso 3', 106, 'Cirugía')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (7, 'Piso 1', 107, 'Consulta')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (8, 'Piso 2', 108, 'Examen')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (9, 'Piso 3', 109, 'Cirugía')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (10, 'Piso 1', 110, 'Consulta')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (11, 'Piso 2', 111, 'Examen')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (12, 'Piso 3', 112, 'Cirugía')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (13, 'Piso 1', 113, 'Consulta')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (14, 'Piso 2', 114, 'Examen')
insert into salas (ID, PisoDeSala, NumeroDeSala, TipoDeSala) values (15, 'Piso 3', 115, 'Cirugía')
go