-- ESTRUCTURA DE LA BASE DE DATOS: alquiler_herramientas


CREATE DATABASE alquiler_herramientas;
USE alquiler_herramientas;

-- ============================================================
-- TABLAS

CREATE TABLE sucursal (
	id_sucursal INT AUTO_INCREMENT,
    nombre VARCHAR (100) NOT NULL,
    direccion VARCHAR (200) NOT NULL,
    PRIMARY KEY (id_sucursal) );
    
CREATE TABLE categorias (
	id_categoria INT AUTO_INCREMENT,
    nombre VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_categoria) );
    
CREATE TABLE herramientas (
	id_herramienta INT AUTO_INCREMENT,
	id_categoria INT NOT NULL,
	nombre VARCHAR (100) NOT NULL,
	descripcion TEXT,
	precio_por_dia DECIMAL (10,2) NOT NULL,
	PRIMARY KEY (id_herramienta),
	FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
	ON UPDATE CASCADE
	ON DELETE RESTRICT );
    
CREATE TABLE inventario (
	id_inventario INT AUTO_INCREMENT,
	id_herramienta INT NOT NULL,
	id_sucursal INT NOT NULL,
    numero_serie VARCHAR (100) NOT NULL UNIQUE,
    estado ENUM('disponible', 'alquilado', 'mantenimiento') DEFAULT 'disponible',
    PRIMARY KEY (id_inventario),
    FOREIGN KEY (id_herramienta) REFERENCES herramientas(id_herramienta)
		ON UPDATE CASCADE
        ON DELETE RESTRICT,
    FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)
		ON UPDATE CASCADE
		ON DELETE RESTRICT );
	
CREATE TABLE clientes (
	id_cliente INT AUTO_INCREMENT,
    nombre VARCHAR (100) NOT NULL,
    email VARCHAR (150) UNIQUE,
    telefono VARCHAR (30),
    PRIMARY KEY (id_cliente) );
    
CREATE TABLE alquiler (
	id_alquiler INT AUTO_INCREMENT,
	id_cliente INT NOT NULL,
    fecha_inicio_alquiler DATE NOT NULL,
    fecha_finaliza_alquiler DATE NOT NULL,
    precio_total DECIMAL (10,2) NOT NULL,
    estado_alquiler ENUM ('activo', 'finalizado', 'cancelado') DEFAULT 'activo',
    PRIMARY KEY (id_alquiler),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
		ON UPDATE CASCADE
        ON DELETE RESTRICT,
	CHECK (fecha_finaliza_alquiler >= fecha_inicio_alquiler) );
    
CREATE TABLE detalle_alquiler (
    id_detalle INT AUTO_INCREMENT,
    id_alquiler INT NOT NULL,
    id_inventario INT NOT NULL,
    precio_por_dia DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_detalle),
    UNIQUE (id_alquiler, id_inventario),
    FOREIGN KEY (id_alquiler) REFERENCES alquiler(id_alquiler)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (id_inventario) REFERENCES inventario(id_inventario)
        ON UPDATE CASCADE
        ON DELETE RESTRICT );

CREATE TABLE pagos (
	id_pago INT AUTO_INCREMENT,
    id_alquiler INT NOT NULL,
    importe DECIMAL (10,2) NOT NULL,
    fecha_de_pago DATETIME DEFAULT CURRENT_TIMESTAMP,
    forma_de_pago VARCHAR (50),
	PRIMARY KEY (id_pago),
    FOREIGN KEY (id_alquiler) REFERENCES alquiler(id_alquiler)
		ON UPDATE CASCADE
        ON DELETE CASCADE );

CREATE TABLE mantenimiento (
	id_mantenimiento INT AUTO_INCREMENT,
    id_inventario INT NOT NULL,
    descripcion TEXT,
    fecha_mantenimiento DATE NOT NULL,
    costo DECIMAL (10,2),
    PRIMARY KEY (id_mantenimiento),
    FOREIGN KEY (id_inventario) REFERENCES inventario(id_inventario)
		ON UPDATE CASCADE
        ON DELETE CASCADE );
        
CREATE TABLE resenia ( -- la palabra reseña esta escrita "resenia" aproposito para no generar ningun inconveniente por la letra ñ
	id_resenia INT AUTO_INCREMENT,
    id_alquiler INT NOT NULL,
    calificacion INT CHECK (calificacion BETWEEN 1 AND 5),
    comentario TEXT,
    fecha_resenia DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_resenia),
    UNIQUE (id_alquiler),
    FOREIGN KEY (id_alquiler) REFERENCES alquiler(id_alquiler)
		ON UPDATE CASCADE
        ON DELETE CASCADE );

-- ============================================================
-- VISTAS

-- cuanto generó cada alquiler
CREATE VIEW vista_ingresos_alquiler AS
SELECT 
    a.id_alquiler,
    c.nombre,
    a.fecha_inicio_alquiler,
    a.fecha_finaliza_alquiler,
    a.precio_total
FROM alquiler a
JOIN clientes c ON a.id_cliente = c.id_cliente;

-- herramientas mas alquiladas
CREATE VIEW vista_herramientas_populares AS
SELECT 
    h.nombre,
    COUNT(*) AS veces_alquilada
FROM detalle_alquiler d
JOIN inventario i ON d.id_inventario = i.id_inventario
JOIN herramientas h ON i.id_herramienta = h.id_herramienta
GROUP BY h.nombre
ORDER BY veces_alquilada DESC;

-- estado del inventario
CREATE VIEW vista_estado_inventario AS
SELECT 
    h.nombre,
    i.estado,
    COUNT(*) AS cantidad
FROM inventario i
JOIN herramientas h ON i.id_herramienta = h.id_herramienta
GROUP BY h.nombre, i.estado;

-- clientes mas frecuentes
CREATE VIEW vista_clientes_frecuentes AS
SELECT 
    c.nombre,
    COUNT(a.id_alquiler) AS total_alquileres
FROM clientes c
JOIN alquiler a ON c.id_cliente = a.id_cliente
GROUP BY c.nombre
ORDER BY total_alquileres DESC;

-- promedio de calificaciones
CREATE VIEW vista_calificaciones AS
SELECT 
    AVG(calificacion) AS promedio
FROM resenia;

-- ============================================================
-- FUNCIONES

-- calcular los dias de alquiler
CREATE FUNCTION dias_alquiler(fecha_inicio DATE, fecha_fin DATE)
RETURNS INT
DETERMINISTIC
RETURN DATEDIFF(fecha_fin, fecha_inicio);

-- aplicar descuento si el alquiler dura mas de 5 dias
DELIMITER $$

CREATE FUNCTION calcular_total(precio DECIMAL(10,2), dias INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);

    SET total = precio * dias;

    IF dias > 5 THEN
        SET total = total * 0.9;
    END IF;

    RETURN total;
END $$

DELIMITER ;

-- calcular cuantos dias pasaron desde la ultima vez que alquiló el cliente
DELIMITER $$

CREATE FUNCTION dias_ultimo_alq(cliente_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE ultima_fecha DATE;
    DECLARE dias INT;

    SELECT MAX(fecha_inicio_alquiler)
    INTO ultima_fecha
    FROM alquiler
    WHERE id_cliente = cliente_id;

    IF ultima_fecha IS NULL THEN
        RETURN NULL;
    END IF;

    SET dias = DATEDIFF(CURDATE(), ultima_fecha);

    RETURN dias;

END $$

DELIMITER ;

-- ============================================================
-- STORED PROCEDURES

-- automatizar el registro de alquiler
DELIMITER $$

CREATE PROCEDURE crear_alquiler(
    IN cliente_id INT,
    IN fecha_inicio DATE,
    IN fecha_fin DATE,
    IN precio DECIMAL(10,2)
)
BEGIN
    INSERT INTO alquiler(id_cliente, fecha_inicio_alquiler, fecha_finaliza_alquiler, precio_total, estado_alquiler)
    VALUES(cliente_id, fecha_inicio, fecha_fin, precio, 'activo');
END $$

DELIMITER ;

-- finalizar alquileres
DELIMITER $$

CREATE PROCEDURE finalizar_alquiler(IN idA INT)
BEGIN
    UPDATE alquiler
    SET estado_alquiler = 'finalizado'
    WHERE id_alquiler = idA
    AND estado_alquiler = 'activo';
END $$

DELIMITER ;

-- ===============================================
-- TRIGGERS


-- impide reseñar un alquiler que no esté finalizado
DELIMITER $$

CREATE TRIGGER validar_resenia
BEFORE INSERT ON resenia
FOR EACH ROW
BEGIN
    DECLARE estado VARCHAR(20);
    SELECT estado_alquiler INTO estado
    FROM alquiler
    WHERE id_alquiler = NEW.id_alquiler;
    IF estado IS NULL OR estado != 'finalizado' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No se puede reseñar un alquiler no finalizado';
    END IF;
END $$

DELIMITER ;

-- evita alquilar una herramienta que no esté disponible
DELIMITER $$

CREATE TRIGGER verificar_disponibilidad
BEFORE INSERT ON detalle_alquiler
FOR EACH ROW
BEGIN
    DECLARE estado_actual VARCHAR(20);

    SELECT estado INTO estado_actual
    FROM inventario
    WHERE id_inventario = NEW.id_inventario;

    IF estado_actual = 'alquilado' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La herramienta ya se encuentra alquilada.';
    ELSEIF estado_actual = 'mantenimiento' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La herramienta está en mantenimiento y no puede alquilarse.';
    END IF;
END $$

DELIMITER ;


