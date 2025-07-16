--liquibase formatted sql

--changeset capacibk-competencies team:competencies_schema dbms:postgresql
--comment: Sequence and table competencies with audit table

CREATE SEQUENCE sq_competencies
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE TABLE competencies
(
    id          numeric(10, 0)         NOT NULL DEFAULT nextval('sq_competencies'::regclass),
    name        character varying(100) NOT NULL,
    description character varying(255) NOT NULL,
    CONSTRAINT competencies_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE competencies IS 'Tabla de competencias';

CREATE SEQUENCE sq_audit_competencies
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 99999999999
    CACHE 1;

CREATE TABLE competencies$AUD
(
    AUDIT_ID     numeric(10, 0)              NOT NULL DEFAULT nextval('sq_audit_competencies'::regclass),
    REQUEST_ID   character varying(36)       NOT NULL,
    PAIR_KEY     character varying(36)       NOT NULL,
    AUDIT_ACTION character varying(10)       NOT NULL,
    AUDIT_STEP   character varying(10)       NOT NULL,
    AUDIT_USER   character varying(10)       NOT NULL,
    AUDIT_DATE   timestamp without time zone NOT NULL,
    CONSTRAINT competencies_aud_pkey PRIMARY KEY (AUDIT_ID)
);

--changeset capacibk-competencies team:make_description_nullable dbms:postgresql
--comment: Make the column description in competencies table nullable

ALTER TABLE competencies ALTER COLUMN description DROP NOT NULL;

--rollback drop table competencies$AUD;
--rollback drop sequence sq_audit_competencies;
--rollback drop table competencies;
--rollback drop sequence sq_competencies;

--changeset capacibk-competencies team:competencies_teams_schema dbms:postgresql
--comment: New table for relation between competencies and teams

CREATE TABLE competencies_teams (
    competency_id numeric(10,0) NOT NULL,
    team_id numeric(10,0) NOT NULL,
    CONSTRAINT competency_fk FOREIGN KEY (competency_id) REFERENCES competencies (id),
    CONSTRAINT team_fk FOREIGN KEY (team_id) REFERENCES teams (id),
    PRIMARY KEY (competency_id, team_id)
);

--changeset capacibk-competencies team:competencies_disciplines_schema dbms:postgresql
--comment: New table for relation between competencies and disciplines

CREATE TABLE competencies_disciplines (
    competency_id numeric(10,0) NOT NULL,
    discipline_id numeric(10,0) NOT NULL,
    CONSTRAINT competency_fk FOREIGN KEY (competency_id) REFERENCES competencies (id),
    CONSTRAINT discipline_fk FOREIGN KEY (discipline_id) REFERENCES disciplines (id),
    PRIMARY KEY (competency_id, discipline_id)
);

