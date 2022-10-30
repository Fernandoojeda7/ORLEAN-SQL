use orlean;

insert into clientes values
(null, 'Martina', 'Lizboa', 'martina@gmail.com', 'Alberdi 270 Piso 11 A Resistencia-chaco', 3624442090),
(null, 'Ornella', 'Perez', 'orne@gmail.com', 'calle Julio A. Roca 340 Resistencia-chaco', 3624009988),
(null, 'Fiorella', 'Dominguez', 'fiorella@gmail.com', 'calle Mitre 1270 Resistencia-chaco', 3624234567),
(null, 'Miriam', 'Insaurralde', 'miriam@gmail.com', 'calle Uriburu 2030 Resistencia-chaco', 3624098765),
(null, 'Valentina', 'Ramirez', 'valentina@gmail.com', 'calle Buena Aventura 234  Resistencia-chaco', 3624000000),
(null, 'Jualia', 'Samir', 'julia@gmail.com', 'Alberdi 2100 Resistencia-chaco', 3624423444),
(null, 'Silvia', 'Insaurralde', 'silviainsa@gmail.com', 'Lestani 1400 Resistencia-chaco', 3624222222),
(null, 'Mirta', 'Lestian', 'lestian@gmail.com', 'Juan B. Justo 222 Resistencia-chaco', 3624909090),
(null, 'Ester', 'Giuliani', 'ester@gmail.com', 'calle Uriburu 2450 Resistencia-chaco', 3624650036),
(null, 'Lorena', 'Kanjer', 'kanjer@gmail.com', 'Sarmiento 1000 Piso 5 B Resistencia-chaco', 3624433333),
(null, 'Silvana', 'Garcia', 'silvanita@gmail.com', 'calle Salta 1300 Resistencia-chaco', 3624606060),
(null, 'Ramona', 'Romero', 'ramonaromaro@gmail.com', 'calle Julio A. Roca 900 Resistencia-chaco', 3624095432),
(null, 'Milva', 'Estanislao', 'estanislao_n@gmail.com', 'calle Santa Maria 2800 Resistencia-chaco', 3624122133),
(null, 'Patricia', 'Soto', 'patri_soto@gmail.com', 'calle Alsina 2030 Resistencia-chaco', 3624544555),
(null, 'Marisa', 'Riquelme', 'marisa@gmail.com', 'calle Fotin Tapenaga 123 Resistencia-chaco', 3624231111),
(null, 'Marta', 'Legran', 'legran_marta@gmail.com', '9 de Julio 3500 Resistencia-chaco', 3624432090),
(null, 'Clara', 'Toloza', 'clarita@gmail.com', 'calle Seitor 1340 Resistencia-chaco', 3624009987),
(null, 'Ludmila', 'Ponce', 'ludmiponce@gmail.com', 'calle Mendoza 1250 Resistencia-chaco', 3624954567),
(null, 'Barbara', 'Neme', 'barby@gmail.com', 'San Martin 570 Resistencia-chaco', 3624008765),
(null, 'Veronica', 'Sanchez', 'veronica.sanchez@gmail.com', 'calle Brown 4125 Resistencia-chaco', 3624111870);

insert into categorias_productos values
(null, 'cabello'),
(null, 'facial'),
(null, 'corporal'),
(null, 'manos y pies'),
(null, 'ojos'),
(null, 'labios'),
(null, 'cejas'),
(null, 'pestañas'),
(null, 'uñas');

insert into productos values
(null, 'Agua Miselar', 'Neloly', 2500, 2),
(null, 'Crema manos Antiage', 'Idraet', 2000, 4),
(null, 'Crema Hidratante', 'Idraet', 2700, 2),
(null, 'Aceite Almendtas', 'Neloly', 3000, 8),
(null, 'Balsamico Labial', 'Neloly', 1600, 6),
(null, 'Jabon de oliva y coco', 'Neloly', 600, 3),
(null, 'Desodorante en crema', 'Idraet', 800, 3),
(null, 'Agua de Rosas', 'Idraet', 1500, 2),
(null, 'Tonico facial vivo', 'Neloly', 1500, 2),
(null, 'Crema Corporal incienso y rosas', 'Neloly', 2500, 3),
(null, 'Unguento de eucalipto/jarilla', 'Neloly', 600, 6),
(null, 'Crema para pies Antihongos', 'Idraet', 3800, 4),
(null, 'Mascara de Pestañas', 'Idraet', 2700, 8),
(null, 'Pestañas postizas', 'Neloly', 1400, 8),
(null, 'Esmalte de uñas vegano', 'Raffinee', 2700, 9),
(null, 'Acetona para uñas', 'Cherimoya', 800, 9),
(null, 'Gel de Peeling Enzimatico', 'Idraet', 2500, 2),
(null, 'Base', 'Idraet', 2500, 2),
(null, 'Jalea para depilacion piernas', 'Neloly', 700, 3),
(null, 'Esponja Vegetal', 'Neloly', 550, 3);

insert into categorias_servicios values
(null, 'cabello'),
(null, 'facial'),
(null, 'corporal'),
(null, 'manos y pies'),
(null, 'ojos'),
(null, 'labios'),
(null, 'cejas'),
(null, 'pestañas'),
(null, 'uñas');

insert into servicios values
(null, 'Makeup', 3000, 2),
(null, 'Limpieza facial', 3500, 2),
(null, 'Lifting de Peatañas', 2500, 8),
(null, 'Peeling', 3000, 2),
(null, 'Diseño y Henna en Cejas', 4500, 8),
(null, 'Masaje Facial', 3000, 2),
(null, 'Semipermanentes', 3500, 9),
(null, 'Kapping', 2500, 9),
(null, 'Esculpidas', 4000, 9),
(null, 'Reflexologia podal', 3500, 4),
(null, 'Manicura basica', 3500, 9);


insert into proveedores values
(null, 'Karina', 'Ottaviano', 'karina@gmail.com', 'Avenida Siempre Vivas 123 Resistencia-Chaco', 3624334455),
(null, 'La Estrella', 'Srl', 'la_estrella@gmail.com', 'Puerto Madero Dpto 15 B Capital Federal', 112343345),
(null, 'Belleza Total', 'Srl', 'belleza-total@gmail.com', 'calle Comandante Fernandez 2030 Resistencia-chaco', 3624465036),
(null, 'Tu lugar', 'Srl', 'cosmetica-tu-lugar@gmail.com', 'calle Buena Aventura 1200  Resistencia-chaco', 36241111000),
(null, 'Nelory', 'Srl', 'neroly@gmail.com', 'calle Marcelo T. Alvear 2800 Resistencia-chaco', 3625523444),
(null, 'Buena Salud', 'Srl', 'buenasalud@gmail.com', 'calle Frondizi 1400 Resistencia-chaco', 3624444422),
(null, 'Cosmetica Luci', 'Srl', 'lucicosmetica@gmail.com', '25 de Mayo 220 Resistencia-chaco', 3624808090),
(null, 'Vida Sana', 'Srl', 'vida_sana@gmail.com', 'calle 1 de Octubre 2450 Resistencia-chaco', 3624510036),
(null, 'Mente y Cuerpo', 'Srl', 'menteycuerpo@gmail.com', 'Sarmiento 400 Resistencia-chaco', 3624553333),
(null, 'Katia', 'Ottaviano', 'katia@gmail.com', 'Avenida San Martin 1234 Resistencia-Chaco', 3624655478);


insert into ventas values
(null, 2000, null, '22-09-01', '18:30:00', 'contado', 2000, 1, 2, null, 7),
(null, 600, null, '22-09-07', '17:30:00', 'tarjeta de credito', 600, 19, 6, null, 5),
(null, 2500, null, '22-09-07', '18:30:00', 'tarjeta de debito', 2500, 2, 5, null, 2),
(null, 3000, null, '22-09-08', '18:00:00', 'contado', 3000, 18, null, 4, 10),
(null, 3500, null, '22-09-08', '20:30:00', 'tarjeta de credito', 3500, 15, null, 11, 1),
(null, 2700, 300, '22-09-13', '17:30:00', 'tarjeta de debito', 2400, 12, 3, null, 7),
(null, 1400, null, '22-09-15', '18:00:00', 'contado', 1400, 10, 14, null, 3),
(null, 3500, null, '22-09-15', '18:30:00', 'tarjeta de credito', 3500, 11, null, 2, 10),
(null, 3500, null, '22-09-21', '17:00:00', 'tarjeta de debito', 3500, 9, null, 10, 1),
(null, 3000, 400, '22-09-21', '18:30:00', 'contado', 2600, 5, 4, null, 10),
(null, 1600, null, '22-09-25', '16:30:00', 'contado', 2000, 12, 5, null, 2),
(null, 550, null, '22-09-25', '17:30:00', 'contado', 550, 5, 20, null, 6),
(null, 700, null, '22-09-25', '18:30:00', 'tarjeta de debito', 700, 2, 19, null, 3),
(null, 2500, null, '22-09-01', '18:00:00', 'contado', 2500, 17, null, 8, 1),
(null, 3000, null, '22-10-01', '20:30:00', 'tarjeta de credito', 3000, 2, null, 1, 1),
(null, 3800, 300, '22-10-03', '17:30:00', 'tarjeta de debito', 3500, 9, 12, null, 7),
(null, 2500, null, '22-10-04', '18:00:00', 'contado', 2500, 14, 1, null, 3),
(null, 3500, null, '22-10-04', '18:30:00', 'contado', 3500, 3, null, 2, 10),
(null, 3500, null, '22-10-05', '17:00:00', 'tarjeta de credito', 3500, 16, null, 10, 1),
(null, 3000, 400, '22-10-05', '18:30:00', 'tarjeta de debito', 2600, 9, 4, null, 10);

insert into proveedores_productos values
(1, 3),
(2, 1),
(3, 7),
(4, 10),
(5, 2),
(6, 5),
(7, 4),
(8, 9),
(9, 8),
(10, 9),
(11, 2),
(12, 7),
(13, 2),
(14, 3),
(15, 1),
(16, 3),
(17, 3),
(18, 9),
(19, 3),
(20, 6);

insert into proveedores_servicios values
(1,1),
(2,10),
(3,10),
(4,10),
(5,1),
(6,10),
(7,1),
(8,1),
(9,1),
(10,10),
(11,1);


insert into clientes_servicios values
(18, 4),
(15, 11),
(11, 2),
(9, 10),
(17, 8),
(2, 1),
(3, 2),
(16, 10);




