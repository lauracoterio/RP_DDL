--TABLA DEPARTAMENTO
CREATE DATABASE bd_departamento;
USE bd_departamento;

CREATE TABLE tbl_depto (
    id_departamento INT NOT NULL AUTO_INCREMENT, 
    nombre INT (30) NOT NULL, --cambiar a VARCHAR
    direccion VARCHAR (20) NOT NULL,--eliminar
    ciudad VARCHAR (5) NULL,--cambiar el límite
    barrio VARCHAR (20) NOT NULL--eliminar
    PRIMARY KEY (id_departamento)
)

CREATE TABLE tbl_ciudad (
    id_ciudad INT (5) NOT NULL,--cambiar a código postal
    nombre_ciudad VARCHAR (20) NOT NULL,
    nombre_persona VARCHAR (20) NOT NULL, --eliminar
    apellido_persona VARCHAR (20) NOT NULL,--eliminar
    direccion VARCHAR (25) NOT NULL
    PRIMARY KEY (id_ciudad)
)


--1
--eliminar dirección  y barrio de tbl_depto
ALTER TABLE tbl_depto
DROP direccion;

--2
ALTER TABLE tbl_depto
DROP barrio;

--3
--Modificar nombre y ciudad en tbl_depto
ALTER TABLE tbl_depto
MODIFY nombre VARCHAR (20) NOT NULL ;

--4
ALTER TABLE tbl_depto
MODIFY ciudad VARCHAR (20) NOT NULL ;

--5
--Modificar id codigo en tbl_ciudad
ALTER TABLE tbl_ciudad
CHANGE id_ciudad codigo_postal INT (5) NOT NULL;

--6
--Eliminar nombre y apellido en tbl_ciudad
ALTER TABLE tbl_ciudad
DROP nombre_persona;

--7
ALTER TABLE tbl_ciudad
DROP apellido_persona;

--8
--Agregar barrio a tbl_ciudad
ALTER TABLE tbl_ciudad
ADD barrio VARCHAR (20) NOT NULL;

--9
--Agregar departamento para crear la clave foránea
ALTER TABLE tbl_ciudad
ADD id_departamento INT NOT NULL;

--10
--agregar clave foránea
ALTER TABLE tbl_ciudad
ADD CONSTRAINT departamento_fk
FOREIGN KEY (id_departamento)
REFERENCES tbl_depto (id_departamento);