use prueba1;

select count(*) as registro from t_prueba;

select max(peso) as mayorPeso from t_prueba;

select min(peso) as 'menor peso' from t_prueba;

select substring(fecha, 6, 2) as mes from t_prueba;
