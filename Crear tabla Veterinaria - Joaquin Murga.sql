USE Veterinaria;
-- Tabla perro

CREATE table Perro (
	ID_Perro int not null primary key,
    Nombre varchar(50),
    Fecha_nac date,
    Sexo varchar(10),
    DNI_Dueno int,
    constraint fk_dni foreign key (DNI_Dueno) references Dueno(DNI)
    
);

CREATE table Dueno (
	DNI int not null primary key,
    Nombre varchar(50),
    Apellido varchar(50),
    Telefono varchar(20),
    Direccion varchar(100)
);

CREATE table Historial (
	ID_Historial int not null primary key,
    Fecha date,
    Perro int,
	descripcion varchar(500),
    monto float,
    constraint fk_perro foreign key (Perro) references Perrodueno(ID_Perro)
);