-- Como crear una base de datos
create database Peliculas
go 

--Usar una base de datos especifica 
use Peliculas
go 


--Tipos de datos de texto
char(size) def 1 0-8000
varchar(size) 0-8000 
varchar(max) 1,073,741,824 letras 
text 2GB de texto 
nchar() 4,000 nvarchar() 500M+ --cualquier caracter sin importar idioma 
image 2GB

--Tipos de datos numericos 
bit 0,1,NULL
int -2,147,483,648 a 2,174,483,648
smallint -32,768 a 32,768
tinyint 0 a 255
bigint -9,233,372,036,854,775,807 a 9,233,372,036,854,775,807
decimal(p,s) p = maximo numero de digitos que se guardan a la derecha e izquierda del punto | rango - 1 - 38 - default: 18
s = indica el maximo numero de digitos guardado a la derecha del punto decimal | rango 0-p default: 0
float(n) n = si el tipo de dato debe guardar 4 u 8 bytes | rango -e1.79E + 308 a 1.79E + 308
float(24) = 4 bytesfloat(53) = 8 bytes 
numeric(p,s)
p = cuantos digitos va a guardar como maxico a la derecha e izquieda del punto
s = cuantos digitos va a tomar a la derecha del punto
money 
smallmoney 

--Date and time
datetime Del primero d e enero de 1753 al 31 de diciembre de 9999 con una precision de 3.33 milisegundos 
datetime2 del 1 de enero del 0001 al 31 de diciembre del 9999 con precision de 100nanosegundos
smalldatetime 1 de enero de 1900 a 6 de junio de 2079 con una precision de 1 minuto 
date del 1 de enero del 0001 al 31 de diciembre del 9999
time hasta 100 nanosegundos
datetimeoffset Igual que datetime2 pero con la leyenda de la zona horaria 
1/01/2001 12:55:55 UTC -6 





