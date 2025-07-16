--liquibase formatted sql

--changeset core-team:create_config_table dbms:postgresql
--comment: Crear tabla config
drop table if exists config;
CREATE TABLE config (
    code CHAR(5) NOT NULL UNIQUE,
    value VARCHAR(255),
    description TEXT
);