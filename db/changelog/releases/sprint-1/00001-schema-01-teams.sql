--liquibase formatted sql

--changeset capacibk-teams:00001-schema-03-teams team:teams_schema dbms:postgresql
--comment: Creación de secuencias y tablas relacionadas con equipos
DROP TABLE IF EXISTS teams$AUD;
DROP TABLE IF EXISTS team_users;
DROP TABLE IF EXISTS teams;
DROP SEQUENCE IF EXISTS sq_audit_teams;
DROP SEQUENCE IF EXISTS sq_teams;
DROP TABLE IF EXISTS team_organizations;
DROP TABLE IF EXISTS organizations$AUD;
DROP TABLE IF EXISTS organizations;
DROP SEQUENCE IF EXISTS sq_audit_organizations;
DROP SEQUENCE IF EXISTS sq_organizations;


CREATE SEQUENCE sq_teams
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE TABLE teams
(
    id numeric(10,0) NOT NULL DEFAULT nextval('sq_teams'::regclass),
    name character varying(100) NOT NULL,
    CONSTRAINT teams_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE teams IS 'Tabla de equipos';

CREATE TABLE team_users
(
    team_id numeric(10, 0) NOT NULL,
    user_id numeric(10, 0) NOT NULL,
    CONSTRAINT team_users_pk PRIMARY KEY (team_id, user_id),
    CONSTRAINT team_users_team_fk FOREIGN KEY (team_id) REFERENCES teams (id),
    CONSTRAINT team_users_user_fk FOREIGN KEY (user_id) REFERENCES core_users (user_id)
);

CREATE SEQUENCE sq_audit_teams
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 99999999999
    CACHE 1;

CREATE TABLE teams$AUD
(
    AUDIT_ID     numeric(10, 0)              NOT NULL DEFAULT nextval('sq_audit_teams'::regclass),
    REQUEST_ID   character varying(36)       NOT NULL,
    PAIR_KEY     character varying(36)       NOT NULL,
    AUDIT_ACTION character varying(10)       NOT NULL,
    AUDIT_STEP   character varying(10)       NOT NULL,
    AUDIT_USER   character varying(10)       NOT NULL,
    AUDIT_DATE   timestamp without time zone NOT NULL,
    CONSTRAINT teams_aud_pkey PRIMARY KEY (AUDIT_ID)
);

--rollback drop table teams$AUD;
--rollback drop sequence sq_audit_teams;
--rollback drop table team_users;
--rollback drop table team_organizations;
--rollback drop table teams;
--rollback drop sequence sq_teams;