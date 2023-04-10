use prueba1;



-- Clausala like 
-- 3 maneras o formas de utilizar like, aunque son 6 :0
-- a& comienza con la letra a
-- %a termina con la letra a
-- %or% tiene dentro de la cadena un or

select * from t_prueba where nombre like '%n';
select * from t_prueba where nombre like '%o';
select * from t_prueba where nombre like '%l%';
select * from t_prueba;