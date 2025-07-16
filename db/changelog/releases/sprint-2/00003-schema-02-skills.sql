--liquibase formatted sql

--changeset capacibk-skills team:skills_schema dbms:postgresql
--comment: Sequence and table skills with competencies and user association

CREATE SEQUENCE sq_skills
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9999999999
    CACHE 1;

CREATE TABLE skills
(
    id          NUMERIC(10, 0)         NOT NULL DEFAULT nextval('sq_skills'::regclass),
    name        CHARACTER VARYING(100) NOT NULL,
    description CHARACTER VARYING(255) NOT NULL,
    strategic   BOOLEAN                NOT NULL DEFAULT FALSE,
    specific    BOOLEAN                NOT NULL DEFAULT FALSE,
    CONSTRAINT skills_pkey PRIMARY KEY (id)
);

COMMENT ON TABLE skills IS 'Tabla de habilidades';

CREATE SEQUENCE sq_audit_skills
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 99999999999
    CACHE 1;

CREATE TABLE skills$AUD
(
    AUDIT_ID     numeric(10, 0)              NOT NULL DEFAULT nextval('sq_audit_skills'::regclass),
    REQUEST_ID   character varying(36)       NOT NULL,
    PAIR_KEY     character varying(36)       NOT NULL,
    AUDIT_ACTION character varying(10)       NOT NULL,
    AUDIT_STEP   character varying(10)       NOT NULL,
    AUDIT_USER   character varying(10)       NOT NULL,
    AUDIT_DATE   timestamp without time zone NOT NULL,
    CONSTRAINT skills_aud_pkey PRIMARY KEY (AUDIT_ID)
);

CREATE TABLE competencies_skills
(
    competency_id NUMERIC(10, 0) NOT NULL,
    skill_id      NUMERIC(10, 0) NOT NULL,
    CONSTRAINT fk_competency FOREIGN KEY (competency_id) REFERENCES competencies (id),
    CONSTRAINT fk_skill FOREIGN KEY (skill_id) REFERENCES skills (id),
    PRIMARY KEY (competency_id, skill_id)
);

CREATE TABLE skill_owners
(
    skill_id NUMERIC(10, 0) NOT NULL,
    user_id  NUMERIC(10, 0) NOT NULL,
    CONSTRAINT skill_owners_pk PRIMARY KEY (skill_id, user_id),
    CONSTRAINT skill_owners_skill_fk FOREIGN KEY (skill_id) REFERENCES skills (id),
    CONSTRAINT skill_owners_user_fk FOREIGN KEY (user_id) REFERENCES core_users (user_id)
);

--changeset capacibk-skills team:make_columns_nullable dbms:postgresql
--comment: Make the columns description, specific, and strategic nullable

ALTER TABLE skills ALTER COLUMN description DROP NOT NULL;
ALTER TABLE skills ALTER COLUMN specific DROP NOT NULL;
ALTER TABLE skills ALTER COLUMN strategic DROP NOT NULL;

--rollback DROP TABLE skills$AUD;
--rollback DROP SEQUENCE sq_audit_skills;
--rollback DROP table competencies_skills;
--rollback DROP TABLE skills;
--rollback DROP SEQUENCE sq_skills;
--rollback DROP TABLE skill_owners;

--changeset capacibk-skills team:unique names index dbms:postgresql
--comment: Make the columns description, specific, and strategic nullable

CREATE UNIQUE INDEX skills_unique_name_idx ON skills(LOWER(name));
CREATE UNIQUE INDEX competencies_unique_name_idx ON competencies(LOWER(name));