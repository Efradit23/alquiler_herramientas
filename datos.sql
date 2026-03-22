-- DATOS DE LA BASE DE DATOS: alquiler_herramientas
-- Ejecutar después de estructura.sql


USE alquiler_herramientas;

-- ============================================================
-- CLIENTES (100 registros)

INSERT INTO clientes (nombre, email, telefono) VALUES
('Juan Perez','juan.perez1@gmail.com','1123456701'),
('Maria Gomez','maria.gomez2@gmail.com','1123456702'),
('Carlos Lopez','carlos.lopez3@gmail.com','1123456703'),
('Ana Martinez','ana.martinez4@gmail.com','1123456704'),
('Luis Fernandez','luis.fernandez5@gmail.com','1123456705'),
('Sofia Rodriguez','sofia.rodriguez6@gmail.com','1123456706'),
('Diego Sanchez','diego.sanchez7@gmail.com','1123456707'),
('Lucia Romero','lucia.romero8@gmail.com','1123456708'),
('Martin Alvarez','martin.alvarez9@gmail.com','1123456709'),
('Valentina Torres','valentina.torres10@gmail.com','1123456710'),

('Fernando Ruiz','fernando.ruiz11@gmail.com','1123456711'),
('Camila Navarro','camila.navarro12@gmail.com','1123456712'),
('Jorge Castro','jorge.castro13@gmail.com','1123456713'),
('Julieta Mendez','julieta.mendez14@gmail.com','1123456714'),
('Ricardo Herrera','ricardo.herrera15@gmail.com','1123456715'),
('Paula Vega','paula.vega16@gmail.com','1123456716'),
('Andres Rojas','andres.rojas17@gmail.com','1123456717'),
('Florencia Silva','florencia.silva18@gmail.com','1123456718'),
('Pablo Acosta','pablo.acosta19@gmail.com','1123456719'),
('Natalia Ponce','natalia.ponce20@gmail.com','1123456720'),

('Sebastian Molina','sebastian.molina21@gmail.com','1123456721'),
('Carla Ibarra','carla.ibarra22@gmail.com','1123456722'),
('Guillermo Cabrera','guillermo.cabrera23@gmail.com','1123456723'),
('Rocio Duarte','rocio.duarte24@gmail.com','1123456724'),
('Emiliano Farias','emiliano.farias25@gmail.com','1123456725'),
('Noelia Campos','noelia.campos26@gmail.com','1123456726'),
('Hector Quiroga','hector.quiroga27@gmail.com','1123456727'),
('Daniela Pereyra','daniela.pereyra28@gmail.com','1123456728'),
('Gustavo Benitez','gustavo.benitez29@gmail.com','1123456729'),
('Melina Sosa','melina.sosa30@gmail.com','1123456730'),

('Ezequiel Arias','ezequiel.arias31@gmail.com','1123456731'),
('Marina Godoy','marina.godoy32@gmail.com','1123456732'),
('Raul Escobar','raul.escobar33@gmail.com','1123456733'),
('Cintia Leiva','cintia.leiva34@gmail.com','1123456734'),
('Alberto Luna','alberto.luna35@gmail.com','1123456735'),
('Veronica Aguirre','veronica.aguirre36@gmail.com','1123456736'),
('Cristian Cardozo','cristian.cardozo37@gmail.com','1123456737'),
('Lorena Bravo','lorena.bravo38@gmail.com','1123456738'),
('Hugo Medina','hugo.medina39@gmail.com','1123456739'),
('Natalia Ortiz','natalia.ortiz40@gmail.com','1123456740'),

('Leonardo Correa','leonardo.correa41@gmail.com','1123456741'),
('Mariela Paz','mariela.paz42@gmail.com','1123456742'),
('Oscar Gimenez','oscar.gimenez43@gmail.com','1123456743'),
('Claudia Peralta','claudia.peralta44@gmail.com','1123456744'),
('Adrian Salas','adrian.salas45@gmail.com','1123456745'),
('Karina Nuñez','karina.nunez46@gmail.com','1123456746'),
('Victor Toledo','victor.toledo47@gmail.com','1123456747'),
('Silvina Rios','silvina.rios48@gmail.com','1123456748'),
('Ramon Villalba','ramon.villalba49@gmail.com','1123456749'),
('Paola Ledesma','paola.ledesma50@gmail.com','1123456750'),

('Facundo Vera','facundo.vera51@gmail.com','1123456751'),
('Micaela Dominguez','micaela.dominguez52@gmail.com','1123456752'),
('Bruno Paredes','bruno.paredes53@gmail.com','1123456753'),
('Agustina Cabrera','agustina.cabrera54@gmail.com','1123456754'),
('Ivan Morales','ivan.morales55@gmail.com','1123456755'),
('Celeste Roldan','celeste.roldan56@gmail.com','1123456756'),
('Nicolas Soria','nicolas.soria57@gmail.com','1123456757'),
('Belen Vargas','belen.vargas58@gmail.com','1123456758'),
('Matias Carrizo','matias.carrizo59@gmail.com','1123456759'),
('Daiana Godinez','daiana.godinez60@gmail.com','1123456760'),

('German Nuñez','german.nunez61@gmail.com','1123456761'),
('Yamila Ferreyra','yamila.ferreyra62@gmail.com','1123456762'),
('Lucas Ponce','lucas.ponce63@gmail.com','1123456763'),
('Milagros Barrios','milagros.barrios64@gmail.com','1123456764'),
('Franco Juarez','franco.juarez65@gmail.com','1123456765'),
('Antonella Rivas','antonella.rivas66@gmail.com','1123456766'),
('Tomas Arias','tomas.arias67@gmail.com','1123456767'),
('Candela Ibañez','candela.ibanez68@gmail.com','1123456768'),
('Axel Salazar','axel.salazar69@gmail.com','1123456769'),
('Ailen Suarez','ailen.suarez70@gmail.com','1123456770'),

('Julian Montoya','julian.montoya71@gmail.com','1123456771'),
('Macarena Sosa','macarena.sosa72@gmail.com','1123456772'),
('Renzo Funes','renzo.funes73@gmail.com','1123456773'),
('Yesica Quintana','yesica.quintana74@gmail.com','1123456774'),
('Nestor Oliva','nestor.oliva75@gmail.com','1123456775'),
('Romina Farina','romina.farina76@gmail.com','1123456776'),
('Kevin Duarte','kevin.duarte77@gmail.com','1123456777'),
('Lautaro Villagra','lautaro.villagra78@gmail.com','1123456778'),
('Flor Alvarez','flor.alvarez79@gmail.com','1123456779'),
('Daniel Soria','daniel.soria80@gmail.com','1123456780'),

('Patricia Molina','patricia.molina81@gmail.com','1123456781'),
('Marcelo Cabrera','marcelo.cabrera82@gmail.com','1123456782'),
('Graciela Rios','graciela.rios83@gmail.com','1123456783'),
('Esteban Perez','esteban.perez84@gmail.com','1123456784'),
('Sandra Ruiz','sandra.ruiz85@gmail.com','1123456785'),
('Javier Aguero','javier.aguero86@gmail.com','1123456786'),
('Monica Benitez','monica.benitez87@gmail.com','1123456787'),
('Diego Ledesma','diego.ledesma88@gmail.com','1123456788'),
('Carolina Vega','carolina.vega89@gmail.com','1123456789'),
('Alfredo Luna','alfredo.luna90@gmail.com','1123456790'),

('Gabriela Ortiz','gabriela.ortiz91@gmail.com','1123456791'),
('Ricardo Gomez','ricardo.gomez92@gmail.com','1123456792'),
('Natalia Castro','natalia.castro93@gmail.com','1123456793'),
('Fernando Silva','fernando.silva94@gmail.com','1123456794'),
('Luciana Romero','luciana.romero95@gmail.com','1123456795'),
('Carlos Medina','carlos.medina96@gmail.com','1123456796'),
('Julieta Torres','julieta.torres97@gmail.com','1123456797'),
('Martin Sosa','martin.sosa98@gmail.com','1123456798'),
('Ana Lopez','ana.lopez99@gmail.com','1123456799'),
('Diego Perez','diego.perez100@gmail.com','1123456800');

-- ============================================================
-- SUCURSALES


INSERT INTO sucursal (nombre, direccion) VALUES
('Sucursal Centro', 'Av. Corrientes 1234, CABA'),
('Sucursal Norte', 'Av. Maipu 567, Vicente Lopez'),
('Sucursal Sur', 'Av. Hipolito Yrigoyen 8900, Avellaneda'),
('Sucursal Oeste', 'Av. Rivadavia 15000, Moron'),
('Sucursal La Plata', 'Calle 7 N° 1200, La Plata');

-- ============================================================
-- CATEGORIAS


INSERT INTO categorias (nombre) VALUES
('Construccion'),
('Electricidad'),
('Jardineria'),
('Pintura'),
('Carpinteria'),
('Limpieza'),
('Soldadura'),
('Medicion');

-- ============================================================
-- HERRAMIENTAS

INSERT INTO herramientas (id_categoria, nombre, descripcion, precio_por_dia) VALUES
-- construcción
(1, 'Vibrador de hormigon', 'Elimina burbujas en concreto', 18000),
(1, 'Cortadora de ladrillos', 'Corte preciso de mamposteria', 20000),
(1, 'Regla vibratoria', 'Nivelacion de superficies', 17000),
(1, 'Elevador de carga', 'Elevacion de materiales', 28000),

-- electricidad
(2, 'Probador de enchufes', 'Verificacion de instalacion', 3500),
(2, 'Cargador de baterias', 'Carga multiple', 6000),
(2, 'Fuente regulable', 'Fuente de laboratorio', 12000),

-- jardineria
(3, 'Escarificador de cesped', 'Aireacion del suelo', 15000),
(3, 'Trituradora de ramas', 'Reduce volumen de poda', 20000),
(3, 'Cortasetos', 'Corte de cercos vivos', 12000),
(3, 'Rociador fumigador', 'Aplicacion de productos', 8000),

-- pintura
(4, 'Lijadora de banda', 'Desbaste rapido', 11000),
(4, 'Removedor de pintura electrico', 'Elimina pintura vieja', 9000),
(4, 'Equipo airless', 'Pintura profesional sin aire', 20000),

-- carpinteria
(5, 'Sierra de banco', 'Corte fijo de precision', 20000),
(5, 'Ingletadora', 'Cortes en angulo', 15000),
(5, 'Clavadora neumatica', 'Fijacion rapida', 10000),
(5, 'Atornillador electrico', 'Uso intensivo', 7000),

-- limpieza
(6, 'Aspiradora de liquidos', 'Limpieza industrial', 12000),
(6, 'Pulidora de pisos', 'Pulido profesional', 18000),
(6, 'Equipo de vapor', 'Limpieza profunda sin quimicos', 15000),

-- soldadura
(7, 'Soldadora TIG', 'Alta precision', 26000),
(7, 'Extractor de humo', 'Seguridad en soldadura', 14000),

-- medicion
(8, 'Nivel de burbuja profesional', 'Alta precision manual', 4000),
(8, 'Camara termica', 'Deteccion de calor', 30000),
(8, 'Medidor de espesor', 'Control industrial', 18000),

-- herramientas generales
(1, 'Carretilla reforzada', 'Transporte de materiales', 6000),
(1, 'Escalera extensible', 'Trabajo en altura', 8000),
(1, 'Gato hidraulico', 'Elevacion de vehiculos', 9000),
(2, 'Alargue industrial', 'Cable reforzado', 3000),
(5, 'Sargento prensa', 'Sujecion de piezas', 3500),
(3, 'Manguera reforzada', 'Uso intensivo', 2500);

-- ============================================================
-- INVENTARIO (generado con tabla temporal)


CREATE TEMPORARY TABLE numeros (n INT);

INSERT INTO numeros (n)
VALUES 
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),
(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),
(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),
(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),
(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),
(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),
(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),
(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),
(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),
(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),
(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),
(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),
(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),
(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),
(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),
(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),
(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),
(171),(172),(173),(174),(175),(176),(177),(178),(179),(180),
(181),(182),(183),(184),(185),(186),(187),(188),(189),(190),
(191),(192),(193),(194),(195),(196),(197),(198),(199),(200);

INSERT INTO inventario (id_herramienta, id_sucursal, numero_serie, estado)
SELECT 
    (n % 32) + 1,
    (n % 5) + 1,
    CONCAT('SER-', LPAD(n, 4, '0')),
    CASE 
        WHEN n % 10 = 0 THEN 'mantenimiento'
        WHEN n % 3 = 0 THEN 'alquilado'
        ELSE 'disponible'
    END
FROM numeros;

-- ============================================================
-- ALQUILERES

INSERT INTO alquiler (id_cliente, fecha_inicio_alquiler, fecha_finaliza_alquiler, precio_total, estado_alquiler) VALUES
(1,'2026-01-05','2026-01-08',25000,'finalizado'),
(2,'2026-01-07','2026-01-10',27000,'finalizado'),
(3,'2026-01-10','2026-01-12',15000,'finalizado'),
(4,'2026-01-12','2026-01-15',30000,'finalizado'),
(5,'2026-01-15','2026-01-18',28000,'finalizado'),

(6,'2026-01-18','2026-01-20',16000,'finalizado'),
(7,'2026-01-20','2026-01-24',35000,'finalizado'),
(8,'2026-01-22','2026-01-25',26000,'finalizado'),
(9,'2026-01-25','2026-01-28',27000,'finalizado'),
(10,'2026-01-28','2026-02-01',36000,'finalizado'),

(11,'2026-02-02','2026-02-05',25000,'finalizado'),
(12,'2026-02-04','2026-02-07',26000,'finalizado'),
(13,'2026-02-06','2026-02-10',37000,'finalizado'),
(14,'2026-02-08','2026-02-11',24000,'finalizado'),
(15,'2026-02-10','2026-02-13',25000,'finalizado'),

(16,'2026-02-12','2026-02-15',26000,'finalizado'),
(17,'2026-02-14','2026-02-18',35000,'finalizado'),
(18,'2026-02-16','2026-02-19',24000,'finalizado'),
(19,'2026-02-18','2026-02-22',36000,'finalizado'),
(20,'2026-02-20','2026-02-23',25000,'finalizado'),

(21,'2026-02-22','2026-02-25',26000,'finalizado'),
(22,'2026-02-24','2026-02-27',27000,'finalizado'),
(23,'2026-02-26','2026-03-01',35000,'finalizado'),
(24,'2026-02-28','2026-03-03',26000,'finalizado'),
(25,'2026-03-01','2026-03-04',25000,'finalizado'),

(26,'2026-03-02','2026-03-06',36000,'finalizado'),
(27,'2026-03-04','2026-03-07',26000,'finalizado'),
(28,'2026-03-06','2026-03-09',25000,'finalizado'),
(29,'2026-03-08','2026-03-12',37000,'finalizado'),
(30,'2026-03-10','2026-03-13',26000,'finalizado'),

-- activos
(31,'2026-03-15','2026-03-20',30000,'activo'),
(32,'2026-03-16','2026-03-21',32000,'activo'),
(33,'2026-03-17','2026-03-22',33000,'activo'),
(34,'2026-03-18','2026-03-23',31000,'activo'),
(35,'2026-03-19','2026-03-24',30000,'activo'),

(36,'2026-03-20','2026-03-25',32000,'activo'),
(37,'2026-03-21','2026-03-26',31000,'activo'),
(38,'2026-03-22','2026-03-27',33000,'activo'),
(39,'2026-03-23','2026-03-28',34000,'activo'),
(40,'2026-03-24','2026-03-29',35000,'activo');

-- ============================================================
-- DETALLE DE ALQUILERES


INSERT INTO detalle_alquiler (id_alquiler, id_inventario, precio_por_dia) VALUES
(1,1,8000),(1,2,7000),
(2,3,9000),
(3,4,7500),
(4,5,8500),(4,6,8000),
(5,7,9000),

(6,8,8000),
(7,9,9000),(7,10,8500),
(8,11,8500),
(9,12,9000),
(10,13,9500),(10,14,8500),

(11,15,8000),
(12,16,8500),
(13,17,9000),(13,18,9500),
(14,19,8000),
(15,20,8500),

(16,21,8000),
(17,22,9000),(17,23,8500),
(18,24,8000),
(19,25,9500),
(20,26,8500),

(21,27,8000),
(22,28,8500),
(23,29,9000),
(24,30,8500),
(25,31,8000),

-- registros adicionales para la vista_herramientas_populares
(1,1,8000),(1,2,7000),
(2,1,8000),(2,3,9000),
(3,2,7000),(3,4,7500),
(4,1,8000),(4,5,8500),
(5,3,9000),(5,6,8000),
(6,1,8000),(6,7,9000),
(7,2,7000),(7,8,8000),
(8,3,9000),(8,9,8500),
(9,1,8000),(9,10,9000),
(10,2,7000),(10,11,8500),
(11,1,8000),
(12,2,7000),
(13,3,9000),
(14,4,7500),
(15,5,8500),
(16,1,8000),
(17,2,7000),
(18,3,9000),
(19,1,8000),
(20,2,7000),
(21,1,8000),(21,6,8000),
(22,2,7000),(22,7,9000),
(23,3,9000),(23,8,8000),
(24,4,7500),(24,9,8500),
(25,5,8500),(25,10,9000),
(26,1,8000),
(27,1,8000),
(28,2,7000),
(29,2,7000),
(30,3,9000),
(31,1,8000),
(32,2,7000),
(33,3,9000),
(34,4,7500),
(35,5,8500),
(36,1,8000),
(37,2,7000),
(38,3,9000),
(39,4,7500),
(40,5,8500);

-- ============================================================
-- PAGOS

INSERT INTO pagos (id_alquiler, importe, forma_de_pago) VALUES
(1,25000,'transferencia'),
(2,27000,'efectivo'),
(3,15000,'debito'),
(4,30000,'credito'),
(5,28000,'transferencia'),
(6,16000,'efectivo'),
(7,35000,'credito'),
(8,26000,'debito'),
(9,27000,'transferencia'),
(10,36000,'credito');

-- ============================================================
-- RESENIAS

INSERT INTO resenia (id_alquiler, calificacion, comentario) VALUES
(1,5,'Excelente'),
(2,4,'Muy bueno'),
(3,5,'Todo perfecto'),
(4,3,'Correcto'),
(5,5,'Recomendado'),
(6,4,'Buen servicio'),
(7,5,'Impecable'),
(8,4,'Funciona bien'),
(9,5,'Sin problemas'),
(10,3,'Aceptable');
