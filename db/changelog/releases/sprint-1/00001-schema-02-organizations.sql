--liquibase formatted sql

--changeset capacibk-organizations team:organizations_schema dbms:postgresql
--comment: Sequence and organizations table without audit columns

CREATE SEQUENCE sq_organizations
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE TABLE organizations
(
    id numeric(10,0) NOT NULL DEFAULT nextval('sq_organizations'::regclass),
    name character varying(100) NOT NULL,
    responsible_id numeric(10,0) NOT NULL,
    CONSTRAINT organizations_pkey PRIMARY KEY (id),
    CONSTRAINT organizations_responsible_fk FOREIGN KEY (responsible_id)
        REFERENCES core_users (user_id)
);

COMMENT ON TABLE organizations IS 'Tabla de organizaciones';

CREATE SEQUENCE sq_audit_organizations
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 99999999999
    CACHE 1;

CREATE TABLE organizations$AUD
(
    AUDIT_ID numeric(10,0) NOT NULL DEFAULT nextval('sq_audit_organizations'::regclass),
    REQUEST_ID character varying(36) NOT NULL,
    PAIR_KEY character varying(36) NOT NULL,
    AUDIT_ACTION character varying(10) NOT NULL,
    AUDIT_STEP character varying(10) NOT NULL,
    AUDIT_USER character varying(10) NOT NULL,
    AUDIT_DATE timestamp without time zone NOT NULL,
    CONSTRAINT organizations_aud_pkey PRIMARY KEY (AUDIT_ID)
);

CREATE TABLE team_organizations
(
    team_id numeric(10, 0) NOT NULL,
    organization_id numeric(10, 0) NOT NULL,
    CONSTRAINT team_organizations_pk PRIMARY KEY (team_id, organization_id),
    CONSTRAINT team_organizations_team_fk FOREIGN KEY (team_id) REFERENCES teams (id),
    CONSTRAINT team_organizations_organization_fk FOREIGN KEY (organization_id) REFERENCES organizations (id)
);
--rollback drop table organizations$AUD;
--rollback drop sequence sq_audit_organizations;
--rollback drop table organizations;
--rollback drop sequence sq_organizations;

--changeset capacibk-organizations team:organizations_drop_responsible dbms:postgresql
--comment: drop restriction responsible not null
ALTER TABLE organizations
ALTER COLUMN responsible_id DROP NOT NULL;