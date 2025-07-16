--liquibase formatted sql

--changeset cappfdmd-experience team:add_status_experience dbms:postgresql
--comment: Add status on table experience

ALTER TABLE experience
ADD COLUMN status numeric(1,0) DEFAULT 0;

