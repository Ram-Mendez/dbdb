--liquibase formatted sql

--changeset cappfdmd-experience team:experience_schema dbms:postgresql
--comment: Create table experience
DROP TABLE IF EXISTS experience;
DROP SEQUENCE IF EXISTS sq_experience;

CREATE SEQUENCE sq_experience
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE TABLE experience (
    id numeric(10,0) NOT NULL DEFAULT nextval('sq_experience'::regclass),
    user_id numeric(10,0) NOT NULL,
    competency_id numeric(10,0) NOT NULL,
    skill_id numeric(10,0) NOT NULL,
    formative_action_id numeric(10,0) NOT NULL,
    year numeric(4,0) NOT NULL,
    action_70 text NOT NULL,
    CONSTRAINT experience_pkey PRIMARY KEY (id),
    CONSTRAINT experience_unique_key UNIQUE (user_id, competency_id, skill_id, formative_action_id, year),
    CONSTRAINT experience_user_fk FOREIGN KEY (user_id) REFERENCES core_users (user_id),
    CONSTRAINT experience_competency_fk FOREIGN KEY (competency_id) REFERENCES competencies (id),
    CONSTRAINT experience_skill_fk FOREIGN KEY (skill_id) REFERENCES skills (id),
    CONSTRAINT experience_formative_action_fk FOREIGN KEY (formative_action_id) REFERENCES formative_actions (id)
);

COMMENT ON TABLE experience IS 'Tabla de experiencia donde guardaremos la experiencia dia a dia de las acciones formativas indicadas de un usuario';

--rollback DROP TABLE experience;
--rollback DROP SEQUENCE sq_experience;

--changeset cappfdmd-experience team:experience_audit_schema dbms:postgresql
--comment: Tabla de auditoría para la tabla experience

CREATE SEQUENCE sq_audit_experience
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE TABLE experience$AUD
(
    AUDIT_ID     NUMERIC(10, 0)        NOT NULL DEFAULT nextval('sq_audit_experience'::regclass),
    REQUEST_ID   CHARACTER VARYING(36) NOT NULL,
    PAIR_KEY     CHARACTER VARYING(36) NOT NULL,
    AUDIT_ACTION CHARACTER VARYING(10) NOT NULL,
    AUDIT_STEP   CHARACTER VARYING(10) NOT NULL,
    AUDIT_USER   CHARACTER VARYING(10) NOT NULL,
    AUDIT_DATE   TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    CONSTRAINT experience_aud_pkey PRIMARY KEY (AUDIT_ID)
);

--rollback DROP TABLE experience$AUD;
--rollback DROP SEQUENCE sq_audit_experience;

--changeset cappfdmd-experience team:make_action_70_nullable dbms:postgresql
--comment: Modificar la columna action_70 para permitir valores nulos
ALTER TABLE experience
    ALTER COLUMN action_70 DROP NOT NULL;