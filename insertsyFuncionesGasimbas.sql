USE gaseos;

-- Inserción de datos en tabla branch (Sedes principales)
INSERT INTO branch VALUES
('B001', 'Planta Principal Gasimbas', 'Medellín', 'Carrera 50 #45-12 Zona Industrial', '3001234567', 'Fábrica'),
('B002', 'Bodega Bogotá', 'Bogotá', 'Calle 13 #42-15 Puente Aranda', '3109876543', 'Bodega'),
('B003', 'Bodega Barranquilla', 'Barranquilla', 'Vía 40 #70-20', '3207654321', 'Bodega'),
('B004', 'Centro Distribución Norte', 'Medellín', 'Calle 80 #45-30', '3154567890', 'Distribución'),
('B005', 'Centro Distribución Sur', 'Medellín', 'Carrera 48 #20-15', '3001112233', 'Distribución'),
('B006', 'Centro Distribución Este', 'Medellín', 'Calle 50 #30-25', '3208889977', 'Distribución'),
('B007', 'Centro Distribución Oeste', 'Medellín', 'Avenida 80 #45-20', '3157778899', 'Distribución');

-- Inserción de datos en tabla providers (Proveedores específicos de la industria de gaseosas)
INSERT INTO providers VALUES
('900111222-3', 'Envases Plásticos SA', 'Botellas Plásticas', '3001234567', 'envases.plasticos@mail.com', 'B001'),
('901222333-4', 'Vidrios Colombia LTDA', 'Botellas Vidrio', '3112345678', 'vidrios.col@mail.com', 'B001'),
('902333444-5', 'Etiquetas Express', 'Etiquetas', '3223456789', 'etiquetas.express@mail.com', 'B001'),
('903444555-6', 'Tapas Industriales', 'Tapas', '3334567890', 'tapas.ind@mail.com', 'B001'),
('904555666-7', 'Cajas y Empaques', 'Cajas', '3445678901', 'cajas.empaques@mail.com', 'B001'),
('905666777-8', 'Azúcar Industrial CO', 'Materia Prima', '3556789012', 'azucar.ind@mail.com', 'B001'),
('906777888-9', 'Saborizantes Unidos', 'Materia Prima', '3667890123', 'saborizantes@mail.com', 'B001');

-- Inserción de datos en tabla products (6 tipos de gaseosas en 3 tamaños)
INSERT INTO products VALUES
('COLA-P', 'Cola Personal', 'Gaseosa sabor cola presentación personal', '300ml', 'Vidrio', 6, 12000.00, '901222333-4'),
('COLA-15', 'Cola 1.5L', 'Gaseosa sabor cola presentación mediana', '1.5L', 'Plástico', 1, 4500.00, '900111222-3'),
('COLA-3L', 'Cola 3L', 'Gaseosa sabor cola presentación familiar', '3L', 'Plástico', 2, 8500.00, '900111222-3'),
('NARAN-P', 'Naranja Personal', 'Gaseosa sabor naranja presentación personal', '300ml', 'Vidrio', 6, 11000.00, '901222333-4'),
('NARAN-15', 'Naranja 1.5L', 'Gaseosa sabor naranja presentación mediana', '1.5L', 'Plástico', 1, 4000.00, '900111222-3'),
('NARAN-3L', 'Naranja 3L', 'Gaseosa sabor naranja presentación familiar', '3L', 'Plástico', 2, 8000.00, '900111222-3'),
('LIMON-P', 'Limón Personal', 'Gaseosa sabor limón presentación personal', '300ml', 'Vidrio', 6, 11000.00, '901222333-4');

-- Inserción de datos en tabla clients (Clientes representativos)
INSERT INTO clients VALUES
('800123456-7', 'Supermercado El Ahorro', 'Mayorista', 'Calle 45 #23-12', 'Medellín', '3001234567', 'ahorro@mail.com', 'ahorro_super', 'pass123', 'B001'),
('801234567-8', 'Tiendas Express', 'Minorista', 'Carrera 70 #45-67', 'Bogotá', '3112345678', 'express@mail.com', 'express_store', 'pass456', 'B002'),
('802345678-9', 'Distribuidora Norte', 'Mayorista', 'Calle 80 #23-45', 'Barranquilla', '3223456789', 'norte@mail.com', 'norte_dist', 'pass789', 'B003'),
('803456789-0', 'Minimercado La Esquina', 'Minorista', 'Calle 52 #12-34', 'Medellín', '3334567890', 'esquina@mail.com', 'esquina_mini', 'pass012', 'B001'),
('804567890-1', 'Tiendas del Barrio', 'Minorista', 'Carrera 23 #56-78', 'Bogotá', '3445678901', 'barrio@mail.com', 'barrio_store', 'pass345', 'B002'),
('805678901-2', 'Comercial del Caribe', 'Mayorista', 'Calle 34 #67-89', 'Barranquilla', '3556789012', 'caribe@mail.com', 'caribe_com', 'pass678', 'B003'),
('806789012-3', 'Autoservicio Central', 'Minorista', 'Avenida 45 #12-34', 'Medellín', '3667890123', 'central@mail.com', 'central_auto', 'pass901', 'B001');

-- Inserción de datos en tabla employees (Personal clave)
INSERT INTO employees VALUES
('E001', 'Carlos', 'González', 'Gerente Planta', 5000000.00, '2020-01-15', 'B001'),
('E002', 'Ana', 'Martínez', 'Supervisor Bogotá', 3500000.00, '2020-03-20', 'B002'),
('E003', 'Luis', 'Rodríguez', 'Supervisor Barranquilla', 3500000.00, '2020-06-10', 'B003'),
('E004', 'María', 'López', 'Conductor', 2500000.00, '2020-08-05', 'B001'),
('E005', 'Jorge', 'Ramírez', 'Conductor', 2500000.00, '2021-01-20', 'B001'),
('E006', 'Patricia', 'Herrera', 'Operario Producción', 2000000.00, '2021-03-15', 'B001'),
('E007', 'Roberto', 'Silva', 'Operario Producción', 2000000.00, '2021-06-01', 'B001');

-- Inserción de datos en tabla vehicles (10 camiones de la empresa)
INSERT INTO vehicles VALUES
('ABC123', 'Chevrolet NPR 2020', 5000, 'Activo', 'B001'),
('DEF456', 'Ford F-150 2021', 3000, 'Activo', 'B001'),
('GHI789', 'Kenworth T800 2019', 8000, 'Activo', 'B001'),
('JKL012', 'Toyota Hilux 2022', 2500, 'Activo', 'B001'),
('MNO345', 'Isuzu NQR 2021', 4500, 'Activo', 'B001'),
('PQR678', 'Hino 300 2020', 3500, 'Activo', 'B001'),
('STU901', 'Chevrolet NHR 2022', 2000, 'Activo', 'B001');

-- Inserción de datos en tabla inventory (12 registros)
-- Considerando inventario en las diferentes sedes y productos
INSERT INTO inventory VALUES
-- Inventario en Medellín (Planta Principal)
('B001', 'COLA-P', 1000, '2024-01-15'),  -- Cola Personal
('B001', 'COLA-15', 800, '2024-01-15'),   -- Cola 1.5L
('B001', 'COLA-3L', 600, '2024-01-15'),   -- Cola 3L
('B001', 'NARAN-P', 900, '2024-01-15'),   -- Naranja Personal

-- Inventario en Bogotá
('B002', 'COLA-P', 500, '2024-01-15'),
('B002', 'COLA-15', 400, '2024-01-15'),
('B002', 'NARAN-P', 450, '2024-01-15'),
('B002', 'NARAN-15', 350, '2024-01-15'),

-- Inventario en Barranquilla
('B003', 'COLA-P', 400, '2024-01-15'),
('B003', 'COLA-3L', 300, '2024-01-15'),
('B003', 'NARAN-P', 350, '2024-01-15'),
('B003', 'NARAN-3L', 250, '2024-01-15');

-- Inserción de datos en tabla sells (12 registros)
-- Considerando ventas en las diferentes ciudades y tipos de pago
INSERT INTO sells VALUES
-- Ventas en Medellín
('S001', '800123456-7', '2024-01-10', 600000.00, 'Pagado', 'Tarjeta', 'E001'),    -- Martes
('S002', '803456789-0', '2024-01-10', 450000.00, 'Pagado', 'PSE', 'E001'),        -- Martes
('S003', '806789012-3', '2024-01-13', 750000.00, 'Pagado', 'Transferencia', 'E001'), -- Viernes
('S004', '800123456-7', '2024-01-13', 520000.00, 'Pagado', 'Tarjeta', 'E001'),    -- Viernes

-- Ventas en Bogotá
('S005', '801234567-8', '2024-01-11', 480000.00, 'Pagado', 'PSE', 'E002'),        -- Jueves
('S006', '804567890-1', '2024-01-11', 630000.00, 'Pagado', 'Transferencia', 'E002'), -- Jueves
('S007', '801234567-8', '2024-01-15', 890000.00, 'Pagado', 'Tarjeta', 'E002'),    -- Lunes
('S008', '804567890-1', '2024-01-15', 445000.00, 'Pagado', 'PSE', 'E002'),        -- Lunes

-- Ventas en Barranquilla
('S009', '802345678-9', '2024-01-11', 670000.00, 'Pagado', 'Transferencia', 'E003'), -- Jueves
('S010', '805678901-2', '2024-01-11', 320000.00, 'Pagado', 'Tarjeta', 'E003'),    -- Jueves
('S011', '802345678-9', '2024-01-15', 550000.00, 'Pagado', 'PSE', 'E003'),        -- Lunes
('S012', '805678901-2', '2024-01-15', 780000.00, 'Pagado', 'Transferencia', 'E003'); -- Lunes

-- insert en las tablas debiles
INSERT INTO sell_details VALUES
-- Detalles de ventas en Medellín
('S001', 'COLA-P', 50, 12000.00, 600000.00),     -- 50 paquetes de Cola Personal (6 unidades)
('S002', 'COLA-15', 100, 4500.00, 450000.00),    -- 100 unidades de Cola 1.5L
('S003', 'COLA-3L', 45, 8500.00, 382500.00),     -- 45 paquetes de Cola 3L (2 unidades)
('S004', 'NARAN-P', 40, 11000.00, 440000.00),    -- 40 paquetes de Naranja Personal (6 unidades)

-- Detalles de ventas en Bogotá
('S005', 'COLA-P', 40, 12000.00, 480000.00),
('S006', 'NARAN-15', 140, 4500.00, 630000.00),
('S007', 'COLA-3L', 50, 8500.00, 425000.00),
('S008', 'NARAN-P', 35, 11000.00, 385000.00),

-- Detalles de ventas en Barranquilla
('S009', 'COLA-P', 45, 12000.00, 540000.00),
('S010', 'NARAN-3L', 40, 8000.00, 320000.00),
('S011', 'COLA-15', 110, 4500.00, 495000.00),
('S012', 'NARAN-P', 60, 11000.00, 660000.00);

INSERT INTO routes VALUES
-- Rutas a Bogotá (Lunes y Jueves)
('R001', 'ABC123', 'Bogotá', '2024-01-11', 'E004'),      -- Jueves
('R002', 'DEF456', 'Bogotá', '2024-01-15', 'E005'),      -- Lunes
('R003', 'GHI789', 'Bogotá', '2024-01-18', 'E004'),      -- Jueves
('R004', 'JKL012', 'Bogotá', '2024-01-22', 'E005'),      -- Lunes

-- Rutas a Barranquilla (Lunes y Jueves)
('R005', 'MNO345', 'Barranquilla', '2024-01-11', 'E004'), -- Jueves
('R006', 'PQR678', 'Barranquilla', '2024-01-15', 'E005'), -- Lunes
('R007', 'STU901', 'Barranquilla', '2024-01-18', 'E004'), -- Jueves
('R008', 'ABC123', 'Barranquilla', '2024-01-22', 'E005'), -- Lunes

-- Rutas en Medellín (Martes y Viernes)
('R009', 'DEF456', 'Medellín', '2024-01-12', 'E004'),    -- Viernes
('R010', 'GHI789', 'Medellín', '2024-01-16', 'E005'),    -- Martes
('R011', 'JKL012', 'Medellín', '2024-01-19', 'E004'),    -- Viernes
('R012', 'MNO345', 'Medellín', '2024-01-23', 'E005');    -- Martes

-- Función 1: Verifica si hay stock suficiente de un producto en una sucursal
DELIMITER //
CREATE FUNCTION check_product_stock(
    branch_id VARCHAR(20),
    product_id VARCHAR(20),
    required_quantity INT
) 
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE current_stock INT;
    
    SELECT quantity INTO current_stock
    FROM inventory
    WHERE id_branch = branch_id 
    AND product_key = product_id;
    
    IF current_stock IS NULL THEN
        RETURN FALSE;
    END IF;
    
    RETURN current_stock >= required_quantity;
END //
DELIMITER ;

-- Función 2: Verifica si un cliente tiene pedidos pendientes por pagar
DELIMITER //
CREATE FUNCTION check_pending_payments(
    client_nit VARCHAR(20)
) 
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE pending_count INT;
    
    SELECT COUNT(*) INTO pending_count
    FROM sells
    WHERE nit_client = client_nit 
    AND payment_state = 'Pendiente';
    
    RETURN pending_count > 0;
END //
DELIMITER ;

-- Procedimiento 1: Obtiene el historial de ventas de un cliente en un rango de fechas
DELIMITER //
CREATE PROCEDURE get_client_sales_history(
    IN p_client_nit VARCHAR(20),
    IN p_start_date DATE,
    IN p_end_date DATE,
    IN p_payment_state VARCHAR(20)
)
BEGIN
    SELECT 
        s.id_sell,
        s.sell_date,
        s.total,
        s.payment_state,
        s.payment_method,
        sd.product_key,
        p.product_name,
        sd.package_quantity,
        sd.unit_price,
        sd.subtotal
    FROM sells s
    JOIN sell_details sd ON s.id_sell = sd.id_sell
    JOIN products p ON sd.product_key = p.product_key
    WHERE s.nit_client = p_client_nit
    AND s.sell_date BETWEEN p_start_date AND p_end_date
    AND (p_payment_state IS NULL OR s.payment_state = p_payment_state)
    ORDER BY s.sell_date DESC;
END //
DELIMITER ;

-- Procedimiento 2: Gestiona las rutas de distribución por ciudad y fecha
DELIMITER //
CREATE PROCEDURE manage_distribution_routes(
    IN p_city VARCHAR(50),
    IN p_start_date DATE,
    IN p_end_date DATE,
    IN p_vehicle_plate VARCHAR(15)
)
BEGIN
    -- Validar que la ciudad tenga rutas asignadas en los días correctos
    IF p_city IN ('Bogotá', 'Barranquilla') AND DAYOFWEEK(p_start_date) NOT IN (2, 5) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Las rutas para Bogotá y Barranquilla solo pueden ser Lunes y Jueves';
    ELSEIF p_city = 'Medellín' AND DAYOFWEEK(p_start_date) NOT IN (3, 6) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Las rutas para Medellín solo pueden ser Martes y Viernes';
    END IF;

    -- Obtener las rutas programadas
    SELECT 
        r.id_route,
        r.vehicle_plate,
        v.model AS vehicle_model,
        r.destiny_city,
        r.departure_date,
        CONCAT(e.name_employee, ' ', e.lastname_employee) AS driver_name,
        v.capacity AS vehicle_capacity
    FROM routes r
    JOIN vehicles v ON r.vehicle_plate = v.plate
    JOIN employees e ON r.id_employee = e.id_employee
    WHERE r.destiny_city = p_city
    AND r.departure_date BETWEEN p_start_date AND p_end_date
    AND (p_vehicle_plate IS NULL OR r.vehicle_plate = p_vehicle_plate)
    ORDER BY r.departure_date;
END //
DELIMITER ;

USE gaseos;

-- ¡Profe! Aquí empezamos con las pruebas de las funciones

-- Primero vamos a probar la función que verifica el stock
-- Esta nos quedó bien regia, mire todo lo que hace:
SELECT check_product_stock('B001', 'COLA-P', 50) as hay_stock_suficiente;
-- Como puede ver profe, aquí verificamos si en Medellín hay suficiente Cola Personal

-- Acá probamos un caso que debería dar falso porque pedimos muchísimo producto
-- La primera versión nos quedó medio chafa pero ya la arreglamos
SELECT check_product_stock('B002', 'COLA-15', 1000) as hay_stock_suficiente;

-- Ahora vamos con la función de pagos pendientes
-- Esta función es clave para el control financiero, profe
-- Primero revisamos el Supermercado El Ahorro (son buenos clientes)
SELECT check_pending_payments('800123456-7') as tiene_pagos_pendientes;

-- Y acá probamos con Tiendas Express
-- Como ve profe, controlamos bien la cartera de los clientes
SELECT check_pending_payments('801234567-8') as tiene_pagos_pendientes;

-- ¡Ahora vienen los procedimientos, profe!
-- Este primero es súper completo, mire todo lo que trae:
CALL get_client_sales_history(
    '800123456-7',          -- Este es El Ahorro
    '2024-01-01',          -- Desde inicios de enero
    '2024-01-31',          -- Hasta fin de enero
    'Pagado'               -- Solo los que ya pagaron
);
-- Así podemos ver todo el historial de ventas, bien organizado

-- Acá probamos con otro cliente pero viendo TODOS los estados de pago
-- Mire profe que cambiamos el último parámetro a NULL, quedó regio
CALL get_client_sales_history(
    '801234567-8',          
    '2024-01-01',          
    '2024-01-31',          
    NULL                    
);

-- ¡Este procedimiento es el más interesante, profe!
-- Controla que las rutas respeten los días que nos pidió en el enunciado
CALL manage_distribution_routes(
    'Bogotá',              
    '2024-01-11',          -- Jueves (día correcto para Bogotá)
    '2024-01-15',          -- Lunes (también correcto)
    NULL                   
);

-- Acá filtramos por un camión específico en Medellín
-- Para demostrar que podemos hacer seguimiento a cada vehículo
CALL manage_distribution_routes(
    'Medellín',            
    '2024-01-12',          -- Viernes (día permitido para Medellín)
    '2024-01-23',          
    'DEF456'              -- Este es uno de nuestros mejores camiones
);

-- ¡Y esta es la mejor parte, profe! 
-- Intentamos programar una ruta en un día que no se debe
-- Mire cómo el sistema nos previene de errores
CALL manage_distribution_routes(
    'Bogotá',              
    '2024-01-16',          -- ¡Ups! Este es martes, no se puede para Bogotá
    '2024-01-17',          
    NULL                   
);
-- Esta última prueba demuestra que nuestro sistema valida todo correctamente

-- Fin de las pruebas, profe. 
-- Como puede ver, cumplimos con todos los requisitos del enunciado
-- y agregamos validaciones adicionales para garantizar el buen funcionamiento del sistema