--liquibase formatted sql

--changeset team:add_read_mailing_permission dbms:postgresql
--comment: Alta de permiso READ_MAILING y su relación con /mailing
INSERT INTO ${table.prefix}authorities(NAME, DESCRIPTION) VALUES ('READ_MAILING', 'Permite la visualización de los datos y envío de mailing');

INSERT INTO ${table.prefix}profile_authorities(PROFILE_ID, AUTHORITY_ID)
VALUES ((SELECT profile_id FROM ${table.prefix}profiles WHERE lower(name) = 'administrador'),
        (SELECT authority_id FROM ${table.prefix}authorities WHERE lower(name) = 'read_mailing'));
INSERT INTO ${table.prefix}profile_authorities(PROFILE_ID, AUTHORITY_ID)
VALUES ((SELECT profile_id FROM ${table.prefix}profiles WHERE lower(name) = 'perfil digital'),
        (SELECT authority_id FROM ${table.prefix}authorities WHERE lower(name) = 'read_mailing'));

INSERT INTO ${table.prefix}mappings(METHOD, PATTERN) VALUES ('GET', '/api/mailing/contact');
INSERT INTO ${table.prefix}mappings(METHOD, PATTERN) VALUES ('POST', '/api/mailing/send');
INSERT INTO ${table.prefix}mapping_authorities(MAPPING_ID, AUTHORITY_ID)
VALUES ((SELECT mapping_id FROM ${table.prefix}mappings WHERE PATTERN = '/api/mailing/contact' AND METHOD = 'GET'),
        (SELECT authority_id FROM ${table.prefix}authorities WHERE lower(name) = 'read_mailing'));
INSERT INTO ${table.prefix}mapping_authorities(MAPPING_ID, AUTHORITY_ID)
VALUES ((SELECT mapping_id FROM ${table.prefix}mappings WHERE PATTERN = '/api/mailing/send' AND METHOD = 'POST'),
        (SELECT authority_id FROM ${table.prefix}authorities WHERE lower(name) = 'read_mailing'));
