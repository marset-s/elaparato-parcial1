

-- Insertar productos
INSERT INTO producto (id, nombre, descripcion, precio, cantidad)VALUES (1, 'Lavadora Samsung', 'Lavadora de carga frontal con capacidad de 15 kg', 1299, 10);
INSERT INTO producto (id, nombre, descripcion, precio, cantidad)VALUES (2, 'Refrigeradora LG', 'Refrigeradora de 3 puertas con capacidad de 25 pies cúbicos', 1599, 5);
INSERT INTO producto (id, nombre, descripcion, precio, cantidad)VALUES (3, 'Televisor Sony', 'Televisor LED 4K de 55 pulgadas con Android TV', 899, 15);
INSERT INTO producto (id, nombre, descripcion, precio, cantidad)VALUES (4, 'Horno eléctrico Whirlpool', 'Horno eléctrico de acero inoxidable con capacidad de 6.4 pies cúbicos', 799, 7);
INSERT INTO producto (id, nombre, descripcion, precio, cantidad)VALUES (5, 'Aspiradora Dyson', 'Aspiradora inalámbrica con tecnología Cyclone V10', 499, 20);

-- Insertar ventas
INSERT INTO venta (id_venta, fecha)VALUES (1, '2023-01-15');
INSERT INTO venta (id_venta, fecha)VALUES (2, '2023-02-05');
INSERT INTO venta (id_venta, fecha)VALUES (3, '2023-03-10');
INSERT INTO venta (id_venta, fecha)VALUES (4, '2023-04-20');
INSERT INTO venta (id_venta, fecha)VALUES (5, '2023-05-01');

 Insertar los productos comprados en cada venta
INSERT INTO producto_lista_ventas (producto_id, venta_id) VALUES (1, 1);
INSERT INTO producto_lista_ventas (producto_id, venta_id) VALUES (2, 1);
INSERT INTO producto_lista_ventas (producto_id, venta_id) VALUES (3, 1);
INSERT INTO producto_lista_ventas (producto_id, venta_id) VALUES (1, 2);
INSERT INTO producto_lista_ventas (producto_id, venta_id) VALUES (4, 2);
INSERT INTO producto_lista_ventas (producto_id, venta_id) VALUES (2, 3);
INSERT INTO producto_lista_ventas (producto_id, venta_id) VALUES (5, 3);
INSERT INTO producto_lista_ventas (producto_id, venta_id) VALUES (3, 3);
INSERT INTO producto_lista_ventas (producto_id, venta_id) VALUES (1, 4);
INSERT INTO producto_lista_ventas (producto_id, venta_id) VALUES (2, 4);
INSERT INTO producto_lista_ventas (producto_id, venta_id) VALUES (5, 4);
INSERT INTO producto_lista_ventas (producto_id, venta_id) VALUES (3, 5);
INSERT INTO producto_lista_ventas (producto_id, venta_id) VALUES (4, 5);

-- Actualizar las secuencias (ajustar si se utilizan)
-- UPDATE producto_seq SET next_val = 6;
-- UPDATE venta_seq SET next_val = 6;
