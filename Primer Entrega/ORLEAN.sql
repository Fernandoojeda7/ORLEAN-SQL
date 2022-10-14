CREATE DATABASE IF NOT EXISTS orlean;

USE orlean;

CREATE TABLE IF NOT EXISTS `clientes` (
   `id_cliente` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `nombre_cliente` VARCHAR(25) NOT NULL,
   `apellido_cliente` VARCHAR(25) NOT NULL,
   `email` VARCHAR(50) NOT NULL,
   `dirección` VARCHAR(100) NOT NULL,
   `telefono` VARCHAR(30)
);
CREATE TABLE IF NOT EXISTS `categorias_productos` (
   `id_categ_prod` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `descripción` VARCHAR(70) NOT NULL
);

CREATE TABLE IF NOT EXISTS `productos` (
   `id_producto` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `nombre_producto` VARCHAR(60) NOT NULL,
   `marca` VARCHAR(25) NOT NULL,
   `precio` FLOAT NOT NULL,
   `id_categ_prod` INT NOT NULL,
   FOREIGN KEY (`id_categ_prod`) REFERENCES `categorias_productos`(`id_categ_prod`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `categorias_servicios` (
   `id_categ_serv` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `descripción` VARCHAR(70) NOT NULL
);

CREATE TABLE IF NOT EXISTS `servicios` (
   `id_servicio` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `nombre` VARCHAR(70) NOT NULL,
   `precio` FLOAT NOT NULL,
   `id_categ_serv` INT NOT NULL,
   FOREIGN KEY (`id_categ_serv`) REFERENCES `categorias_servicios`(`id_categ_serv`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `proveedores` (
   `id_proveedor` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `nombre_proveedor` VARCHAR(25) NOT NULL,
   `apellid_proveedor` VARCHAR(25),
   `email` VARCHAR(50) NOT NULL,
   `direccion` VARCHAR(100) NOT NULL,
   `telefono` VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS `ventas` (
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

CREATE TABLE IF NOT EXISTS `proveedores_productos` (
   `id_producto` INT NOT NULL,
   `id_proveedor` INT NOT NULL,
   FOREIGN KEY (`id_producto`) REFERENCES `productos`(`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
   FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores`(`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `proveedores_servicios` (
   `id_servicio` INT NOT NULL,
   `id_proveedor` INT NOT NULL,
   FOREIGN KEY (`id_servicio`) REFERENCES `servicios`(`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
   FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores`(`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `clientes_servicios` (
   `id_cliente` INT NOT NULL,
   `id_servicio` INT NOT NULL,
   FOREIGN KEY (`id_cliente`) REFERENCES `clientes`(`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
   FOREIGN KEY (`id_servicio`) REFERENCES `servicios`(`id_servicio`) ON DELETE CASCADE ON UPDATE CASCADE
);








 


