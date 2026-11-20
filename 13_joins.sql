-- Parte O

-- O1
SELECT m.id, s.nombre AS socio, p.nombre AS plan,
       m.fecha_inicio, m.fecha_fin, m.valor_pagado
FROM membresias m
JOIN socios s ON m.socio_id = s.id
JOIN planes p ON m.plan_id = p.id
ORDER BY m.fecha_inicio, m.id;

-- O2
SELECT c.nombre AS clase, c.dia_semana, c.hora, e.nombre AS entrenador
FROM clases c
JOIN entrenadores e ON c.entrenador_id = e.id
WHERE c.estado = 'activa'
ORDER BY c.dia_semana, c.hora;
