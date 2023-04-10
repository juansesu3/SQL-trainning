use prueba1;
select * from t_prueba;


insert into t_prueba (nombre,
					   peso,
                       comentarios,
                       fecha)
values('Rodrigo', 
			80.5,
            'Es unn buen tipo',
            '2000-06-10');

describe t_prueba;

select nombre from t_prueba where peso between 75 and 90;


