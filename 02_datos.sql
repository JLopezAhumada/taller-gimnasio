-- Taller gimnasio Cuerpo Activo · Parte E

INSERT INTO planes (nombre, duracion_meses, precio) VALUES
    ('Mensual',     1,  90000),
    ('Trimestral',  3, 240000),
    ('Anual',      12, 850000);

INSERT INTO socios (documento, nombre, telefono, correo) VALUES
    ('1043128755', 'Laura Mendoza Rojas',      '300 482 1190', 'laura.mendoza@gmail.com'),
    ('1129574302', 'Andres Felipe Ortiz',      '315 207 6634', 'andresf.ortiz@hotmail.com'),
    ('1001876240', 'Valentina Charris Pua',    '301 774 3029', 'vale.charris@gmail.com'),
    ('72245619',   'Jorge Eliecer Polo',       '320 615 8847', NULL),
    ('1048290117', 'Mariana De la Hoz Gil',    '318 330 4512', 'marianadlh@outlook.com'),
    ('1140823566', 'Sebastian Vergara Molina', '304 921 0075', 'sebasvergara@gmail.com'),
    ('32876105',   'Paola Cantillo Barrios',   '312 448 2963', 'pcantillo@yahoo.com');

INSERT INTO fichas_medicas (peso_kg, estatura_cm, lesiones, socio_id) VALUES
    (61.5, 164, NULL,                                   1),
    (84.0, 178, 'Tendinitis en el hombro derecho',      2),
    (57.2, 160, NULL,                                   3),
    (69.8, 171, 'Operada de menisco, rodilla izquierda', 5);

INSERT INTO entrenadores (nombre, especialidad, correo) VALUES
    ('Camilo Restrepo',  'spinning y funcional', 'camilo.restrepo@cuerpoactivo.co'),
    ('Daniela Pertuz',   'yoga',                 'daniela.pertuz@cuerpoactivo.co'),
    ('Ricardo Barrios',  'pesas',                'ricardo.barrios@cuerpoactivo.co');

INSERT INTO clases (nombre, dia_semana, hora, cupo, entrenador_id) VALUES
    ('Spinning',         'lunes',     '18:00', 20, 1),
    ('Yoga',             'martes',    '07:00', 15, 2),
    ('Funcional',        'miercoles', '19:00',  3, 1),
    ('Yoga',             'jueves',    '18:30', 15, 2),
    ('SPINNING Express', 'jueves',    '06:00', 12, 1);

-- la 6 y la 7 son la misma membresia: en recepcion la registraron dos veces
INSERT INTO membresias (fecha_inicio, fecha_fin, socio_id, plan_id) VALUES
    ('2026-08-01', '2026-09-01', 1, 1),
    ('2026-09-01', '2026-12-01', 1, 2),
    ('2026-02-15', '2027-02-15', 2, 3),
    ('2026-09-10', '2026-10-10', 3, 1),
    ('2026-10-05', '2027-01-05', 4, 2),
    ('2026-11-03', '2026-12-03', 5, 1),
    ('2026-11-03', '2026-12-03', 5, 1),
    ('2026-07-20', '2026-10-20', 6, 2),
    ('2026-01-10', '2027-01-10', 7, 3);

-- Funcional (clase 3) queda con el cupo lleno: 3 de 3
-- Sebastian (socio 6) no se inscribe a nada
INSERT INTO inscripciones (fecha_inscripcion, socio_id, clase_id) VALUES
    ('2026-08-02', 1, 1),
    ('2026-08-02', 1, 3),
    ('2026-09-01', 1, 4),
    ('2026-02-16', 2, 1),
    ('2026-03-04', 2, 3),
    ('2026-09-11', 3, 2),
    ('2026-09-11', 3, 4),
    ('2026-10-06', 4, 3),
    ('2026-11-04', 5, 2),
    ('2026-01-12', 7, 1),
    ('2026-01-12', 7, 5);
