-- Taller gimnasio Cuerpo Activo · Parte I

ALTER TABLE membresias ALTER COLUMN valor_pagado SET NOT NULL;

ALTER TABLE membresias
    ADD CONSTRAINT membresias_valor_pagado_check CHECK (valor_pagado > 0);

ALTER TABLE membresias
    ADD CONSTRAINT membresias_fecha_fin_check CHECK (fecha_fin > fecha_inicio);

ALTER TABLE clases
    ADD CONSTRAINT clases_entrenador_id_dia_semana_hora_key UNIQUE (entrenador_id, dia_semana, hora);
