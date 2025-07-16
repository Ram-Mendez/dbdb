--liquibase formatted sql

--changeset capacibk-disciplines team:disciplines_schema dbms:postgresql
--comment: Sequence and table disciplines with organization association

DROP TABLE IF EXISTS disciplines$AUD CASCADE;
DROP TABLE IF EXISTS discipline_leaders CASCADE;
DROP TABLE IF EXISTS disciplines CASCADE;
DROP SEQUENCE IF EXISTS sq_audit_disciplines CASCADE;
DROP SEQUENCE IF EXISTS sq_disciplines CASCADE;

CREATE SEQUENCE sq_disciplines
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE TABLE disciplines
(
    id numeric(10,0) NOT NULL DEFAULT nextval('sq_disciplines'::regclass),
    name character varying(100) NOT NULL,
    CONSTRAINT disciplines_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE disciplines IS 'Tabla de disciplinas';

CREATE TABLE discipline_leaders
(
    discipline_id numeric(10,0) NOT NULL,
    user_id numeric(10,0) NOT NULL,
    CONSTRAINT discipline_leaders_pk PRIMARY KEY (discipline_id, user_id),
    CONSTRAINT discipline_leaders_discipline_fk FOREIGN KEY (discipline_id) REFERENCES disciplines (id),
    CONSTRAINT discipline_leaders_user_fk FOREIGN KEY (user_id) REFERENCES core_users (user_id)
);

CREATE SEQUENCE sq_audit_disciplines
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 99999999999
    CACHE 1;

CREATE TABLE disciplines$AUD
(
    AUDIT_ID numeric(10,0) NOT NULL DEFAULT nextval('sq_audit_disciplines'::regclass),
    REQUEST_ID character varying(36) NOT NULL,
    PAIR_KEY character varying(36) NOT NULL,
    AUDIT_ACTION character varying(10) NOT NULL,
    AUDIT_STEP character varying(10) NOT NULL,
    AUDIT_USER character varying(10) NOT NULL,
    AUDIT_DATE timestamp without time zone NOT NULL,
    CONSTRAINT disciplines_aud_pkey PRIMARY KEY (AUDIT_ID)
);

--rollback drop table disciplines$AUD;
--rollback drop sequence sq_audit_disciplines;
--rollback drop table discipline_leaders;
--rollback drop table disciplines;
--rollback drop sequence sq_disciplines;