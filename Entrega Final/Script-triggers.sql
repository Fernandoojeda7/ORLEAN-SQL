use orlean;

CREATE TABLE IF NOT EXISTS `respaldo_ventas` (
   `id_venta` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `precio` FLOAT NOT NULL,
   `descuento` FLOAT,
   `fecha` DATE NOT NULL,
   `hora` TIME NOT NULL,
   `forma_pago` VARCHAR(50) NOT NULL,
   `precio_final` FLOAT NOT NULL,
   `id_cliente` INT NOT NULL,
   `id_producto` INT,
   `id_servicio` INT,
   `id_proveedor` INT NOT NULL,
 FOREIGN KEY (`id_cliente`) REFERENCES `clientes`(`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
 FOREIGN KEY (`id_producto`) REFERENCES `productos`(`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
 FOREIGN KEY (`id_servicio`) REFERENCES `servicios`(`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
 FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores`(`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
);

/*Con este Trigger al insertar registros a la tabla ventas, tambien se insertaran 
  en la tabla respaldo_ventas, seria una como una tabla espejo*/
create trigger insertar_ventas 
after insert on ventas 
for each row 
insert into respaldo_ventas (precio, descuento, fecha, hora, forma_pago, precio_final, id_cliente, id_producto, id_servicio, id_proveedor) 
values(new.precio, new.descuento, new.fecha, new.hora, new.forma_pago, new.precio_final, new.id_cliente, new.id_producto, new.id_servicio, new.id_proveedor);

insert into ventas values 
(null, 2000, null, '22-10-07', '16:30:00', 'tarjeta de credito', 2000, 1, 2, null, 7);

CREATE TABLE IF NOT EXISTS bitacora_ventas (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
fecha DATE NOT NULL,
hora TIME NOT NULL,
vendedor VARCHAR (30),
old_venta_prod int,
new_venta_prod int,
old_venta_serv int,
new_venta_serv int,
tipo_operacion VARCHAR(45));

/* Con este Trigger vamos a insertar los cambios realizados en la tabla ventas en la tabla bitacora_ventas, 
   como ser la fecha, hora, quien lo vendio, que producto o servicio y la forma de pago. */
create trigger insertar_log 
after insert on ventas 
for each row
insert into bitacora_ventas (fecha,hora,vendedor,new_venta_prod, new_venta_serv,tipo_operacion)
values
(curdate(),curtime(),session_user(),new.id_producto,new.id_servicio,new.forma_pago);

insert into ventas values 
(null, 2500, null, '22-10-08', '17:00:00', 'tarjeta debito', 2500, 17, null, 8, 1),
(null, 3500, null, '22-10-09', '19:30:00', 'contado', 3500, 11, null, 2, 10);

CREATE TABLE IF NOT EXISTS `respaldo_productos` (
   `id_producto` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `nombre_producto` VARCHAR(60) NOT NULL,
   `marca` VARCHAR(25) NOT NULL,
   `precio` FLOAT NOT NULL,
   `id_categ_prod` INT NOT NULL,
   FOREIGN KEY (`id_categ_prod`) REFERENCES `categorias_productos`(`id_categ_prod`) ON DELETE CASCADE ON UPDATE CASCADE);

/*Con este Trigger al insertar registros a la tabla productos, tambien se insertaran 
  en la tabla respaldo_productos, seria como una tabla espejo*/
create trigger insertar_productos 
after insert on productos 
for each row 
insert into respaldo_productos (nombre_producto, marca, precio, id_categ_prod) 
values(new.nombre_producto, new.marca, new.precio, new.id_categ_prod);

insert into productos values
(null, 'Gel para manos Antiage', 'Idraet', 2200, 4);


CREATE TABLE IF NOT EXISTS bitacora_productos (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
fecha DATE NOT NULL,
hora TIME NOT NULL,
usuario VARCHAR (30),
old_prod int,
new_prod int,
categoria int,
referencia varchar(40));

/* Con este Trigger los productos incorporados la tabla productos tambien se reflejaran en la tabla bitacora_productos, 
   conteniendo los datos fecha, hora, quien lo incorporo, que producto, a que categoria pertenece y la referebcia. */
create trigger insertar_log_productos 
after insert on productos 
for each row
insert into bitacora_productos (fecha,hora,usuario,new_prod,categoria, referencia)
values
(curdate(),curtime(),session_user(),new.id_producto,new.id_categ_prod, 'Insercion de producto');

insert into productos values
(null, 'Desodorante crema Mentol', 'Neroly', 400, 3);

/* Con este Trigger los productos eliminados de la tabla productos se reflejaran en la tabla bitacora_productos, 
   conteniendo los datos fecha, hora, quien lo elimino, que producto fue eliminado, y la referebcia. */
DELIMITER //
create trigger delete_log_producto
before delete on productos
for each row
begin 
insert into bitacora_productos 
(fecha,hora,usuario,old_prod,referencia)
values
(curdate(),curtime(),session_user(),old.id_producto,'Eliminacion de producto');
end 
//  
