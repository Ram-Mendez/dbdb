--liquibase formatted sql

--changeset capacibk-competency-centers team:competency_centers_schema dbms:postgresql
--comment: Sequence and table for competency centers

DROP TABLE IF EXISTS competency_center_disciplines$AUD;
DROP SEQUENCE IF EXISTS sq_audit_competency_center_disciplines;
DROP TABLE IF EXISTS competency_center_disciplines;
DROP TABLE IF EXISTS competency_center_users$AUD;
DROP SEQUENCE IF EXISTS sq_audit_competency_center_users;
DROP TABLE IF EXISTS competency_center_users;
DROP TABLE IF EXISTS competency_centers$AUD;
DROP SEQUENCE IF EXISTS sq_audit_competency_centers;
DROP TABLE IF EXISTS competency_centers;
DROP SEQUENCE IF EXISTS sq_competency_centers;


CREATE SEQUENCE sq_competency_centers
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE TABLE competency_centers (
    id numeric(10,0) NOT NULL DEFAULT nextval('sq_competency_centers'::regclass),
    name character varying(100) NOT NULL,
    CONSTRAINT competency_centers_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE competency_centers IS 'Tabla de centros de competencia';

CREATE SEQUENCE sq_audit_competency_centers
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 99999999999
    CACHE 1;

CREATE TABLE competency_centers$AUD(
    AUDIT_ID numeric(10,0) NOT NULL DEFAULT nextval('sq_audit_competency_centers'::regclass),
    REQUEST_ID character varying(36) NOT NULL,
    PAIR_KEY character varying(36) NOT NULL,
    AUDIT_ACTION character varying(10) NOT NULL,
    AUDIT_STEP character varying(10) NOT NULL,
    AUDIT_USER character varying(10) NOT NULL,
    AUDIT_DATE timestamp without time zone NOT NULL,
    CONSTRAINT competency_centers_aud_pkey PRIMARY KEY (AUDIT_ID)
);

CREATE TABLE competency_center_users (
    competency_center_id numeric(10,0) NOT NULL,
    user_id numeric(10,0) NOT NULL,
	responsible boolean NOT NULL DEFAULT FALSE,
    CONSTRAINT competency_center_users_pkey PRIMARY KEY (competency_center_id, user_id),
	CONSTRAINT competency_center_users_user_fk FOREIGN KEY (user_id) REFERENCES core_users (user_id)
);

COMMENT ON TABLE competency_center_users IS 'Tabla relacional de centros de competencia y usuarios';

CREATE SEQUENCE sq_audit_competency_center_users
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 99999999999
    CACHE 1;

CREATE TABLE competency_center_users$AUD(
    AUDIT_ID numeric(10,0) NOT NULL DEFAULT nextval('sq_audit_competency_center_users'::regclass),
    REQUEST_ID character varying(36) NOT NULL,
    PAIR_KEY character varying(36) NOT NULL,
    AUDIT_ACTION character varying(10) NOT NULL,
    AUDIT_STEP character varying(10) NOT NULL,
    AUDIT_USER character varying(10) NOT NULL,
    AUDIT_DATE timestamp without time zone NOT NULL,
    CONSTRAINT competency_center_users_aud_pkey PRIMARY KEY (AUDIT_ID)
);

CREATE TABLE competency_center_disciplines (
    competency_center_id numeric(10,0) NOT NULL,
    user_id numeric(10,0) NOT NULL,
	discipline_id numeric(10,0) NOT NULL,
    CONSTRAINT competency_center_disciplines_pkey PRIMARY KEY (competency_center_id, user_id, discipline_id),
	CONSTRAINT competency_center_disciplines_user_fk FOREIGN KEY (user_id) REFERENCES core_users (user_id),
	CONSTRAINT competency_center_disciplines_discipline_fk FOREIGN KEY (discipline_id) REFERENCES disciplines (id)
);

COMMENT ON TABLE competency_center_disciplines IS 'Tabla relacional de centros de competencia y disciplinas';

CREATE SEQUENCE sq_audit_competency_center_disciplines
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 99999999999
    CACHE 1;

CREATE TABLE competency_center_disciplines$AUD(
    AUDIT_ID numeric(10,0) NOT NULL DEFAULT nextval('sq_audit_competency_center_disciplines'::regclass),
    REQUEST_ID character varying(36) NOT NULL,
    PAIR_KEY character varying(36) NOT NULL,
    AUDIT_ACTION character varying(10) NOT NULL,
    AUDIT_STEP character varying(10) NOT NULL,
    AUDIT_USER character varying(10) NOT NULL,
    AUDIT_DATE timestamp without time zone NOT NULL,
    CONSTRAINT competency_center_disciplines_aud_pkey PRIMARY KEY (AUDIT_ID)
);

