-- Taller gimnasio Cuerpo Activo · Parte K (datos)
-- Los socios nuevos se buscan por documento, no por id

INSERT INTO socios (documento, nombre, telefono, correo, acepta_whatsapp) VALUES
    ('1007345981', 'Kevin Ariza Cassiani',   '302 158 7740', NULL,                     true),
    ('1045672230', 'Natalia Sarmiento Coll', '317 864 2215', 'natisarmiento@gmail.com', false);

INSERT INTO membresias (fecha_inicio, fecha_fin, valor_pagado, socio_id, plan_id) VALUES
    ('2026-06-01', '2026-07-01',  90000, 1, 1),
    ('2026-05-10', '2026-06-10',  90000, 3, 1),
    ('2026-09-05', '2026-10-05',  85000, 4, 1),
    ('2026-10-03', '2026-11-03',  90000, 5, 1);

INSERT INTO membresias (fecha_inicio, fecha_fin, valor_pagado, socio_id, plan_id)
SELECT '2026-11-10', '2026-12-10', 90000, id, 1 FROM socios WHERE documento = '1007345981';

INSERT INTO membresias (fecha_inicio, fecha_fin, valor_pagado, socio_id, plan_id)
SELECT '2026-11-15', '2027-02-15', 216000, id, 2 FROM socios WHERE documento = '1045672230';

-- Spinning del lunes (clase 1) pasa de 3 a 5 inscritos, cupo 20
INSERT INTO inscripciones (fecha_inscripcion, socio_id, clase_id)
SELECT '2026-11-10', id, 1 FROM socios WHERE documento = '1007345981';

INSERT INTO inscripciones (fecha_inscripcion, socio_id, clase_id)
SELECT '2026-11-15', id, 1 FROM socios WHERE documento = '1045672230';

INSERT INTO inscripciones (fecha_inscripcion, socio_id, clase_id)
SELECT '2026-11-15', id, 2 FROM socios WHERE documento = '1045672230';

INSERT INTO inscripciones (fecha_inscripcion, socio_id, clase_id) VALUES
    ('2026-10-08', 4, 5);
