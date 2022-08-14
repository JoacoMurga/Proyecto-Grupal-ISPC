# Creando la base de datos
CREATE DATABASE IF NOT EXISTS peluqueria_canina;

use peluqueria_canina;

# Ejercicio 1 - Creación de las tablas
CREATE TABLE dueno
 (
  DNI INT NOT NULL,
  Nombre VARCHAR(25) NOT NULL,
  Apellido VARCHAR(30) NOT NULL,
  Telefono INT NULL,
  Direccion VARCHAR(50) NULL,
  CONSTRAINT dueno_pk PRIMARY KEY (DNI)
  );
  
CREATE TABLE perro 
(
  ID_perro INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(25) NOT NULL,
  Fecha_nac DATE,
  Sexo VARCHAR(10),
  DNI_dueno INT NOT NULL,
  CONSTRAINT perro_pk PRIMARY KEY (ID_perro),
  CONSTRAINT dni_dueno_fk FOREIGN KEY (DNI_dueno) REFERENCES dueno(DNI)
  );
  
CREATE TABLE historial (
  Id_historial INT NOT NULL AUTO_INCREMENT,
  Fecha DATE NOT NULL,
  Perro INT NOT NULL,
  Descripcion VARCHAR(45) NULL,
  Monto INT NULL,
  CONSTRAINT historial_pk PRIMARY KEY (Id_historial),
  CONSTRAINT perro_fk FOREIGN KEY (Perro) REFERENCES perro(ID_perro));


# Ejercicio 2 - Inserción de un perro y su dueño asociado
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES ('96009448', 'tsue', 'moto', '3518578274', 'bolivia 678');
INSERT INTO perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('1', 'doki', '20050813', 'masculino', '96009448');

# Ejercicio 4 - Actualización de fecha de nacimiento de un perro
UPDATE perro SET Fecha_nac = '20050820' WHERE (ID_perro = '1');