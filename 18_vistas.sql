-- Parte T

-- T1
CREATE VIEW socios_vencidos AS
SELECT s.nombre, s.telefono, s.acepta_whatsapp, MAX(m.fecha_fin) AS vencio
FROM socios s
JOIN membresias m ON m.socio_id = s.id
GROUP BY s.id, s.nombre, s.telefono, s.acepta_whatsapp
HAVING MAX(m.fecha_fin) < CURRENT_DATE;

-- T2
CREATE VIEW ocupacion_clases AS
SELECT c.id, c.nombre, c.dia_semana, c.hora, c.cupo, COUNT(i.id) AS inscritos
FROM clases c
LEFT JOIN inscripciones i ON i.clase_id = c.id
WHERE c.estado = 'activa'
GROUP BY c.id, c.nombre, c.dia_semana, c.hora, c.cupo;

-- T3
SELECT nombre, telefono, vencio
FROM socios_vencidos
WHERE acepta_whatsapp = true;

SELECT nombre, dia_semana, hora, cupo - inscritos AS cupos_disponibles
FROM ocupacion_clases
ORDER BY cupos_disponibles, nombre;

-- T4: Natalia se inscribe en Pilates
INSERT INTO inscripciones (fecha_inscripcion, socio_id, clase_id)
VALUES ('2026-11-20',
        (SELECT id FROM socios WHERE documento = '1045672230'),
        (SELECT id FROM clases WHERE nombre = 'Pilates'));

SELECT * FROM ocupacion_clases ORDER BY inscritos DESC, nombre;
