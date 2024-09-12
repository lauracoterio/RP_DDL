--Agregar una columna a una tabla
ALTER TABLE nombre_tabla
ADD nombre_columna tipo_dato;

--Modificar una columna de una tabla
ALTER TABLE nombre_tabla
MODIFY nombre_columna nuevo_tipo_dato;

--renimbrar una columna de una tabla
ALTER TABLE nombre_tabla
CHANGE nombre_culumna_antiguo_nombre nombre_columna_nuevo tipo_dato;

--Eliminar una columna de una tabla
ALTER TABLE nombre_tabla
DROP nombre_columna

------------------------------------------------------------------------
--Tablas
--Eliminar tablas
DROP TABLE nombre_tabla;

--Eliminar una tabla solo si existe
DROP TABLE IF EXISTS nombre_tabla;

--Renombrar una tabla
--RENAME TABLE nombre_tabla_a_renombrar TO nombre_tabla_nueva
ALTER TABLE nombre_tabla_antiguo
RENAME TO nombre_tabla_nueva;

-------------------------------------------------------------------------
--Claves foráneas
--Agregar claves foráneas
ALTER TABLE nombre_tabla
ADD CONSTRAINT nombre_clave_foranea
FOREIGN KEY (nombre_columna)
REFERENCES tabla_referencia(nombre_columna_referencia);

--Eliminar una clave foránea
ALTER TABLE nombre_tabla
DROP FOREIGN KEY nombre_clave_foranea;
-------------------------------------------------------------------------
Para eliminar la BASE DE DATOS 
DROP DATABASE nombre_base_datos;
