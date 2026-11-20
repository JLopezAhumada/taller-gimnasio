-- Taller gimnasio Cuerpo Activo · Parte S

-- S1
SELECT m.id, s.nombre, m.valor_pagado
FROM membresias m
JOIN socios s ON m.socio_id = s.id
WHERE m.valor_pagado > (SELECT AVG(valor_pagado) FROM membresias)
ORDER BY m.valor_pagado DESC;

-- S2: socios en alguna clase de Camilo (entrenador 1)
SELECT nombre, telefono
FROM socios
WHERE id IN (
    SELECT i.socio_id
    FROM inscripciones i
    JOIN clases c ON i.clase_id = c.id
    WHERE c.entrenador_id = 1
)
ORDER BY nombre;

-- S3
SELECT nombre, telefono
FROM socios
WHERE id NOT IN (SELECT socio_id FROM inscripciones);
