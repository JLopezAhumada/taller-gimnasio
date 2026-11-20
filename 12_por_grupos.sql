-- Taller gimnasio Cuerpo Activo · Parte M

-- M1
SELECT plan_id, COUNT(*) AS vendidas
FROM membresias
GROUP BY plan_id
ORDER BY vendidas DESC;

-- M2
SELECT clase_id, COUNT(*) AS inscritos
FROM inscripciones
GROUP BY clase_id
ORDER BY clase_id;

-- M3
SELECT clase_id, COUNT(*) AS inscritos
FROM inscripciones
GROUP BY clase_id
HAVING COUNT(*) >= 4
ORDER BY inscritos DESC;

-- M4
SELECT socio_id, COUNT(*) AS membresias
FROM membresias
GROUP BY socio_id
HAVING COUNT(*) >= 2
ORDER BY membresias DESC, socio_id;

-- M5
SELECT socio_id, MAX(fecha_fin) AS ultima_fecha_fin
FROM membresias
GROUP BY socio_id
HAVING MAX(fecha_fin) < CURRENT_DATE
ORDER BY ultima_fecha_fin;

-- M6
SELECT plan_id, SUM(valor_pagado) AS total
FROM membresias
GROUP BY plan_id
ORDER BY total DESC;
