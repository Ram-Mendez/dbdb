--liquibase formatted sql

--changeset capacibk-core-competencies team:update_competencies_description dbms:postgresql
--comment: update competencies description for testing purposes

update competencies 
set description = concat('Descripción de la competencia ', name);
