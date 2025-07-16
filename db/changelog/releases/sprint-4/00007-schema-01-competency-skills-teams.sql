--liquibase formatted sql

--changeset capacibk-competencies team:create_competencies_teams_skills dbms:postgresql
--comment: Crear tabla competencies_teams_skills con sus constraints

drop table if exists competencies_teams_skills$aud;
drop table if exists competencies_teams_skills;
drop sequence if exists sq_audit_competencies_teams_skills;
drop sequence if exists sq_competencies_teams_skills;

CREATE SEQUENCE sq_competencies_teams_skills
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

       CREATE SEQUENCE sq_audit_competencies_teams_skills
        INCREMENT 1
        START 1
        MINVALUE 1
        MAXVALUE 9999999999
        CACHE 1;


CREATE TABLE competencies_teams_skills (
    id             NUMERIC(10, 0) NOT NULL DEFAULT nextval('sq_competencies_teams_skills'::regclass),
    competency_id  NUMERIC(10, 0) NOT NULL,
    team_id        NUMERIC(10, 0) NOT NULL,
    skill_id       NUMERIC(10, 0) NOT NULL,
    year           NUMERIC(4, 0)  NOT NULL,
    expected       NUMERIC(1, 0)  NOT NULL CHECK (expected BETWEEN 0 AND 4),
    selected       BOOLEAN         NULL DEFAULT FALSE,
    CONSTRAINT competencies_teams_skills_pkey PRIMARY KEY (id),
    CONSTRAINT competencies_teams_skills_unique UNIQUE (competency_id, team_id, skill_id, year),
    CONSTRAINT competencies_teams_skills_competency_fk FOREIGN KEY (competency_id) REFERENCES competencies (id),
    CONSTRAINT competencies_teams_skills_team_fk FOREIGN KEY (team_id) REFERENCES teams (id),
    CONSTRAINT competencies_teams_skills_skill_fk FOREIGN KEY (skill_id) REFERENCES skills (id)
);

-- Comentarios para la tabla y columnas
COMMENT ON TABLE competencies_teams_skills IS 'Tabla relacional de competencias, equipos y habilidades con nivel esperado';

CREATE TABLE competencies_teams_skills$AUD
(
    AUDIT_ID     numeric(10, 0)              NOT NULL DEFAULT nextval('sq_audit_competencies_teams_skills'::regclass),
    REQUEST_ID   character varying(36)       NOT NULL,
    PAIR_KEY     character varying(36)       NOT NULL,
    AUDIT_ACTION character varying(10)       NOT NULL,
    AUDIT_STEP   character varying(10)       NOT NULL,
    AUDIT_USER   character varying(10)       NOT NULL,
    AUDIT_DATE   timestamp without time zone NOT NULL,
    CONSTRAINT comp_skill_teams_aud_pkey PRIMARY KEY (AUDIT_ID)
);
