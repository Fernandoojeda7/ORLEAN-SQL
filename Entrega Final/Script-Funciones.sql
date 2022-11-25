use orlean;

/* La función calcular_iva le pasamos por parametro el valor final que tiene un producto 
y la misma nos retorna cual es valor del iva que tiene implicito dicho precio.   */
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

/* La función descuento recibe como parametro el precio de una venta 
 y te retorna si tiene descuento o no la venta de mención. */
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
