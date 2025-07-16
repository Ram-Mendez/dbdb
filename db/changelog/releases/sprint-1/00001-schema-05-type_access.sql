--liquibase formatted sql

--changeset core-team core_access_type_schema dbms:postgresql
--comment: Sequence and table for core_access_type

drop sequence if exists sq_access_type;
drop table if exists access_type;

CREATE SEQUENCE sq_access_type
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE TABLE access_type
(
    id numeric(10,0) NOT NULL DEFAULT nextval('sq_access_type'::regclass),
    code character(3) NOT NULL,
    description character varying(100),
    CONSTRAINT access_type_pkey PRIMARY KEY (id),
    CONSTRAINT access_type_code_key UNIQUE (code)
);

COMMENT ON TABLE access_type IS 'Tabla para gestionar tipos de acceso';

--rollback drop table access_type;
--rollback drop sequence sq_access_type;