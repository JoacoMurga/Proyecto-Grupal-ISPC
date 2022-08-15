
use veterinaria;
-- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

insert into dueno values(42213228, 'Joaquin', 'Murga', 351212121, 'avenida siempreviva 123');
insert into perro values(1, 'Kira' , "2022-01-17", 'Hembra', 42213228);

-- Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.

insert into perro values(10, 'Max' , "2015-05-18", 'Macho', 42213228);
insert into historial values(1, "2022-08-14" , 10, "Descripcion acerca del perro como ejemplo", 1500.50);

SELECT * FROM perro;