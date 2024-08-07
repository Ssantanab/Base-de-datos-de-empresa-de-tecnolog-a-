-- Crear tabla Empleados
CREATE TABLE Empleados (
    empleado_id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    posicion VARCHAR(50),
    email VARCHAR(100),
    telefono VARCHAR(20)
);

-- Insertar datos en la tabla Empleados
INSERT INTO Empleados (empleado_id, nombre, apellido, posicion, email, telefono) VALUES
(1, 'Ana', 'Gómez', 'Desarrolladora', 'ana.gomez@technova.com', '123-456-7890'),
(2, 'Luis', 'Martínez', 'Gerente de Proyectos', 'luis.martinez@technova.com', '234-567-8901'),
(3, 'Elena', 'Pérez', 'Consultora IT', 'elena.perez@technova.com', '345-678-9012'),
(4, 'David', 'García', 'Desarrollador Senior', 'david.garcia@technova.com', '456-789-0123'),
(5, 'María', 'López', 'Especialista en Ciberseguridad', 'maria.lopez@technova.com', '567-890-1234');

-- Crear tabla Clientes
CREATE TABLE Clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(50),
    empresa VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(20),
    proyecto_id INT,
    FOREIGN KEY (proyecto_id) REFERENCES Proyectos(proyecto_id)
);

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (cliente_id, nombre, empresa, email, telefono, proyecto_id) VALUES
(1, 'Carlos', 'InnovaTech', 'carlos@innovatech.com', '345-678-9012', 1),
(2, 'Marta', 'EcoSolutions', 'marta@ecosolutions.com', '456-789-0123', 2),
(3, 'Juan', 'TechSolutions', 'juan@techsolutions.com', '567-890-1234', 3),
(4, 'Laura', 'DataTech', 'laura@datatech.com', '678-901-2345', 4),
(5, 'Pedro', 'InnovaSoft', 'pedro@innovasoft.com', '789-012-3456', 5);

-- Crear tabla Proyectos
CREATE TABLE Proyectos (
    proyecto_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    fecha_inicio DATE,
    fecha_fin DATE,
    empleado_id INT,
    FOREIGN KEY (empleado_id) REFERENCES Empleados(empleado_id)
);

-- Insertar datos en la tabla Proyectos
INSERT INTO Proyectos (proyecto_id, nombre, descripcion, fecha_inicio, fecha_fin, empleado_id) VALUES
(1, 'Proyecto Alpha', 'Desarrollo de software', '2024-01-01', '2024-06-30', 2),
(2, 'Proyecto Beta', 'Implementación de sistema', '2024-02-01', '2024-08-31', 1),
(3, 'Proyecto Gamma', 'Consultoría en IT', '2024-03-01', '2024-09-30', 3),
(4, 'Proyecto Delta', 'Desarrollo de plataforma web', '2024-04-01', '2024-10-31', 4),
(5, 'Proyecto Epsilon', 'Auditoría de ciberseguridad', '2024-05-01', '2024-11-30', 5);

-- Crear tabla Servicios
CREATE TABLE Servicios (
    servicio_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT
);

-- Insertar datos en la tabla Servicios
INSERT INTO Servicios (servicio_id, nombre, descripcion) VALUES
(1, 'Desarrollo de Software', 'Diseño, desarrollo e implementación de soluciones de software personalizadas.'),
(2, 'Consultoría en IT', 'Asesoramiento y consultoría en tecnologías de la información y sistemas de gestión.'),
(3, 'Implementación de Sistemas', 'Instalación, configuración y puesta en marcha de sistemas informáticos.'),
(4, 'Servicios de Ciberseguridad', 'Auditorías, análisis de vulnerabilidades y protección de sistemas y datos.');

-- Crear tabla Asignaciones
CREATE TABLE Asignaciones (
    asignacion_id INT PRIMARY KEY,
    empleado_id INT,
    proyecto_id INT,
    servicio_id INT,
    FOREIGN KEY (empleado_id) REFERENCES Empleados(empleado_id),
    FOREIGN KEY (proyecto_id) REFERENCES Proyectos(proyecto_id),
    FOREIGN KEY (servicio_id) REFERENCES Servicios(servicio_id)
);

-- Insertar datos en la tabla Asignaciones
INSERT INTO Asignaciones (asignacion_id, empleado_id, proyecto_id, servicio_id) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 4),
(6, 1, 2, 1),
(7, 2, 3, 2),
(8, 3, 4, 3),
(9, 4, 5, 4),
(10, 5, 1, 4);