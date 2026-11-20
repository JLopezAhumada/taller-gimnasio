-- Parte P

-- P1
SELECT e.nombre, e.especialidad
FROM entrenadores e
LEFT JOIN clases c ON c.entrenador_id = e.id
WHERE c.id IS NULL;

-- P2
SELECT s.nombre, s.telefono
FROM socios s
LEFT JOIN inscripciones i ON i.socio_id = s.id
WHERE i.id IS NULL;

-- P3
SELECT s.nombre, f.peso_kg, f.estatura_cm
FROM socios s
LEFT JOIN fichas_medicas f ON f.socio_id = s.id
ORDER BY s.id;
