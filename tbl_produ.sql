--EJEMPLO TABLA PARA TRATAR DE ELIMINAR Y AGREGAR COSAS
CREATE DATABASE bd_ddl;
USE bd_ddl;
CREATE TABLE tbl_ddl1 (
codigo INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR (5) NOT NULL,
cantidad VARCHAR (10) NOT NULL,
apellido VARCHAR (10) NOT NULL,
sede VARCHAR (10) NOT NULL,
precio_unitario VARCHAR (10) NOT NULL,
precio_compra INT (10) NOT NULL,
valor_total VARCHAR (10) NOT NULL,
PRIMARY KEY (codigo)
)
--Eliminar la columna apellido
ALTER TABLE tbl_ddl1 --Nombre de la TABLA
DROP apellido; --Nombre de la columna

--Cambiar dato
ALTER TABLE tbl_ddl1 
CHANGE nombre nombre_producto VARCHAR (20) NOT NULL; --nombre ANTIGUO, nombre NUEVO Y TIPO DE DATO

--Cambiar tipo de dato
--cambiar el de sede
ALTER TABLE tbl_ddl1 
MODIFY sede VARCHAR (20) NOT NULL; --cambia SOLAMENTE el tipo de dato

--cambiar el de cantidad
ALTER TABLE tbl_ddl1 
MODIFY cantidad INT (10) NOT NULL; --cambia SOLAMENTE el tipo de dato

--cambiar el de precio unitario
ALTER TABLE tbl_ddl1 
MODIFY precio_unitario DECIMAL (11, 2) NOT NULL;

--cambiar el de precio de compra
ALTER TABLE tbl_ddl1 
MODIFY precio_compra DECIMAL (11, 2) NOT NULL;

--cambiar el de valor total
ALTER TABLE tbl_ddl1 
MODIFY valor_total DECIMAL (11, 2) NOT NULL;


--AGREGAR nuevos campos
--Agregar vendedor
ALTER TABLE tbl_ddl1
ADD vendedor VARCHAR (20) NOT NULL;

--Agregar bodega
ALTER TABLE tbl_ddl1
ADD bodega VARCHAR (20) NOT NULL;


--RENOMBRAR la tabla
ALTER TABLE tbl_ddl1
RENAME TO tbl_produ;


--TABLAS NUEVAS
--tabla de cliente
CREATE TABLE tbl_vendedor(
    identificacion_vendedor INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    apellidos VARCHAR (30) NOT NULL,
    telefono_celular INT (10) NOT NULL,
    fecha_de_nacimiento DATE NOT NULL,
    PRIMARY KEY (identificacion_vendedor)
)

--tabla bodega
CREATE TABLE tbl_bodega(
    codigo_bodega INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (20) NOT NULL,
    PRIMARY KEY (codigo_bodega)
)

CREATE TABLE tbl_sede(
    codigo_sede INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (20) NOT NULL,
    PRIMARY KEY (codigo_sede)
)


ALTER TABLE tbl_produ 
CHANGE vendedor identificacion_vendedor INT NOT NULL;

ALTER TABLE tbl_produ
CHANGE bodega codigo_bodega INT NOT NULL;

ALTER TABLE tbl_produ 
CHANGE sede codigo_sede INT NOT NULL;


--eliminé las tablas porque no puse bien el PK, pero ya lo corregí arriba
DROP TABLE tbl_vendedor;

DROP TABLE tbl_bodega;

DROP TABLE tbl_sede;

--volví a agregar las tablas de arriba

--AGREGAR CLAVES FORÁNEAS
--clave foránea de vendedor
ALTER TABLE tbl_produ --nombre de la tabla principal
ADD CONSTRAINT fk_vendedor --se pone el nombre que uno quiera 
FOREIGN KEY (identificacion_vendedor) --nombre de la clave foránea EN LA TABLA PRINCIPAL
REFERENCES tbl_vendedor(identificacion_vendedor); --nombre de la tabla que se va a relacionar y nombre de la clave primaria de esa tabla

--clave foránea de bodega
ALTER TABLE tbl_produ
ADD CONSTRAINT fk_bodega
FOREIGN KEY (codigo_bodega)
REFERENCES tbl_bodega(codigo_bodega);

--clave foránea de sede
ALTER TABLE tbl_produ
ADD CONSTRAINT fk_sede
FOREIGN KEY (codigo_sede)
REFERENCES tbl_sede(codigo_sede);

--ELIMINAR la RELACIÓN de la clave foránea de bodega
ALTER TABLE tbl_produ
DROP FOREIGN KEY fk_bodega; --se coloca el nombre de la clave foránea, no el campo

--ELIMINAR una tabla que SI existe
DROP TABLE IF EXISTS tbl_bodega;

--Para eliminar la base de datos
DROP DATABASE bd_ddl;