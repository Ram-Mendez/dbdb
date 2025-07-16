--liquibase formatted sql

--changeset capacibk-formative-actions team:formative_actions_schema dbms:postgresql
--comment: New tables for formative actions

CREATE TABLE formative_action_types (
    id numeric(2,0) NOT NULL,
    name character varying(50) NOT NULL,
    CONSTRAINT formative_action_types_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE formative_action_types IS 'Tabla de tipos de acciones formativas';

CREATE SEQUENCE sq_formative_actions
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE TABLE formative_actions (
    id numeric(10,0) NOT NULL DEFAULT nextval('sq_formative_actions'::regclass),
    name character varying(100) NOT NULL,
	description text NOT NULL,
	level numeric(2,0) NOT NULL,
	cost_per_person numeric(10,2),
	hours numeric(10,2),
    type_id numeric(2,0) NOT NULL,
	proposed_regulated_action text NOT NULL,
	social_learning text NOT NULL,
    CONSTRAINT formative_actions_pkey PRIMARY KEY (id),
    CONSTRAINT formative_actions_type_fk FOREIGN KEY (type_id)
        REFERENCES formative_action_types (id)
);

COMMENT ON TABLE formative_actions IS 'Tabla de acciones formativas';

CREATE SEQUENCE sq_audit_formative_actions
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE TABLE formative_actions$AUD
(
    AUDIT_ID numeric(10,0) NOT NULL DEFAULT nextval('sq_audit_formative_actions'::regclass),
    REQUEST_ID character varying(36) NOT NULL,
    PAIR_KEY character varying(36) NOT NULL,
    AUDIT_ACTION character varying(10) NOT NULL,
    AUDIT_STEP character varying(10) NOT NULL,
    AUDIT_USER character varying(10) NOT NULL,
    AUDIT_DATE timestamp without time zone NOT NULL,
    CONSTRAINT formative_actions_aud_pkey PRIMARY KEY (AUDIT_ID)
);

--changeset capacibk-formative-actions team:skill_formative_actions_schema dbms:postgresql
--comment: New table for relation between skill and formative actions

CREATE TABLE skill_formative_actions (
    skill_id numeric(10,0) NOT NULL,
    formative_action_id numeric(10,0) NOT NULL,
    CONSTRAINT skill_fk FOREIGN KEY (skill_id) REFERENCES skills (id),
    CONSTRAINT formative_action_fk FOREIGN KEY (formative_action_id) REFERENCES formative_actions (id),
    PRIMARY KEY (skill_id, formative_action_id)
);

--changeset capacibk-formative-actions team:drop_name_column dbms:postgresql
--comment: Drop column name (formative_actions)

ALTER TABLE formative_actions DROP COLUMN IF EXISTS name;

--changeset capacibk-formative-actions team:drop_name_column$AUD dbms:postgresql
--comment: Drop column name (formative_actions$AUD)

ALTER TABLE formative_actions$AUD DROP COLUMN IF EXISTS name;

--changeset capacibk-formative-actions team:add_status_column dbms:postgresql
--comment: Añadir columna status a la tabla formative_actions con valor predeterminado "PENDING"

ALTER TABLE formative_actions
    ADD COLUMN status VARCHAR(20) DEFAULT 'Pendiente';

--rollback ALTER TABLE formative_actions
--rollback DROP COLUMN status;

--changeset capacibk-formative-actions team:drop_status_column dbms:postgresql
--comment: Eliminar columna status de la tabla formative_actions

ALTER TABLE formative_actions
    DROP COLUMN IF EXISTS status;

--rollback ALTER TABLE formative_actions
--rollback ADD COLUMN status VARCHAR(20) DEFAULT 'Pendiente';
