-- Creando base de datos
create database Colegio;

-- entrando en el contexto de la base de datos creada 
use Colegio;

-- Creando tabla alumno
create table alumno(
					n_matricula int(11) not null auto_increment,
                    nombre varchar(50) default null,
                    codigo_asignatura int(11) not null,  
                    fechaNacimiento date default null,
                    telefono varchar(50) default null,
                    primary key(n_matricula)
                    )engine=InnoDB default charset=utf8mb3;

-- Modificando el tipo de dato de una tabla 
ALTER TABLE alumno MODIFY codigo_asignatura int(11);

-- Insertando valores  a la tabla alumno
insert into alumno (
					nombre,
					codigo_asignatura,
					fechaNacimiento, 
                    telefono
                    )
values('Sage Hautrie', 
	   7, 
	   '1993-10-2',
       '+21 30 264 5121'
         );
         
-- Borrando todas las tuplas(registros) de una tabla
truncate table alumno;

-- Creando tabla asignatura
create table asignatura(
						codigo_asignatura int(11) not null auto_increment,
                        id_p int(11) not null,
                        nombre varchar(50) default null,
                        primary key(codigo_asignatura)
                        )engine=InnoDB auto_increment=3 default charset=utf8mb3;

-- Insertando valores a la tabla asignatura
insert into asignatura (
					id_p,
                    nombre
                    
					)
values(
		11,
		'Ecuaciones lineales'
		);
        
-- Actualizando el dato de un campo(columna) de una tabla 
update asignatura set id_p=14 
				where codigo_asignatura=7;


-- Creando tabla profesor 
create table profesor(
					   id_p int auto_increment,
					   nombre varchar(50),
                       especialidad varchar(50),
                       telefono varchar(50),
                       codigo_asignatura int(11) not null,
                       primary key(id_p) 
                       )engine=InnoDB auto_increment=10 default charset=utf8mb3;
                       
ALTER TABLE profesor DROP COLUMN codigo_asignatura;
-- Insertando valores a la tabla profesor 
insert into profesor (
					
					nombre, 
					especialidad, 
					telefono,
					codigo_asignatura
					)
values(
	   'Humberto Mora', 
	   'Matematicas', 
	   '+57 352 147 7896',
       4
       );
       
-- Actualizando el dato de un campo(columna) de una tabla
update profesor set codigo_asignatura=5 
				where id_p=11;

-- Mostrando tablas
show tables;

-- Describiendo tablas
describe alumno;
desc alumno;
describe asignatura;
desc asignatura;
describe profesor;
desc profesor;

-- Seleccionando tablas
select * from alumno;
select * from asignatura;
select * from profesor;

-- Borrando un registro de un alumno 
delete from alumno where n_matricula=4;




-- foreng keys 
-- Relacion asignatura profesor  
ALTER TABLE `colegio`.`asignatura` 
ADD INDEX `fk_id_p_idx` (`id_p` ASC) VISIBLE;
;
ALTER TABLE `colegio`.`asignatura` 
ADD CONSTRAINT `fk_id_p`
  FOREIGN KEY (`id_p`)
  REFERENCES `colegio`.`profesor` (`id_p`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  
-- Relacion profesor asignatuara 
ALTER TABLE `colegio`.`profesor` 
ADD INDEX `fk_cod_asignatura_idx` (`codigo_asignatura` ASC) VISIBLE;
;
ALTER TABLE `colegio`.`profesor` 
ADD CONSTRAINT `fk_cod_asignatura`
  FOREIGN KEY (`codigo_asignatura`)
  REFERENCES `colegio`.`asignatura` (`codigo_asignatura`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  
  
  
-- Consulta que devuelve los registros en la tabla alumnos
select * from alumno;


-- Consulta que devuelve los registros en la tabla profesores
select * from profesor;


-- Consulta que devuelve el numero de alumnos que esatn registrados 
select count(*) as registro from alumno;


-- consulta que devuelve el nombre de alumnos, la asignatura en la que esta matriculado y el nombre del profersor que imparte la clase

select * from alumno;

select ta.nombre, ta.codigo_asignatura from alumno as ta;






