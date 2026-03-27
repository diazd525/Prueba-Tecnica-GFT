-- Crear Tablas-----
CREATE TABLE Cliente (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    apellidos VARCHAR(40) NOT NULL,
    ciudad VARCHAR(40) NOT NULL
);

CREATE TABLE Sucursal (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    ciudad VARCHAR(40) NOT NULL
);

CREATE TABLE Producto (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    tipoProducto VARCHAR(40) NOT NULL
);

CREATE TABLE Inscripcion (
    idProducto INT,
    idCliente INT,
    FOREIGN KEY (idProducto) REFERENCES Producto(id),
    FOREIGN KEY (idCliente) REFERENCES Cliente(id)
);

CREATE TABLE Disponibilidad (
    idSucursal INT,
    idProducto INT,
    PRIMARY KEY (idSucursal, idProducto),
    FOREIGN KEY (idSucursal) REFERENCES Sucursal(id),
    FOREIGN KEY (idProducto) REFERENCES Producto(id)
);

CREATE TABLE Visitan (
    idSucursal INT,
    idCliente INT,
    fechaVisita DATE NOT NULL,
    PRIMARY KEY (idSucursal, idCliente, fechaVisita),
    FOREIGN KEY (idSucursal) REFERENCES Sucursal(id),
    FOREIGN KEY (idCliente) REFERENCES Cliente(id)
);

----- Insertar Datos ---------------

INSERT INTO Cliente (nombre, apellidos, ciudad) VALUES
('Juan', 'Perez', 'Medellín'),
('Ana', 'Gomez', 'Bogotá'),
('Luis', 'Martinez', 'Cali');

INSERT INTO Sucursal (nombre, ciudad) VALUES
('Sucursal Norte', 'Medellín'),
('Sucursal Centro', 'Bogotá');

INSERT INTO Producto (nombre, tipoProducto) VALUES
('Membresía Gold', 'Membresía'),
('Yoga', 'Clase'),
('Spa', 'Servicio');

INSERT INTO Inscripcion VALUES
(1,1),(2,1),(3,1),
(1,2),(2,2);

INSERT INTO Disponibilidad VALUES
(1,1),(1,2),(2,2),(2,3);

INSERT INTO Visitan VALUES
(1,1,CURRENT_DATE - INTERVAL '10 days'),
(1,2,CURRENT_DATE - INTERVAL '20 days'),
(2,1,CURRENT_DATE - INTERVAL '5 days');



----- Query 1-----
SELECT c.nombre, c.apellidos
FROM Cliente c
JOIN Visitan v ON c.id = v.idCliente
JOIN Sucursal s ON s.id = v.idSucursal
WHERE s.nombre = 'Sucursal Norte'
AND v.fechaVisita >= CURRENT_DATE - INTERVAL '1 month';

----- Query 2-----
SELECT s.nombre, COUNT(DISTINCT v.idCliente) AS total_clientes
FROM Sucursal s
LEFT JOIN Visitan v ON s.id = v.idSucursal
GROUP BY s.nombre
ORDER BY total_clientes DESC;


----- Query 3-----
SELECT p.nombre
FROM Producto p
JOIN Disponibilidad d ON p.id = d.idProducto
JOIN Sucursal s ON s.id = d.idSucursal
WHERE s.ciudad = 'Medellín'

EXCEPT

SELECT p.nombre
FROM Producto p
JOIN Disponibilidad d ON p.id = d.idProducto
JOIN Sucursal s ON s.id = d.idSucursal
WHERE s.ciudad = 'Bogotá';

--------- Query 4-----------

SELECT c.nombre, c.apellidos, COUNT(i.idProducto) AS total_productos
FROM Cliente c
JOIN Inscripcion i ON c.id = i.idCliente
GROUP BY c.id
HAVING COUNT(i.idProducto) > 2;

-------Query 5--------------------

SELECT 
    c.nombre,
    c.apellidos,
    COALESCE(MAX(v.fechaVisita)::TEXT, 'Sin visitas') AS ultima_visita,
    COALESCE(s.nombre, 'Sin visitas') AS sucursal
FROM Cliente c
LEFT JOIN Visitan v ON c.id = v.idCliente
LEFT JOIN Sucursal s ON s.id = v.idSucursal
GROUP BY c.id, s.nombre;

-------Eliminar datos------------------

DELETE FROM visitan;
DELETE FROM inscripcion;
DELETE FROM disponibilidad;

DELETE FROM producto;
DELETE FROM sucursal;
DELETE FROM cliente;