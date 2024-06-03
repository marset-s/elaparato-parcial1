-- Crear la tabla producto
CREATE TABLE IF NOT EXISTS producto (
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT NOT NULL,
    precio INT NOT NULL,
    cantidad INT NOT NULL,
    PRIMARY KEY (id)
);

-- Crear la tabla venta
CREATE TABLE IF NOT EXISTS venta (
    id_venta INT NOT NULL AUTO_INCREMENT,
    fecha DATE NOT NULL,
    PRIMARY KEY (id_venta)
);

-- Crear la tabla producto_lista_ventas (relación muchos a muchos entre producto y venta)
CREATE TABLE IF NOT EXISTS producto_lista_ventas (
    producto_id INT NOT NULL,
    venta_id INT NOT NULL,
    PRIMARY KEY (producto_id, venta_id),
    FOREIGN KEY (producto_id) REFERENCES producto(id),
    FOREIGN KEY (venta_id) REFERENCES venta(id_venta)
);