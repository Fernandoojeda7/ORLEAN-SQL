use orlean;


DELIMITER //
 create function calculo_iva(precio_final float) returns float
deterministic
begin
   declare resultado float;
   set resultado = (precio_final * 0.21);
   return resultado;
end 
//
 
 select calculo_iva();

DELIMITER //
create function descuento (precio int) returns varchar(100)
deterministic
begin
CASE
WHEN precio >= 5000 then
return 'La compra tiene descuento';
WHEN precio < 5000 then
return 'La compra no tiene descuento';
END CASE;
end
//

select nombre_producto as Producto, descuento(precio) as Descuento from productos;
select nombre as Servicio, descuento(precio) as Descuento from servicios;