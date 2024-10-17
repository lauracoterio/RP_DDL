--TABLA MATRÍCULA
CREATE DATABASE tbl_matricula_u;
USE tbl_matricula_u;

CREATE TABLE tbl_matricula (
    id_matricula INT NOT NULL AUTO_INCREMENT,
    id_estudiante VARCHAR (25) NOT NULL,
    cod_universidad INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    costo curso DECIMAL(11,2) NOT NULL,
    PRIMARY KEY (id_matricula),
    FOREIGN KEY (id_estudiante) REFERENCES tbl_estudiantes (id_estudiante),
    FOREIGN KEY (cod_universidad) REFERENCES tbl_sede_u (cod_universidad)
)

CREATE TABLE tbl_sede_u (
   cod_universidad INT NOT NULL AUTO_INCREMENT,
   ciudad TEXT (20) NOT NULL,
   id_departamento INT NOT NULL,
   PRIMARY KEY (cod_universidad),
   FOREIGN KEY (id_departamento) REFERENCES tbl_depto_sede (id_departamento)
)
CREATE TABLE tbl_depto_sede(
    id_departamento INT NOT NULL AUTO_INCREMENT,
    departamento TEXT (20) NOT NULL,
    PRIMARY KEY (id_departamento)
)

CREATE TABLE tbl_estudiante (
    id_estudiante INT (10) NOT NULL,
    nombres VARCHAR (20) NOT NULL,
    apellidos VARCHAR (20) NOT NULL,
    id_genero INT NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    id_residencia INT NOT NULL,
    tel_personal INT (11) NOT NULL,
    correo_personal VARCHAR (30) NOT NULL,
    cod_docente INT NOT NULL,
    PRIMARY KEY (id_estudiante),
    FOREIGN KEY (id_genero) REFERENCES tbl_genero (id_genero),
    FOREIGN KEY (id_residencia) REFERENCES tbl_residencia (id_residencia),
    FOREIGN KEY (cod_docente) REFERENCES tbl_curso (cod_docente)
)

CREATE TABLE tbl_genero (
    id_genero INT NOT NULL AUTO_INCREMENT,
    nombre TEXT (10) NOT NULL,
    PRIMARY KEY id_genero
)

CREATE TABLE tbl_residencia (
    id_residencia INT NOT NULL AUTO_INCREMENT,
    ciudad TEXT (25) NOT NULL,
    id_depto_residencia text (20) NOT NULL,
    PRIMARY KEY (id_residencia),
    FOREIGN KEY (id_depto_residencia) REFERENCES tbl_depto_residencia (id_depto_residencia)
)
CREATE TABLE tbl_depto_residencia (
    id_depto_residencia INT NOT NULL AUTO_INCREMENT,
    departamento TEXT (20) NOT NULL,
    PRIMARY KEY id_depto_residencia
)

CREATE TABLE tbl_docente (
    cod_docente INT NOT NULL AUTO_INCREMENT,
    nombre_docente VARCHAR (20) NOT NULL,
    cod_curso INT NOT NULL,
    PRIMARY KEY (cod_docente),
    FOREIGN KEY (cod_curso) REFERENCES tbl_curso (cod_curso) 
)
CREATE TABLE tbl_curso (
    cod_curso INT NOT NULL AUTO_INCREMENT,
    curso VARCHAR (20) NOT NULL,
    costo curso DECIMAL(11,2) NOT NULL,
    id_carrera INT NOT NULL,
    PRIMARY KEY (cod_curso),
    FOREIGN KEY (id_carrera) REFERENCES tbl_carrera (id_carrera)
)
CREATE TABLE tbl_carrera(
    id_carrera INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    id_facultad INT NOT NULL, 
    PRIMARY KEY (id_carrera),
    FOREIGN KEY (id_facultad) REFERENCES tbl_facultad(id_facultad)
)
CREATE TABLE tbl_facultad(
    id_facultad INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_facultad)
)

-------------------------------------------------------------------

CREATE DATABASE bd_matricula_u;
USE bd_matricula_u;


CREATE TABLE tbl_facultad (--l
    id_facultad INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_facultad)
)

CREATE TABLE tbl_carrera (--l
    id_carrera INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    id_facultad INT NOT NULL, 
    PRIMARY KEY (id_carrera),
    FOREIGN KEY (id_facultad) REFERENCES tbl_facultad(id_facultad)
)

CREATE TABLE tbl_curso (--l
    cod_curso INT NOT NULL AUTO_INCREMENT,
    curso VARCHAR(20) NOT NULL,
    costo_curso DECIMAL(11,2) NOT NULL,
    id_carrera INT NOT NULL,
    PRIMARY KEY (cod_curso),
    FOREIGN KEY (id_carrera) REFERENCES tbl_carrera (id_carrera)
)

CREATE TABLE tbl_docente (--l
    cod_docente INT NOT NULL AUTO_INCREMENT,
    nombre_docente VARCHAR(20) NOT NULL,
    cod_curso INT NOT NULL,
    PRIMARY KEY (cod_docente),
    FOREIGN KEY (cod_curso) REFERENCES tbl_curso (cod_curso)
)

CREATE TABLE tbl_depto_residencia (--l
    id_depto_residencia INT NOT NULL AUTO_INCREMENT,
    departamento VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_depto_residencia)
)

CREATE TABLE tbl_residencia (
    id_residencia INT NOT NULL AUTO_INCREMENT,
    ciudad VARCHAR(25) NOT NULL,
    id_depto_residencia INT NOT NULL,
    PRIMARY KEY (id_residencia),
    FOREIGN KEY (id_depto_residencia) REFERENCES tbl_depto_residencia (id_depto_residencia)
)

CREATE TABLE tbl_genero (--l
    id_genero INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(10) NOT NULL,
    PRIMARY KEY (id_genero)
)

CREATE TABLE tbl_depto_sede (--l
    id_departamento INT NOT NULL AUTO_INCREMENT,
    departamento VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_departamento)
)

CREATE TABLE tbl_sede_u (--l
    cod_universidad INT NOT NULL AUTO_INCREMENT,
    ciudad VARCHAR(20) NOT NULL,
    id_departamento INT NOT NULL,
    PRIMARY KEY (cod_universidad),
    FOREIGN KEY (id_departamento) REFERENCES tbl_depto_sede (id_departamento)
)


CREATE TABLE tbl_estudiante ( --l
    id_estudiante INT NOT NULL AUTO_INCREMENT,
    nombres VARCHAR(20) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    id_genero INT NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    id_residencia INT NOT NULL,
    tel_personal INT NOT NULL,
    correo_personal VARCHAR(30) NOT NULL,
    cod_docente INT NOT NULL,
    PRIMARY KEY (id_estudiante),
    FOREIGN KEY (id_genero) REFERENCES tbl_genero (id_genero),
    FOREIGN KEY (id_residencia) REFERENCES tbl_residencia (id_residencia),
    FOREIGN KEY (cod_docente) REFERENCES tbl_docente (cod_docente)
)

CREATE TABLE tbl_matricula (--l
    id_matricula INT NOT NULL AUTO_INCREMENT,
    id_estudiante INT NOT NULL,
    cod_universidad INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    costo_curso DECIMAL(11,2) NOT NULL,
    PRIMARY KEY (id_matricula),
    FOREIGN KEY (id_estudiante) REFERENCES tbl_estudiante (id_estudiante),
    FOREIGN KEY (cod_universidad) REFERENCES tbl_sede_u (cod_universidad)
)
