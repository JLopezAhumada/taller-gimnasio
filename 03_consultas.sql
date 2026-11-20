-- Parte F

-- F1
SELECT nombre, dia_semana, hora
FROM clases
WHERE entrenador_id = 1;

-- F2
SELECT id, socio_id, fecha_fin
FROM membresias
WHERE fecha_fin < CURRENT_DATE;

-- F3
SELECT nombre, precio
FROM planes
WHERE precio > 100000;

-- F4
SELECT clase_id, fecha_inscripcion
FROM inscripciones
WHERE socio_id = 1;
