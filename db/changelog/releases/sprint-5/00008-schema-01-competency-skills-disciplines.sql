--liquibase formatted sql

--changeset capacibk-competencies team:create_competencies_disciplines_skills dbms:postgresql
--comment: Crear tabla competencies_disciplines_skills con sus constraints

drop table if exists competencies_disciplines_skills$aud;
drop table if exists competencies_disciplines_skills;
drop sequence if exists sq_audit_competencies_disciplines_skills;
drop sequence if exists sq_competencies_disciplines_skills;

CREATE SEQUENCE sq_competencies_disciplines_skills
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE SEQUENCE sq_audit_competencies_disciplines_skills
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;


CREATE TABLE competencies_disciplines_skills
(
    id            NUMERIC(10, 0) NOT NULL DEFAULT nextval('sq_competencies_disciplines_skills'::regclass),
    competency_id NUMERIC(10, 0) NOT NULL,
    discipline_id NUMERIC(10, 0) NOT NULL,
    skill_id      NUMERIC(10, 0) NOT NULL,
    year          NUMERIC(4, 0)  NOT NULL,
    expected      NUMERIC(1, 0)  NOT NULL CHECK (expected BETWEEN 0 AND 4),
    selected      BOOLEAN        NULL     DEFAULT FALSE,
    CONSTRAINT competencies_disciplines_skills_pkey PRIMARY KEY (id),
    CONSTRAINT competencies_disciplines_skills_unique UNIQUE (competency_id, discipline_id, skill_id, year),
    CONSTRAINT competencies_disciplines_skills_competency_fk FOREIGN KEY (competency_id) REFERENCES competencies (id),
    CONSTRAINT competencies_disciplines_skills_team_fk FOREIGN KEY (discipline_id) REFERENCES teams (id),
    CONSTRAINT competencies_disciplines_skills_skill_fk FOREIGN KEY (skill_id) REFERENCES skills (id)
);

-- Comentarios para la tabla y columnas
COMMENT ON TABLE competencies_disciplines_skills IS 'Tabla relacional de competencias, equipos y habilidades con nivel esperado';

CREATE TABLE competencies_disciplines_skills$AUD
(
    AUDIT_ID     numeric(10, 0)              NOT NULL DEFAULT nextval('sq_audit_competencies_disciplines_skills'::regclass),
    REQUEST_ID   character varying(36)       NOT NULL,
    PAIR_KEY     character varying(36)       NOT NULL,
    AUDIT_ACTION character varying(10)       NOT NULL,
    AUDIT_STEP   character varying(10)       NOT NULL,
    AUDIT_USER   character varying(10)       NOT NULL,
    AUDIT_DATE   timestamp without time zone NOT NULL,
    CONSTRAINT comp_skill_disciplines_aud_pkey PRIMARY KEY (AUDIT_ID)
);
