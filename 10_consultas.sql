-- Taller gimnasio Cuerpo Activo · Parte K (consultas)

-- K1
SELECT id, socio_id, plan_id, fecha_inicio, fecha_fin
FROM membresias
WHERE fecha_inicio >= '2026-09-01' AND fecha_inicio < '2026-11-01'
ORDER BY fecha_inicio;

-- K2
SELECT id, nombre, dia_semana, hora
FROM clases
WHERE nombre ILIKE '%spinning%';

-- K3
SELECT id, nombre, telefono
FROM socios
WHERE correo IS NULL;

-- K4 con parentesis
SELECT id, nombre, dia_semana, estado
FROM clases
WHERE estado = 'activa' AND (dia_semana = 'lunes' OR dia_semana = 'jueves');

-- K4 sin parentesis
SELECT id, nombre, dia_semana, estado
FROM clases
WHERE estado = 'activa' AND dia_semana = 'lunes' OR dia_semana = 'jueves';

-- K5
SELECT id AS membresia, socio_id AS socio, valor_pagado AS pagado
FROM membresias
ORDER BY valor_pagado DESC, id
LIMIT 3;

-- K6
SELECT DISTINCT dia_semana
FROM clases
ORDER BY dia_semana;
