CREATE DATABASE dbregistro

GO
use dbregistro
GO

-- CREAR TABLA CIUDADES
CREATE TABLE Ciudades(
Id int primary key identity (1,1),
nombre nvarchar (60) not null,
estado bit default 1
)
GO

--CREATE TABLE PERSONAS
CREATE TABLE Personas(
Id int primary key identity (1,1),
nombres nvarchar(40)not null,
apellidos nvarchar(40 ) not null,
ciudadId int foreign key references Ciudades(Id) not null,
activo bit default 1

)

GO
/* Consultas de Insertar 
*/
Insert into Ciudades (nombre)
values ( 'Managua'),
('Masaya'),
('Leon'),
('Jinotepe')
go
Insert into Personas (nombres,apellidos,ciudadId)
values (' Cesar', ' Gallardo',4)
,
('Anselm Daniel', 'Alvarado Amador',2),
(' Sergio', ' Rivas',1),
('Erick', 'Martinez',3)
Go
select id as'codigo',  nombre as 'ciudad' ,estado as 'Est' from Ciudades

select Personas.id as Codigo, Personas.nombres + ' ' + Personas.apellidos as 'Nombre Completo',
Ciudades.nombre as Ciudad from Personas inner join Ciudades on Personas.ciudadId = Ciudades.Id




declare @nombre nvarchar(40)
set @nombre = '%E%'




select Personas.id as Codigo, Personas.nombres + ' ' + Personas.apellidos as 'Nombre Completo',
Ciudades.nombre as Ciudad from Personas inner join Ciudades on Personas.ciudadId = Ciudades.Id


 where nombres like @nombre
