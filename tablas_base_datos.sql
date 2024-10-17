--creación de una base de datos-->
CREATE DATABASE bd_productos;
--usar la base de datos-->
USE bd_productos;
--creación de tablas-->
CREATE TABLE tbl_productos (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL, --VARCHAR: recibe numeros y letras-->
    precio DECIMAL (10,2) NOT NULL,--recibe 10 enteros y 2 decimales-->
    PRIMARY KEY (id)
)

--Base de datos empleado--> L
CREATE DATABASE bd_empleados;
USE bd_empleados;


CREATE TABLE tbl_genero_em(
    codigo_genero INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    PRIMARY KEY (codigo_genero)
)

CREATE TABLE tbl_area(
    id_area INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    PRIMARY KEY (id_area)
)

CREATE TABLE tbl_cargo(
    id_cargo INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) not NULL,
    id_area INT NOT NULL,
    PRIMARY KEY (id_cargo),
    FOREIGN KEY (id_area)REFERENCES tbl_area (id_area)
)


CREATE TABLE tbl_departamento_em(
    id_departamento INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    PRIMARY KEY (id_departamento)
)

CREATE TABLE tbl_ciudad_em(
    codigo_postal INT (5) NOT NULL,
    nombre VARCHAR (30) NOT NULL,
    id_departamento INT NOT NULL,
    PRIMARY KEY (codigo_postal),
    FOREIGN KEY (id_departamento) REFERENCES tbl_departamento_em (id_departamento)
)

CREATE TABLE tbl_empleado (
    id INT NOT NULL AUTO_INCREMENT,
    nombres VARCHAR(25) NOT NULL,
    apellidos VARCHAR(30) NOT NULL,
    dirección VARCHAR(30),
    codigo_postal INT (5) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    fecha_de_nacimiento DATE,
    codigo_genero INT NOT NULL,
    id_cargo INT NOT NULL,
    email_personal VARCHAR (30) NOT NULL,
    email_corporativo VARCHAR (30) NOT NULL,
    telefono_celular INT (10) NOT NULL,
    telefono_fijo INT (10) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY(codigo_postal) REFERENCES tbl_ciudad_em (codigo_postal),
    FOREIGN KEY(codigo_genero) REFERENCES tbl_genero_em (codigo_genero),
    FOREIGN KEY(id_cargo) REFERENCES tbl_cargo (id_cargo)
)





--/base de datos estudiantes-- L
CREATE DATABASE bd_estudiante; 
USE bd_estudiante;


CREATE TABLE tbl_genero_e(
    id_genero INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_genero)
)

CREATE TABLE tbl_facultad_e(
    id_facultad INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_facultad)
)

CREATE TABLE tbl_carrera_e(
    id_carrera INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    id_facultad INT NOT NULL, 
    PRIMARY KEY (id_carrera),
    FOREIGN KEY (id_facultad) REFERENCES tbl_facultad_e(id_facultad)
)

CREATE TABLE tbl_estudiantes_e(
    identificacion INT (10) NOT NULL,
    nombres VARCHAR(30) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    id_carrera INT NOT NULL,
    id_genero INT NOT NULL,
    semestre INT NOT NULL,
    telefono_celular BIGINT NOT NULL,
    telefono_fijo BIGINT NULL,
    fecha_de_ingreso DATE NOT NULL,
    saldo_en_deuda DECIMAL(12,2) NOT NULL,
    PRIMARY KEY (identificacion),
    FOREIGN KEY (id_carrera) REFERENCES tbl_carrera_e(id_carrera),
    FOREIGN KEY (id_genero) REFERENCES tbl_genero_e(id_genero)
)




--Base de datos producto-->
CREATE DATABASE bd_productos7;
USE bd_productos7;

CREATE TABLE tbl_vendedor( --l
    identificacion_vendedor INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    apellidos VARCHAR (30) NOT NULL,
    PRIMARY KEY (identificacion_vendedor)
)

CREATE TABLE tbl_unidad_de_medida( --l
    id_unidad_de_medida INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    PRIMARY KEY (id_unidad_de_medida)
)

CREATE TABLE tbl_categoria( --l
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    PRIMARY KEY (id_categoria)
)

CREATE TABLE tbl_sub_categoria( --l
    id_sub_categoria INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id_sub_categoria),
    FOREIGN KEY (id_categoria) REFERENCES tbl_categoria (id_categoria)
)

CREATE TABLE tbl_productos( --L
codigo_producto INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR (30) NOT NULL,
precio_costo DECIMAL(10,2) NOT NULL,
precio_venta DECIMAL(10,2) NOT NULL,
id_sub_categoria INT NOT NULL,
existencia INT NOT NULL,
id_unidad_de_medida INT NOT NULL,
identificacion_vendedor INT NOT NULL,
fecha_de_ultima_venta DATE,
PRIMARY KEY (codigo_producto),
FOREIGN KEY (id_sub_categoria) REFERENCES tbl_sub_categoria (id_sub_categoria),
FOREIGN KEY (id_unidad_de_medida) REFERENCES tbl_unidad_de_medida (id_unidad_de_medida),
FOREIGN KEY (identificacion_vendedor) REFERENCES tbl_vendedor (identificacion_vendedor)
) 









--Base de datos factura-->
CREATE DATABASE bd_factura7;
USE bd_factura7;

CREATE TABLE tbl_cliente( --l
    identificacion INT (12) NOT NULL ,
    nombre VARCHAR (30) NOT NULL,
    apellidos VARCHAR (30) NOT NULL,
    correo VARCHAR (30) NOT NULL,
    fecha_de_nacimiento DATE,
    PRIMARY KEY (identificacion)
)

CREATE TABLE tbl_unidad_de_medida( --l
    id_unidad_de_medida INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    PRIMARY KEY (id_unidad_de_medida)
)

CREATE TABLE tbl_categoria( --l
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    PRIMARY KEY (id_categoria)
)

CREATE TABLE tbl_sub_categoria( --l 
    id_sub_categoria INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id_sub_categoria),
    FOREIGN KEY (id_categoria) REFERENCES tbl_categoria (id_categoria)
)

CREATE TABLE tbl_producto( --l
    codigo_producto INT NOT NULL AUTO_INCREMENT,
    nombres VARCHAR (30) NOT NULL,
    id_sub_categoria INT NOT NULL,
    id_unidad_de_medida INT NOT NULL,
    Precio INT (12) NOT NULL,
    PRIMARY KEY (codigo_producto),
    FOREIGN KEY (id_sub_categoria) REFERENCES tbl_sub_categoria(id_sub_categoria),
    FOREIGN KEY (id_unidad_de_medida) REFERENCES tbl_unidad_de_medida(id_unidad_de_medida)
)

CREATE TABLE tbl_factura( --l
    codigo_factura INT NOT NULL AUTO_INCREMENT,
    fecha  DATE,
    identificacion INT (12) NOT NULL,
    dirección VARCHAR (30) NOT NULL,
    codigo_producto INT NOT NULL,
    cantidad INT (12) NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    precio_total DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (codigo_factura),
    FOREIGN KEY (codigo_producto) REFERENCES tbl_producto (codigo_producto),
    FOREIGN KEY (identificacion) REFERENCES tbl_cliente (identificacion)
)









--Base de datos supermercado-->
CREATE DATABASE bd_supermercado7;
USE bd_supermercado7;

 CREATE TABLE tbl_depto( 
    cod_depto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (cod_depto)
)
CREATE TABLE tbl_ciudad3( --l
    codigo_postal VARCHAR (7) NOT NULL,
    nombre VARCHAR (25) NOT NULL,
    cod_depto INT NOT NULL,
    PRIMARY KEY (codigo_postal),
    FOREIGN KEY (cod_depto) REFERENCES tbl_depto(cod_depto)
 )
 CREATE TABLE tbl_pais(--l
    codigo_pais INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (25) NOT NULL,
    codigo_postal VARCHAR (7) NOT NULL,
    PRIMARY KEY (codigo_pais),
    FOREIGN KEY (codigo_postal) REFERENCES tbl_ciudad3(codigo_postal)
 )
 CREATE TABLE tbl_cliente( --l
    id_cliente INT (12) NOT NULL,
    nombre VARCHAR (25) NOT NULL,
    codigo_pais INT NOT NULL,
    telefono INT (10) NOT NULL,
    correo VARCHAR (30) NOT NULL,
    PRIMARY KEY (id_cliente),
    FOREIGN KEY (codigo_pais) REFERENCES tbl_pais(codigo_pais)
 )

 CREATE TABLE tbl_genero( --l
    id_genero INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR (15) NOT NULL,
    PRIMARY KEY (id_genero)
 )
CREATE TABLE tbl_empleados ( --l
    id_empleados INT (10) NOT NULL,
    nombre VARCHAR (30) NOT NULL,
    apellidos VARCHAR (30) NOT NULL,
    id_genero INT NOT NULL,
    telefono_personal INT (10) NOT NULL,
    correo_personal VARCHAR (30) NOT NULL,
    PRIMARY KEY (id_empleados),
    FOREIGN KEY (id_genero) REFERENCES tbl_genero (id_genero)
)

 CREATE TABLE tbl_categoria( --l
    id_categoria INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    PRIMARY KEY (id_categoria)
)
CREATE TABLE tbl_sub_categoria( --l
    id_sub_categoria INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id_sub_categoria),
    FOREIGN KEY (id_categoria) REFERENCES tbl_categoria (id_categoria)
)
CREATE TABLE tbl_producto(--l
    codigo_producto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (20) NOT NULL,
    id_sub_categoria INT NOT NULL,
    existencia INT (10) NOT NULL,
    PRIMARY KEY (codigo_producto),
    FOREIGN KEY (id_sub_categoria) REFERENCES tbl_sub_categoria (id_sub_categoria)
 )

CREATE TABLE tbl_departamento( --l
    codigo_departamento INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    PRIMARY KEY (codigo_departamento)
)
CREATE TABLE tbl_ciudad(--l
    codigo_postal VARCHAR (5) NOT NULL, /*no va autoincermentado*/
    nombre VARCHAR (30) NOT NULL,
    codigo_departamento INT NOT NULL,
    PRIMARY KEY (codigo_postal),
    FOREIGN KEY (codigo_departamento) REFERENCES tbl_departamento (codigo_departamento)
)

 CREATE TABLE tbl_bodega( --l
    cod_bodega INT NOT NULL AUTO_INCREMENT,
    codigo_postal VARCHAR (5) NOT NULL,
    nombre VARCHAR (15) NOT NULL,
    codigo_producto INT NOT NULL,
    PRIMARY KEY (cod_bodega),
    FOREIGN KEY (codigo_postal) REFERENCES tbl_ciudad (codigo_postal),
    FOREIGN KEY (codigo_producto) REFERENCES tbl_producto (codigo_producto)
)

CREATE TABLE tbl_sede(--l
    codigo_sede INT NOT NULL AUTO_INCREMENT,
    direccion VARCHAR (20) NOT NULL,
    codigo_postal VARCHAR (5) NOT NULL,
    cant_empleados INT (10) NOT NULL,
    cod_bodega INT NOT NULL,
    ingresos_mensuales DECIMAL (10,2) NOT NULL,
    ingresos_anuales DECIMAL (10,2) NOT NULL,
    telefono_corporativo INT (10) NOT NULL,
    correo_corporativo  VARCHAR (30) NOT NULL,
    id_cliente INT (12) NOT NULL,
    id_empleados INT (10) NOT NULL,
    PRIMARY KEY(codigo_sede),
    FOREIGN KEY (codigo_postal) REFERENCES tbl_ciudad (codigo_postal),
    FOREIGN KEY (cod_bodega) REFERENCES tbl_bodega (cod_bodega),
    FOREIGN KEY (id_cliente) REFERENCES tbl_cliente (id_cliente),
    FOREIGN KEY (id_empleados) REFERENCES tbl_empleados (id_empleados)
)

CREATE TABLE tbl_supermercado(--l
    codigo_supermercado INT NOT NULL AUTO_INCREMENT,
    nombre_supermercado VARCHAR (20) NOT NULL,
    codigo_sede INT NOT NULL,
    direccion VARCHAR (30) NOT NULL,
    bodega INT NOT NULL,
    clientes INT NOT NULL,
    PRIMARY KEY (codigo_supermercado),
    FOREIGN KEY (codigo_sede) REFERENCES tbl_sede (codigo_sede)
)




