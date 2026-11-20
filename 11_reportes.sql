-- Taller gimnasio Cuerpo Activo · Parte L

-- L1
SELECT COUNT(*) AS socios, COUNT(correo) AS con_correo
FROM socios;

-- L2
SELECT SUM(valor_pagado) AS total_noviembre
FROM membresias
WHERE fecha_inicio >= '2026-11-01' AND fecha_inicio < '2026-12-01';

-- L3
SELECT MIN(valor_pagado) AS menor,
       MAX(valor_pagado) AS mayor,
       ROUND(AVG(valor_pagado)) AS promedio
FROM membresias;

-- L4
SELECT COUNT(*) AS membresias, COUNT(DISTINCT socio_id) AS socios
FROM membresias;
