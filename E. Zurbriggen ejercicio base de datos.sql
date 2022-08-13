CREATE DATABASE peluqueria_canina;
USE peluqueria_canina;
CREATE TABLE dueño
(
Dni int,
Nombre varchar(20),
Apellido varchar(20) not null,
Telefono varchar(15),
Direccion varchar(30) not null,
CONSTRAINT dni_pk PRIMARY KEY (Dni)
);

CREATE TABLE perro
(
IDperro int auto_increment,
Nombre varchar(20) not null, 
Fecha_nacimiento date,
Sexo varchar(10),
Dni_dueño int , 
CONSTRAINT IDperro_pk PRIMARY KEY (IDperro),
CONSTRAINT Dni_dueño_fk foreign key (Dni_dueño) REFERENCES dueño (Dni)
);

CREATE TABLE historial
(
ID_historial int auto_increment,
Fecha date not null,
Perro_id int,
Descripcion varchar(50) not null,
Monto varchar(10),
CONSTRAINT ID_historial_pk PRIMARY KEY (ID_historial),
CONSTRAINT Perro_id_fk FOREIGN KEY (Perro_id) REFERENCES perro (IDperro)
);

SELECT Nombre
FROM perro;

SELECT IDperro, Nombre
FROM perro;



