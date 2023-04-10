use prueba1;
select * from t_prueba2;
-- descripcion de la tabla SQL
describe t_prueba2;
-- Insert values at the table
insert into t_prueba2 (nombre, 
						edad, 
					    fecha,
                        finado)
values(
	   'Juan', 
		28,
		'2023-04-10', 
		1
        );
-- Delete tuplas from id but the table is not update so continue with old ID sequence 
delete from t_prueba2 where id_prueba=1;
-- Delete all tupla from table with truncate sentence after that the table is update start again with ID
truncate table t_prueba2;

select * from t_prueba2;
        


