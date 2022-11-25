use orlean;

/* Este procedimiento almacenado nos permite ingresar un campo de la tabla productos y ordenarlo de forma ascendente o descendente. 
Esta compuesto por dos parametros el primero "campo" ingresamos que campo queremos ordenar, y el segundo "orden", el orden que queremos
que nuestro campo tenga. */  
DELIMITER //
CREATE PROCEDURE ordenamiento(IN campo varchar(30), IN orden varchar(5))
    BEGIN
        SET @s = CONCAT('SELECT * FROM productos ORDER BY ',campo,' ',orden);
        PREPARE stmt2 FROM @s;
        EXECUTE stmt2;
DEALLOCATE PREPARE stmt2;
    END;
//
call ordenamiento('', '');


/*En este procedimiento almacenado insertaremos los campos de la tabla clientes, debiendo ingresar los parametros en este orden:
nombre_cliente, apellido_cliente, email, direccion y telefono */
DELIMITER //
create procedure insertar_dato (IN nombre_cli varchar(25), IN apellido_cli varchar(25), IN email_cli varchar(50), IN direccion_cli varchar(100), IN telefono_cli varchar(30))
begin 
    insert into clientes values(null, nombre_cli, apellido_cli, email_cli, direccion_cli, telefono_cli);
end 
//

call insertar_dato('', '', '', '', '');
