--liquibase formatted sql

--changeset cappfdmd-skills team:skills-desc dbms:postgresql
--comment: Aumentamos tamaño description
ALTER TABLE skills
ALTER COLUMN description TYPE text;