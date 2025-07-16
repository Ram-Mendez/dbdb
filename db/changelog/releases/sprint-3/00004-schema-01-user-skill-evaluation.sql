--liquibase formatted sql

--changeset capacibk-skills team:create_user_skill_evaluation dbms:postgresql
--comment: Tabla para almacenar la autoevaluación de habilidades por usuario

DROP SEQUENCE IF EXISTS sq_user_skill_evaluation CASCADE;
DROP TABLE IF EXISTS user_skill_evaluation CASCADE;
DROP SEQUENCE IF EXISTS sq_audit_user_skill_evaluation CASCADE;
DROP TABLE IF EXISTS user_skill_evaluation$AUD CASCADE;

CREATE SEQUENCE sq_user_skill_evaluation
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE TABLE user_skill_evaluation
(
    id             NUMERIC(10, 0) NOT NULL DEFAULT nextval('sq_user_skill_evaluation'::regclass),
    user_id        NUMERIC(10, 0) NOT NULL,
    competency_id  NUMERIC(10, 0) NOT NULL,
    skill_id       NUMERIC(10, 0) NOT NULL,
    score          NUMERIC(1, 0)  NOT NULL CHECK (score BETWEEN 0 AND 4),
    previous_score NUMERIC(1, 0)           DEFAULT NULL CHECK (previous_score BETWEEN 0 AND 4),
    expected_value NUMERIC(1, 0)  NOT NULL DEFAULT 0 CHECK (expected_value BETWEEN 0 AND 4),
    year           NUMERIC(4, 0)  NOT NULL,

    CONSTRAINT user_skill_eval_pk PRIMARY KEY (id),
    CONSTRAINT user_skill_eval_user_fk FOREIGN KEY (user_id) REFERENCES core_users (user_id),
    CONSTRAINT user_skill_eval_skill_fk FOREIGN KEY (skill_id) REFERENCES skills (id),
    CONSTRAINT user_skill_eval_competency_fk FOREIGN KEY (competency_id) REFERENCES competencies (id),
    CONSTRAINT user_skill_eval_unique UNIQUE (user_id, competency_id, skill_id, year)
);

COMMENT
ON TABLE user_skill_evaluation IS 'Tabla de autoevaluaciones de habilidades por usuario';

CREATE SEQUENCE sq_audit_user_skill_evaluation
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE TABLE user_skill_evaluation$AUD
(
    AUDIT_ID     NUMERIC(10, 0)        NOT NULL DEFAULT nextval('sq_audit_user_skill_evaluation'::regclass),
    REQUEST_ID   CHARACTER VARYING(36) NOT NULL,
    PAIR_KEY     CHARACTER VARYING(36) NOT NULL,
    AUDIT_ACTION CHARACTER VARYING(10) NOT NULL,
    AUDIT_STEP   CHARACTER VARYING(10) NOT NULL,
    AUDIT_USER   CHARACTER VARYING(10) NOT NULL,
    AUDIT_DATE   TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    CONSTRAINT user_skill_evaluation_aud_pkey PRIMARY KEY (AUDIT_ID)
);

--rollback DROP TABLE user_skill_evaluation$AUD;
--rollback DROP SEQUENCE sq_audit_user_skill_evaluation;
--rollback DROP TABLE user_skill_evaluation;
--rollback DROP SEQUENCE sq_user_skill_evaluation;


--changeset capacibk-skills team:remove_not_null_expected_value dbms:postgresql
--comment: Eliminar restricción NOT NULL de la columna expected_value en user_skill_evaluation

ALTER TABLE user_skill_evaluation
    ALTER COLUMN expected_value DROP NOT NULL;

--rollback ALTER TABLE user_skill_evaluation
--rollback ALTER COLUMN expected_value SET NOT NULL;


--changeset capacibk-skills team:remove_unique_constraint dbms:postgresql
--comment: Eliminar restricción UNIQUE en user_skill_evaluation

ALTER TABLE user_skill_evaluation
DROP CONSTRAINT user_skill_eval_unique;

--rollback ALTER TABLE user_skill_evaluation
--rollback ADD CONSTRAINT user_skill_eval_unique UNIQUE (user_id, competency_id, skill_id, year);


--changeset capacibk-skills team:add_user_skill_eval_unique_constraint_v2 dbms:postgresql
--comment: Añadir constraint única (user_id, competency_id, skill_id, year)

ALTER TABLE user_skill_evaluation
    ADD CONSTRAINT user_skill_eval_unique UNIQUE (user_id, competency_id, skill_id, year);

--rollback ALTER TABLE user_skill_evaluation
--rollback DROP CONSTRAINT user_skill_eval_unique;

--changeset capacibk-skills team:remove_unique_constraint-v2 dbms:postgresql
--comment: Eliminar restricción UNIQUE en user_skill_evaluation

ALTER TABLE user_skill_evaluation
DROP CONSTRAINT user_skill_eval_unique;


--changeset capacibk-skills team:remove isEvaluated column dbms:postgresql
--comment: Eliminar columna isEvaluated de user_skill_evaluation
ALTER TABLE user_skill_evaluation
    DROP COLUMN IF EXISTS isEvaluated;
