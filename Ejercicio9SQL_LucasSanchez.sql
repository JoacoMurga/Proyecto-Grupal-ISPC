-- Crear Base de Datos y Tablas según Modelo Relacional
CREATE 	DATABASE IF NOT EXISTS peluqueria_canina;
USE peluqueria_canina;

CREATE TABLE Dueno(
	DNI int not null unique,
    Nombre varchar(25) not null,
    Apellido varchar(25) not null,
    Telefono varchar(25),
    Direccion varchar(50) not null,
    
    -- restricciones
    CONSTRAINT pk_dueno PRIMARY KEY (DNI)
);
CREATE TABLE Perro(
	ID_Perro int not null unique auto_increment,
    Nombre varchar(25) not null,
    Fecha_nac date,
    sexo varchar(25),
    DNI_dueno int not null,
    -- restricciones
    CONSTRAINT pk_perro PRIMARY KEY (ID_Perro),
    CONSTRAINT fk_dni_dueno FOREIGN KEY (DNI_dueno) REFERENCES Dueno (DNI)
);
CREATE TABLE Historial(
	ID_Historial int not null unique auto_increment,
    Fecha date,
    Perro int not null,
    Descripcion varchar(25) not null,
    Monto int not null,
    -- restricciones
    CONSTRAINT pk_historial PRIMARY KEY (ID_Historial),
    CONSTRAINT fk_perro FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro)
);  

-- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
insert into Dueno(DNI,Nombre,Apellido,Telefono,Direccion) values 
	('39345223', 'Alejandro','Garcia','2920504314','Belgrano 230');
insert into Perro(ID_Perro, Nombre, Fecha_nac, sexo, DNI_dueno) values 
	('1', 'China','2008-07-28','hembra','39345223');

-- Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
UPDATE Dueno
SET Direccion = 'Libertad 123'
WHERE DNI = 39345223;