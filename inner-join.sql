use prueba1;


select * from t_domicilio;
select tp.nombre,td.paids from t_persona as tp
inner join t_domicilio as td
on tp.id_persona = td.id_persona; 
 