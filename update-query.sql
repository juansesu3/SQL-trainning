use prueba1;

select * from t_prueba;


update t_prueba set nombre='Camila',
					comentarios='Es una chica muy hot', 
                    peso=50.5 
				where id_prueba=9;

update t_prueba set comentarios='Una indisciplinada',
					peso=55.5 
				where id_prueba=7;

select * from t_prueba;

UPDATE `prueba1`.`t_prueba` SET `comentarios` = 'comentario perdido' WHERE (`id_prueba` = '6');
