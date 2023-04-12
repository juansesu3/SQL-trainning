
-- creating store procedures 2
DELIMITER $$
 USE `prueba`$$
 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrarNombres`()
BEGIN
	select * from t_persona;
END$$
DELIMITER ;


-- creating store procedures 2 
USE `prueba1`;
DROP procedure IF EXISTS `sp_insertaNombre`;

DELIMITER $$
USE `prueba1`$$
CREATE PROCEDURE `sp_insertaNombre` (
									in apaterno varchar(50),
									in amarterno varchar(50),
                                    in nombreP varchar(50)
                                    )
BEGIN
		INSERT into t_persona(paterno,materno,nombre)
        value(apaterno,amarterno,nombreP);

END$$

DELIMITER ;


