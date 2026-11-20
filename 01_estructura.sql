-- Taller gimnasio Cuerpo Activo · Parte D
-- Primero, desde la base postgres:
--   CREATE DATABASE gimnasio_cuerpo_activo;
-- Despues, en el Query Tool de gimnasio_cuerpo_activo:
--   SELECT current_database();

CREATE TABLE socios (
    id        SERIAL PRIMARY KEY,
    documento VARCHAR(15)  NOT NULL UNIQUE,
    nombre    VARCHAR(100) NOT NULL,
    telefono  VARCHAR(20)  NOT NULL,
    correo    VARCHAR(120) UNIQUE
);

CREATE TABLE fichas_medicas (
    id          SERIAL PRIMARY KEY,
    peso_kg     NUMERIC(5,1) NOT NULL CHECK (peso_kg > 0),
    estatura_cm INTEGER      NOT NULL CHECK (estatura_cm > 0),
    lesiones    TEXT,
    socio_id    INTEGER NOT NULL UNIQUE REFERENCES socios (id)
);

CREATE TABLE planes (
    id             SERIAL PRIMARY KEY,
    nombre         VARCHAR(50)   NOT NULL UNIQUE,
    duracion_meses INTEGER       NOT NULL CHECK (duracion_meses > 0),
    precio         NUMERIC(10,2) NOT NULL CHECK (precio > 0)
);

CREATE TABLE membresias (
    id           SERIAL PRIMARY KEY,
    fecha_inicio DATE    NOT NULL,
    fecha_fin    DATE    NOT NULL,
    socio_id     INTEGER NOT NULL REFERENCES socios (id),
    plan_id      INTEGER NOT NULL REFERENCES planes (id)
);

CREATE TABLE entrenadores (
    id           SERIAL PRIMARY KEY,
    nombre       VARCHAR(100) NOT NULL,
    especialidad VARCHAR(60)  NOT NULL,
    correo       VARCHAR(120) NOT NULL
);

CREATE TABLE clases (
    id            SERIAL PRIMARY KEY,
    nombre        VARCHAR(60) NOT NULL,
    dia_semana    VARCHAR(10) NOT NULL
                  CHECK (dia_semana IN ('lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo')),
    hora          TIME        NOT NULL,
    cupo          INTEGER     NOT NULL CHECK (cupo > 0),
    entrenador_id INTEGER     NOT NULL REFERENCES entrenadores (id)
);

CREATE TABLE inscripciones (
    id                SERIAL PRIMARY KEY,
    fecha_inscripcion DATE    NOT NULL DEFAULT CURRENT_DATE,
    socio_id          INTEGER NOT NULL REFERENCES socios (id),
    clase_id          INTEGER NOT NULL REFERENCES clases (id),
    UNIQUE (socio_id, clase_id)
);
