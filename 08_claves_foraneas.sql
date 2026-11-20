-- Parte J
-- Las otras cuatro claves se quedan protegiendo (NO ACTION)

ALTER TABLE fichas_medicas DROP CONSTRAINT fichas_medicas_socio_id_fkey;
ALTER TABLE fichas_medicas
    ADD CONSTRAINT fichas_medicas_socio_id_fkey
    FOREIGN KEY (socio_id) REFERENCES socios (id) ON DELETE CASCADE;

ALTER TABLE inscripciones DROP CONSTRAINT inscripciones_socio_id_fkey;
ALTER TABLE inscripciones
    ADD CONSTRAINT inscripciones_socio_id_fkey
    FOREIGN KEY (socio_id) REFERENCES socios (id) ON DELETE CASCADE;

SELECT constraint_name, delete_rule
FROM information_schema.referential_constraints
ORDER BY constraint_name;
