-- Taller gimnasio Cuerpo Activo · Parte G (estructura)

ALTER TABLE clases
    ADD COLUMN estado VARCHAR(10) NOT NULL DEFAULT 'activa';

ALTER TABLE clases
    ADD CONSTRAINT clases_estado_check CHECK (estado IN ('activa', 'suspendida'));
