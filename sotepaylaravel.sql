-- Estructuras de las tablas base
CREATE TABLE IF NOT EXISTS `clientes` (
  `cliente_id` int NOT NULL AUTO_INCREMENT,
  `empresa` varchar(255) DEFAULT NULL,
  `titular` varchar(255) DEFAULT NULL,
  `ruc` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `observacion` text,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `pagos` (
  `pago_id` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `cliente_id` int NOT NULL,
  `servicio` varchar(255) DEFAULT NULL,
  `monto` varchar(255) DEFAULT NULL,
  `periodicidad` varchar(50) DEFAULT NULL,
  `fecha_proximo_pago` date DEFAULT NULL,
  `observacion` text,
  `pool_id` int DEFAULT NULL,
  `porcion_recurso` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pago_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text,
  `periodicidad` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `costo` varchar(255) DEFAULT NULL,
  `precio` varchar(255) DEFAULT NULL,
  `proveedor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `presupuestos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `cliente_prospecto` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `moneda` varchar(50) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `observacion` text,
  `detalles` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `presupuesto_items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `presupuesto_id` int NOT NULL,
  `producto_id` int DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio_unitario` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

