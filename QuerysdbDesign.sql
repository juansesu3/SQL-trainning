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
                    
-- Insertando valores  a la tabla alumno
insert into alumno (
					nombre,
					codigo_asignatura,
					fechaNacimiento, 
                    telefono
                    )
values('Juan Suarez', 
	   3, 
	   '1994-10-29',
       '+41 78 264 5121'
         );

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
		10,
		'Algebra Lineal'
		);

-- Creando tabla profesor 
create table profesor(
					   id_p int auto_increment,
					   nombre varchar(50),
                       especialidad varchar(50),
                       telefono varchar(50),
                       codigo_asignatura int(11) not null,
                       primary key(id_p) 
                       )engine=InnoDB auto_increment=10 default charset=utf8mb3;

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
	   '+57 3521457896',
       3
       );


-- Mostrando tablas
show tables;

-- Describiendo tablas
describe alumno;
describe asignatura;
desc asignatura;
describe profesor;

-- Seleccionando tablas
select * from alumno;
select * from asignatura;
select * from profesor;




-- foreng keys 

ALTER TABLE `colegio`.`asignatura` 
ADD INDEX `fk_id_p_idx` (`id_p` ASC) VISIBLE;
;
ALTER TABLE `colegio`.`asignatura` 
ADD CONSTRAINT `fk_id_p`
  FOREIGN KEY (`id_p`)
  REFERENCES `colegio`.`profesor` (`id_p`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;






