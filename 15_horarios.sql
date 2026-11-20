-- Taller gimnasio Cuerpo Activo · Parte Q

-- Q1: horario de Laura (socio 1)
-- socios -> inscripciones -> clases -> entrenadores
SELECT s.nombre AS socio, c.nombre AS clase, c.dia_semana, c.hora, e.nombre AS entrenador
FROM socios s
JOIN inscripciones i ON i.socio_id = s.id
JOIN clases c        ON i.clase_id = c.id
JOIN entrenadores e  ON c.entrenador_id = e.id
WHERE s.id = 1 AND c.estado = 'activa'
ORDER BY c.dia_semana, c.hora;

-- Q2: inscritos en el yoga del jueves, que esta suspendido (clase 4)
SELECT s.nombre, s.telefono, s.acepta_whatsapp
FROM inscripciones i
JOIN socios s ON i.socio_id = s.id
WHERE i.clase_id = 4;
