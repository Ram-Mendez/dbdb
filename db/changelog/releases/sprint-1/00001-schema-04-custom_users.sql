--liquibase formatted sql

--changeset core-team core_users_new_schema dbms:postgresql
--comment: New schema for users
-- drop y add columns
ALTER TABLE core_users DROP COLUMN IF EXISTS SURNAME_FIRST;
ALTER TABLE core_users DROP COLUMN IF EXISTS SURNAME_SECOND;
ALTER TABLE core_users DROP COLUMN IF EXISTS LOCATION;
ALTER TABLE core_users DROP COLUMN IF EXISTS ORGANIZATION_ID;
ALTER TABLE core_users DROP COLUMN IF EXISTS TEAM_ID;
ALTER TABLE core_users DROP COLUMN IF EXISTS responsible_id;
ALTER TABLE core_users ADD COLUMN SURNAME_FIRST character varying(100);
ALTER TABLE core_users ADD COLUMN SURNAME_SECOND character varying(100);
ALTER TABLE core_users ADD COLUMN LOCATION character varying(30);
ALTER TABLE core_users ADD COLUMN ORGANIZATION_ID numeric(10,0);
ALTER TABLE core_users ADD COLUMN TEAM_ID numeric(10,0);
ALTER TABLE core_users ADD COLUMN responsible_id numeric(5,0);


-- FKs
ALTER TABLE core_users ADD CONSTRAINT core_users_organization_fk FOREIGN KEY (ORGANIZATION_ID)
    REFERENCES organizations (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE core_users ADD CONSTRAINT core_users_team_fk FOREIGN KEY (TEAM_ID)
    REFERENCES teams (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE core_users ADD CONSTRAINT core_users_responsible_fk FOREIGN KEY (responsible_id)
    REFERENCES core_users (user_id)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

--changeset core-team core_users_ubicacion dbms:postgresql
--comment: cambios ubicacion
-- Crear la tabla location
CREATE TABLE location (
    CODE CHAR(2) PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL
);

-- Modificar la columna ubicacion en la tabla core_users
ALTER TABLE core_users
    ALTER COLUMN LOCATION TYPE CHAR(2),
    ALTER COLUMN LOCATION DROP NOT NULL;

--changeset core-team core_users_ubicacion_fk dbms:postgresql
--comment: cambios ubicacion fk
ALTER TABLE core_users
ADD CONSTRAINT core_users_location_fk FOREIGN KEY (LOCATION)
REFERENCES location (CODE)
ON UPDATE CASCADE
ON DELETE SET NULL;


--liquibase formatted sql

--changeset core-team:add-discipline-id-to-core-users dbms:postgresql
--comment: Add discipline_id column to core_users table and create foreign key

ALTER TABLE core_users ADD COLUMN discipline_id numeric(10,0);

ALTER TABLE core_users ADD CONSTRAINT core_users_discipline_fk FOREIGN KEY (discipline_id)
    REFERENCES disciplines (id)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE core_users ADD COLUMN center character varying(100);