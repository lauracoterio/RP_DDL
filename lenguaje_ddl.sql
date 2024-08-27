--Creación de base de datos-->
BCREATE DATABASE bd_productos;
USE bd_productos;--Permite crear (o usar) algo en la base de datos-->
--Crear una tabla-->
CREATE TABLE tbl_productos (
    --ESTRUCTURA: Campo, tipo de dato, atributos -->
    id INT NOT NULL AUTO_INCREMENT,--campo de valor númerico (entero), no nulo (obligatorio), y que el mismo me ponga el valor y esté incrementando-->
    nombre VARCHAR(25) NOT NUL,--campo de valor caracter (y letras), máx x número de letras, y que sea obligatorio-->
    precio DECIMAL(10,2) NOT NULL,--campo de valor decilas,10,2 quiere decir que sean 10 números enteros y dos decimales, y que sea obligatorio-->
    PRIMARY KEY (id)--se determina cuál campo es la PK-->
)





--TBL EMPLEADO-->
CREATE DATABASE bd_empleados1;
USE bd_empleados1;
CREATE TABLE tbl_empleados1 (
    id INT NOT NULL AUTO_INCREMENT,
    Nombres VARCHAR (20) NOT NULL,
    Apellidos VARCHAR(30) NOT NULL,
    Direccion VARCHAR(30) NOT NULL,
    Ciudad VARCHAR (25) NOT NULL,
    Genero VARCHAR (15) NOT NULL,
    Cargo VARCHAR (15) NOT NULL,
    Email Personal VARCHAR (30) NOT NULL,
    Email corporativo VARCHAR (30) NOT NULL,
    Salario DECIMAL (11,2) NOT NULL,
    PRIMARY KEY (id)
)
--TBL CIUDAD-->
CREATE TABLE tbl_ciudad1 (
    Codigo_postal INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    Departamento VARCHAR (25) NOT NULL,
    PRIMARY KEY (Codigo_postal)
)
--TBL DEPARTAMENTO-->
CREATE TABLE tbl_departamento1 (
    id_departamento INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_departamento)
)

--TBL GÉNERO-->
CREATE TABLE tbl_genero1 (
    id_genero INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_genero)
)

--TBL CARGO-->
CREATE TABLE tbl_cargo (
    id_cargo INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    Area VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_cargo)
)
--TBL  AREA-->
CREATE TABLE tbl_area (
    id_area INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_area)
)





--TBL ESTUDIANTE-->
CREATE DATABASE bd_estudiantes;
USE bd_estudiantes;
CREATE TABLE tbl_estudiante (
    id INT NOT NULL AUTO_INCREMENT,
    Nombres VARCHAR (20) NOT NULL,
    Apellidos VARCHAR(30) NOT NULL,
    Carrera VARCHAR (25) NOT NULL,
    Semestre VARCHAR (10) NOT NULL,
    Telefono celular INT (11) NOT NULL,
    Telefono fijo INT (10) NOT NULL,
    Fecha de ingreso DATE (20) NOT NULL,
    Saldo en deuda DECIMAL (11,22) NOT NULL, 
    PRIMARY KEY (id)
)
--TBL CARRERA-->
CREATE TABLE tbl_carrera(
    id_carrera INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    Facultad VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_carrera)
)
--TBL FACULTAD-->
CREATE TABLE tbl_facultad(
    id_facultad INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_facultad)
)





--TBL PRODUCTOS2-->
CREATE DATABASE bd_productos2;
USE bd_productos2;
CREATE TABLE tbl_productos2 (
    id INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR (20) NOT NULL,
    Precio_costo DECIMAL (11,2) NOT NULL,
    Precio_venta DECIMAL (11,2) NOT NULL,
    Precio_total DECIMAL (11,2) NOT NULL,
    Existencia VARCHAR (15) NOT NULL,
    Subcategoria VARCHAR (15) NOT NULL,
    Unidad medida TEXT (10) NOT NULL,
    Vendedor TEXT (20) NOT NULL,
    Fecha_ultima_venta DATE (20) NOT NULL
    PRIMARY KEY (id)
)
--TBL SUBCATEGORÍA-->
CREATE TABLE tbl_subcategoria1 (
    id_subcategoria INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    Categoria VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_subcategoria)
)
--TBL CATEGORÍA-->
CREATE TABLE tbl_categoria1 (
    id_categoria INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_categoria)
)

--TBL UNIDAD DE MEDIDA-->
CREATE TABLE tbl_unidad_medida (
    id_unidad_medida INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_unidad_medida)
)

--TBL VENDEDOR-->
CREATE TABLE tbl_vendedor (
    identificación INT (10) NOT NULL,
    Nombres VARCHAR (25) NOT NULL,
    Apellidos VARCHAR (25) NOT NULL,
    PRIMARY KEY (identificación)
)





--TBL FACTURA-->
CREATE DATABASE bd_factura;
USE bd_factura;
CREATE TABLE tbl_factura (
    id INT NOT NULL AUTO_INCREMENT,
    Fecha DATE (20) NOT NULL,
    Cliente VARCHAR (20) NOT NULL,
    Direccion VARCHAR (30) NOT NULL,
    Producto TEXT (20) NOT NULL,
    Cantidad VARCHAR (15) NOT NULL,
    Precio_unitario DECIMAL (11,2) NOT NULL,
    Precio_total DECIMAL (11,2) NOT NULL,
    PRIMARY KEY (id)
)
--TBL CLIENTE-->
CREATE TABLE tbl_cliente1 (
    identificacion INT (10) NOT NULL,
    Nombres VARCHAR (25) NOT NULL,
    Apellidos VARCHAR (25) NOT NULL,
    Correo VARCHAR (30) NOT NULL,
    Fecha_nacimiento DATE (20) NOT NULL,
    PRIMARY KEY (identificacion)
)

--TBL PRODUCTO-->
CREATE TABLE tbl_producto3 (
    Codigo_barras INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    Subcategoria TEXT (20) NOT NULL,
    Unidad_medida VARCHAR (15) NOT NULL,
    Precio DECIMAL (11,2) NOT NULL,
    Existencia VARCHAR (20) NOT NULL,
    PRIMARY KEY (Codigo_barras)
)

--TBL SUBCATEGORÍA-->
CREATE TABLE tbl_subcategoria (
    id_subcategoria INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    Categoria VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_subcategoria)
)
--TBL CATEGORÍA-->
CREATE TABLE tbl_categoria (
    id_categoria INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_categoria)
)

--TBL UNIDAD DE MEDIDA-->
CREATE TABLE tbl_unidad_medida (
    id_unidad_medida INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_unidad_medida)
)





--TBL SUPERMERCADO-->
CREATE DATABASE bd_supermercado;
USE bd_supermercado;
CREATE TABLE tbl_supermercado (
    Codigo_supermercado INT NOT NULL AUTO_INCREMENT,
    Sede VARCHAR (20) NOT NULL AUTO_INCREMENT,
    Nombre_supermercado VARCHAR (30) NOT NULL,
    Dirección VARCHAR (30) NOT NULL,
    Bodega VARCHAR (20) NOT NULL,
    Cliente VARCHAR (20) NOT NULL,
     PRIMARY KEY (Codigo_supermercado)
)

--TBL SEDE-->
CREATE TABLE tbl_sede(
    Codigo_sede INT NOT NULL AUTO_INCREMENT,
    Empleados VARCHAR (30) NOT NULL,
    Cantidad_empleados INT (10) NOT NULL,
    Ingresos_mensuales DECIMAL (11,2) NOT NULL,
    Ingresos_anuales DECIMAL (11,2) NOT NULL,
    Dirección VARCHAR (30) NOT NULL,
    Bodega VARCHAR (20) NOT NULL,
    Ciudad VARCHAR (20) NOT NULL,
    Clientes VARCHAR (20) NOT NULL,
    Teléfono_corporativo INT (11) NOT NULL,
    Correo_corporativo VARCHAR(11) NOT NULL,
    PRIMARY KEY (Codigo_sede)
)

--TBL EMPLEADO-->
    Identificacion INT (12) NOT NULL,
    Nombres VARCHAR (25) NOT NULL,
    Apellidos VARCHAR (25) NOT NULL,
    Género VARCHAR (12) NOT NULL,
    Correo_personal VARCHAR (30) NOT NULL,
    Teléfono_personal INT (20) NOT NULL,
    PRIMARY KEY (Identificacion)
)
--TBL GÉNERO-->
CREATE TABLE tbl_genero2(
    id_genero INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_genero)
)

--TBL CIUDAD-->
CREATE TABLE tbl_ciudad8 (
    Codigo_postal INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    Departamento VARCHAR (25) NOT NULL,
    PRIMARY KEY (Codigo_postal)
)
--TBL DEPARTAMENTO-->
CREATE TABLE tbl_departamento8 (
    id_departamento INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_departamento)
)

--TBL BODEGA-->
CREATE TABLE tbl_bodega(  
    Codigo_bodega INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    Ciudad VARCHAR (25) NOT NULL,
    Producto VARCHAR (20) NOT NULL,
   PRIMARY KEY (Codigo_bodega)
)
--TBL CIUDAD-->
CREATE TABLE tbl_ciudad9 (
    Codigo_postal INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    Departamento VARCHAR (25) NOT NULL,
    PRIMARY KEY (Codigo_postal)
)
--TBL DEPARTAMENTO-->
CREATE TABLE tbl_departamento9 (
    id_departamento INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_departamento)
)
--TBL PRODUCTO-->
CREATE TABLE tbl_producto (
    Codigo_barras INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    Subcategoria TEXT (20) NOT NULL,
    Unidad_medida VARCHAR (15) NOT NULL,
    Precio DECIMAL (11,2) NOT NULL,
    Existencia VARCHAR (20) NOT NULL,
    PRIMARY KEY (Codigo_barras)
)
--TBL SUBCATEGORÍA-->
CREATE TABLE tbl_subcategoria (
    id_subcategoria INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    Categoria VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_subcategoria)
)
--TBL CATEGORÍA-->
CREATE TABLE tbl_categoria (
    id_categoria INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_categoria)
)

--TBL CLIENTE-->
CREATE TABLE tbl_cliente (
    Identificacion INT (12) NOT NULL,
    Nombres VARCHAR (25) NOT NULL,
    País TEXT (25) NOT NULL,
    Ciudad TEXT (25) NOT NULL,
    Correo_personal VARCHAR (30) NOT NULL,
    Teléfono_personal INT (20) NOT NULL,
    PRIMARY KEY (Identificacion)
)
--TBL PAÍS-->
CREATE TABLE tbl_país0 (
    id_país INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_país)
)
--TBL CIUDAD-->
CREATE TABLE tbl_ciudad0 (
    Codigo_postal INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    Departamento VARCHAR (25) NOT NULL,
    PRIMARY KEY (Codigo_postal)
)
--TBL DEPARTAMENTO-->
CREATE TABLE tbl_departamento0 (
    id_departamento INT (10) NOT NULL,
    Nombre VARCHAR (25) NOT NULL,
    PRIMARY KEY (id_departamento)
)