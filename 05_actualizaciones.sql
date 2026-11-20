-- Parte G (datos)

-- Jorge Polo cambio de numero
SELECT id, nombre, telefono FROM socios WHERE id = 4;
UPDATE socios SET telefono = '323 590 1148' WHERE id = 4;

-- Daniela sale a vacaciones y se suspende el yoga de los jueves
SELECT id, nombre, dia_semana, estado FROM clases WHERE id = 4;
UPDATE clases SET estado = 'suspendida' WHERE id = 4;

-- la membresia 7 es la copia de la 6
SELECT * FROM membresias WHERE id = 7;
DELETE FROM membresias WHERE id = 7;
