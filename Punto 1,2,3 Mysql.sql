create database Peluqueria_Canina;
use Peluqueria_Canina; 
create table dueño
(
dni int primary key not null,
nombre varchar (20),
apellido varchar (20),
teléfono int,
dirección varchar (50)
);

insert into dueño values(39546284, 'Pedro','Gimenez',4618154,'rosario 56'),
(28465894, 'Juan','Romero',4628941,'Monza 87');

create table Perro(
ID_perro int primary key not null,
Nombre varchar (20),
fecha_nac date,
sexo varchar (10),
DNI_dueño int not null,
constraint fk_dni foreign key (DNI_dueño) references dueño (dni)
);

Insert into Perro values (56, 'Firulais','2016/4/10','masculino',39546284); 
insert into Perro values (63,'Pipo', '2019/6/5', 'masculino', 28465894);
insert into Perro values (82,'Luna', '2017/8/6', 'Femenino', 28465894);

Create table Historial(
id_historial int primary key not null,
Fecha date,
Perro int not null,
Descripción varchar (50),
Monto float,
constraint fk_perro foreign key (Perro) references Perro(ID_perro)
);

insert into Historial values (897, '2017-9-5',82,'vacunación',2000);

-- considero 1 año como mucho tiempo sin visitar veterinaria;
select fecha, perro,descripción,nombre
from historial inner join Perro on historial.perro=Perro.ID_perro
where fecha>=2021/8/13;

delete perro from Perro
inner join historial on perro.ID_perro=historial.perro
where fecha>=2021/8/13;

