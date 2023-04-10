use prueba1;
-- Creacion de tabla SQL
create table t_prueba(
				id_prueba int auto_increment,
                nombre varchar(250),
                peso float,
                comentarios text,
                fecha date,
                primary key(id_prueba)
                );
-- descripcion de la tabla SQL
describe t_prueba;

-- Mostrar todas la tablas de mi base de datos 
show tables;

show databases;

