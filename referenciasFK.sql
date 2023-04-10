
-- Creando tablas 
create table `t_domicilio` (
	 `id_domicilio` int(11) not null auto_increment,
	 `id_persona` int(11) not null,
	 `paids` varchar(45) default null,
	 `cp` varchar(45) default null,
     primary key (`id_domicilio`)
)engine=InnoDB default charset=utf8;

-- Creando tablas 
create table `t_persona` (
	`id_persona` int(11) not null auto_increment,
    `paterno` varchar(45) default null,
    `materno` varchar(45) default null,
    `nombre` varchar(45) default null,
    primary key (`id_persona`)
    )engine=InnoDB auto_increment=3 default charset=utf8;
    
    
-- Insertando registros(tuplas) a nuestras tablas 
insert into t_persona (paterno, 
						materno, 
                        nombre)
values('Martine', 
	   'Ducuara', 
	   'Juliana'
         );
         
         
-- Actulizando registro 
update t_persona set paterno='Martinez' 
				where id_persona=4;
   
   
-- Seleccionando tabla 
select * from t_domicilio;
-- Describiendo el tipo de datos en la tabla 
describe t_domicilio;

-- Seleccionando tabla 
select * from t_persona;
-- Describiendo el tipo de datos en la tabla 
describe t_persona;


-- Creando llaves foraneas FK para relacionar tablas 
ALTER TABLE `prueba1`.`t_domicilio` 
ADD INDEX `fk_idpersonadomicilio_idx` (`id_persona` ASC) VISIBLE;
;
ALTER TABLE `prueba1`.`t_domicilio` 
ADD CONSTRAINT `fk_idpersonadomicilio`
  FOREIGN KEY (`id_persona`)
  REFERENCES `prueba1`.`t_persona` (`id_persona`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- Agregando un registro(tupla) de un domicililo a la tabla t_domicilio el domicilio tiene una relacion de muchos a uno con la tabla persona
insert into t_domicilio (id_persona, 
						paids, 
                        cp)
values(4, 
	   'Colombia', 
	   760001
         );
         
-- Vamos a intentar borrar a la persona que tiene un domicilio
delete from t_persona where id_persona=4;
-- No puede borrarse la persona porque hay una referencia a un domicilio
-- El paso para poder borrar a la persona seriaq primero eliminar la referencia(domicilio) y alli si nos prmitira borrar a la persona 


-- Vamos a intentar borrar a la persona que no tiene un 
delete from t_persona where id_persona=3;
-- Si nos permitio borrar a la persona ya que no tiene ninguna referencia(domicilio) asignado

