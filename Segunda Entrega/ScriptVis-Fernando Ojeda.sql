use orlean;

select * from ventas; 
select * from productos;
select * from servicios;
select * from categorias_productos;
select * from proveedores;
select * from categorias_servicios;

create view vw_precio_sin_impuetos as
select id_venta, id_producto, id_servicio, precio_final, (precio_final * 0.21) as IVA, 
(precio_final - precio_final * 0.21) as Precio_sin_IVA from ventas;

select * from vw_precio_sin_impuetos;

create view vw_productos_vendidos as 
select V.id_venta, V.id_producto, P.nombre_producto, V.precio_final  
from ventas as V inner join productos as P 
on V.id_producto = P.id_producto; 

select * from vw_productos_vendidos;

create view vw_servicios_vendidos as 
select V.id_venta, V.id_servicio, S.nombre, V.precio_final
from ventas as V inner join servicios as S 
on V.id_servicio = S.id_servicio; 

select * from vw_servicios_vendidos;

create view vw_productos_categorias as
select P.id_producto, P.id_categ_prod, P.nombre_producto, C.descripción 
from productos as P
inner join categorias_productos as C
on P.id_categ_prod = C.id_categ_prod; 

select * from vw_productos_categorias;

create view vw_servicios_categorias as
select S.id_servicio, S.id_categ_serv, S.nombre, C.descripción 
from servicios as S
inner join categorias_servicios as C
on S.id_categ_serv = C.id_categ_serv; 

select * from vw_servicios_categorias;

create view vw_servio_vendido_proveedor as
select S.nombre as Servicio, P.nombre_proveedor as Proveedor, V.fecha as Fecha, V.hora as Hora
from ventas as V 
inner join servicios as S on  V.id_servicio = S.id_servicio
inner join proveedores as P on V.id_proveedor = P.id_proveedor;

select * from vw_servio_vendido_proveedor;


