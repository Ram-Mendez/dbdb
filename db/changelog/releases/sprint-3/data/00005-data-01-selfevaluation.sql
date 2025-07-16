--liquibase formatted sql

--changeset cappfdmd-menus team:insert_mappings_selfevaluation dbms:postgresql
--comment: Insert new mappings for self-evaluation
-- Eliminación de registros en core_profile_authorities
DELETE FROM core_profile_authorities
WHERE AUTHORITY_ID = (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_SELF_EVALUATION')
   OR AUTHORITY_ID = (SELECT authority_id FROM core_authorities WHERE name = 'READ_SELF_EVALUATION');

-- Eliminación de registros en core_mapping_authorities
DELETE FROM core_mapping_authorities
WHERE AUTHORITY_ID = (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_SELF_EVALUATION')
   OR AUTHORITY_ID = (SELECT authority_id FROM core_authorities WHERE name = 'READ_SELF_EVALUATION');

-- Eliminación de registros en core_mappings
DELETE FROM core_mappings
WHERE PATTERN IN ('/api/selfevaluation/getcompetency', '/api/selfevaluation/evaluate');

-- Eliminación de registros en core_authorities
DELETE FROM core_authorities
WHERE NAME IN ('WRITE_SELF_EVALUATION', 'READ_SELF_EVALUATION');

-- Inserción en core_authorities
INSERT INTO core_authorities (NAME, DESCRIPTION)
VALUES ('READ_SELF_EVALUATION', 'Permite la visualización de la autoevaluación'),
       ('WRITE_SELF_EVALUATION', 'Permite la edición de la autoevaluación');

-- Inserción en core_mappings
INSERT INTO core_mappings (METHOD, PATTERN)
VALUES ('POST', '/api/selfevaluation/getcompetency'),
       ('POST', '/api/selfevaluation/evaluate');

-- Inserción en core_mapping_authorities
INSERT INTO core_mapping_authorities (MAPPING_ID, AUTHORITY_ID)
VALUES ((SELECT mapping_id FROM core_mappings WHERE pattern = '/api/selfevaluation/getcompetency' AND method = 'POST'),
        (SELECT authority_id FROM core_authorities WHERE name = 'READ_SELF_EVALUATION')),
       ((SELECT mapping_id FROM core_mappings WHERE pattern = '/api/selfevaluation/evaluate' AND method = 'POST'),
        (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_SELF_EVALUATION'));

-- Inserción en core_profile_authorities
INSERT INTO core_profile_authorities (PROFILE_ID, AUTHORITY_ID)
VALUES ((SELECT profile_id FROM core_profiles WHERE lower(name) = 'administrador'),
        (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_SELF_EVALUATION')),
       ((SELECT profile_id FROM core_profiles WHERE lower(name) = 'perfil digital'),
        (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_SELF_EVALUATION'));

--changeset cappfdmd-menus team:insert_mappings_selfevaluation2 dbms:postgresql
--comment: Insert new mappings for self-evaluation2
-- Eliminación de registros en core_profile_authorities
INSERT INTO core_profile_authorities (PROFILE_ID, AUTHORITY_ID)
VALUES ((SELECT profile_id FROM core_profiles WHERE lower(name) = 'administrador'),
        (SELECT authority_id FROM core_authorities WHERE name = 'READ_SELF_EVALUATION')),
       ((SELECT profile_id FROM core_profiles WHERE lower(name) = 'perfil digital'),
        (SELECT authority_id FROM core_authorities WHERE name = 'READ_SELF_EVALUATION'));