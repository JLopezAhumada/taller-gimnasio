-- Parte R
-- Pilates lo dicta Daniela (entrenadora 2)

INSERT INTO clases (nombre, dia_semana, hora, cupo, entrenador_id)
VALUES ('Pilates', 'viernes', '18:00', 12, 2);

-- R1
SELECT s.nombre, s.telefono, s.acepta_whatsapp, MAX(m.fecha_fin) AS vencio
FROM socios s
JOIN membresias m ON m.socio_id = s.id
GROUP BY s.id, s.nombre, s.telefono, s.acepta_whatsapp
HAVING MAX(m.fecha_fin) < CURRENT_DATE
ORDER BY vencio;

-- R2
SELECT p.nombre AS plan, COUNT(m.id) AS vendidas, SUM(m.valor_pagado) AS total
FROM planes p
LEFT JOIN membresias m ON m.plan_id = p.id
GROUP BY p.id, p.nombre
ORDER BY vendidas DESC;

-- R3
SELECT c.nombre, c.dia_semana, c.cupo, COUNT(i.id) AS inscritos
FROM clases c
LEFT JOIN inscripciones i ON i.clase_id = c.id
WHERE c.estado = 'activa'
GROUP BY c.id, c.nombre, c.dia_semana, c.cupo
ORDER BY inscritos DESC, c.nombre;

-- R4
SELECT c.nombre, c.dia_semana, c.cupo, COUNT(i.id) AS inscritos
FROM clases c
LEFT JOIN inscripciones i ON i.clase_id = c.id
WHERE c.estado = 'activa'
GROUP BY c.id, c.nombre, c.dia_semana, c.cupo
HAVING COUNT(i.id) >= c.cupo;

-- R5: la misma R3 con COUNT(*), para comparar
SELECT c.nombre, c.dia_semana, c.cupo, COUNT(*) AS inscritos
FROM clases c
LEFT JOIN inscripciones i ON i.clase_id = c.id
WHERE c.estado = 'activa'
GROUP BY c.id, c.nombre, c.dia_semana, c.cupo
ORDER BY inscritos DESC, c.nombre;

-- R6: la condicion de activa en el ON en vez del WHERE, para comparar
SELECT c.nombre, c.dia_semana, c.cupo, COUNT(i.id) AS inscritos
FROM clases c
LEFT JOIN inscripciones i ON i.clase_id = c.id AND c.estado = 'activa'
GROUP BY c.id, c.nombre, c.dia_semana, c.cupo
ORDER BY inscritos DESC, c.nombre;
