--liquibase formatted sql

--changeset core-team core_access_type_data dbms:postgresql
--comment: insercion inicial de access_type
INSERT INTO access_type (id, code, description)
VALUES
    (nextval('sq_access_type'), 'PDG', 'Perfil Digital'),
    (nextval('sq_access_type'), 'RPO', 'Responsable de Organización'),
    (nextval('sq_access_type'), 'RTE', 'Responsable de equipo'),
    (nextval('sq_access_type'), 'LDD', 'Líder de Disciplina'),
    (nextval('sq_access_type'), 'SKO', 'Skill Owner'),
    (nextval('sq_access_type'), 'ADM', 'Administración'),
    (nextval('sq_access_type'), 'GDC', 'Gestor del Cambio');
