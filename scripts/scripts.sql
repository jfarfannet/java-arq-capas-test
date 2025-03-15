-- Tabla de Clientes
CREATE TABLE IF NOT EXISTS clientes (
                                        id SERIAL PRIMARY KEY,
                                        nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(255),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- Tabla de Productos
CREATE TABLE IF NOT EXISTS productos (
                                         id SERIAL PRIMARY KEY,
                                         nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    stock INTEGER NOT NULL DEFAULT 0,
    categoria VARCHAR(50),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- Insertar clientes de prueba
INSERT INTO clientes (nombre, apellido, email, telefono, direccion)
VALUES
    ('Juan', 'Pérez', 'juan.perez@example.com', '555-1234', 'Calle Principal 123'),
    ('María', 'González', 'maria.gonzalez@example.com', '555-5678', 'Avenida Central 456');

-- Insertar productos de prueba
INSERT INTO productos (nombre, descripcion, precio, stock, categoria)
VALUES
    ('Laptop HP', 'Laptop HP 15 pulgadas 8GB RAM', 899.99, 10, 'Electrónica'),
    ('Monitor Dell', 'Monitor Dell 24 pulgadas Full HD', 199.99, 15, 'Electrónica'),
    ('Teclado Logitech', 'Teclado mecánico gaming RGB', 79.99, 20, 'Accesorios');