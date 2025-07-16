--liquibase formatted sql

--changeset capacibk-core-competencies team:competencies_initial_data dbms:postgresql
--comment: Initial data for competencies module
INSERT INTO core_authorities (NAME, DESCRIPTION) VALUES ('READ_COMPETENCIES', 'Permite la visualización de competencias');
INSERT INTO core_authorities (NAME, DESCRIPTION) VALUES ('WRITE_COMPETENCIES', 'Permite la edición y creación de competencias');
--rollback DELETE FROM core_authorities WHERE NAME IN ('READ_COMPETENCIES', 'WRITE_COMPETENCIES');

--changeset capacibk-core-competencies team:competencies_initial_data_profiles dbms:postgresql
--preconditions onFail:CONTINUE onError:CONTINUE
--precondition-sql-check expectedResult:1 SELECT CASE WHEN EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'core_profile_authorities') THEN 1 ELSE 0 END
--comment: Initial data for competencies module and profiles
INSERT INTO core_profile_authorities (PROFILE_ID, AUTHORITY_ID) VALUES ((SELECT profile_id FROM core_profiles WHERE lower(name) = 'administrador'), (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_competencies'));
INSERT INTO core_profile_authorities (PROFILE_ID, AUTHORITY_ID) VALUES ((SELECT profile_id FROM core_profiles WHERE lower(name) = 'administrador'), (SELECT authority_id FROM core_authorities WHERE lower(name) = 'write_competencies'));
--rollback DELETE FROM core_profile_authorities WHERE PROFILE_ID = (SELECT profile_id FROM core_profiles WHERE lower(name) = 'administrador') AND AUTHORITY_ID = (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_competencies');
--rollback DELETE FROM core_profile_authorities WHERE PROFILE_ID = (SELECT profile_id FROM core_profiles WHERE lower(name) = 'administrador') AND AUTHORITY_ID = (SELECT authority_id FROM core_authorities WHERE lower(name) = 'write_competencies');

--changeset capacibk-core-competencies team:competencies_initial_data_mappings dbms:postgresql
--preconditions onFail:CONTINUE onError:CONTINUE
--precondition-sql-check expectedResult:1 SELECT CASE WHEN EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'core_mapping_authorities') THEN 1 ELSE 0 END
--comment: Initial data for competencies module and mappings
INSERT INTO core_mappings (PATTERN) VALUES ('/api/competencies/init');
INSERT INTO core_mappings (PATTERN) VALUES ('/api/competencies/initedit');
INSERT INTO core_mappings (METHOD, PATTERN) VALUES ('GET', '/api/competencies');
INSERT INTO core_mappings (METHOD, PATTERN) VALUES ('GET', '/api/competencies/{id}');
INSERT INTO core_mappings (PATTERN) VALUES ('/api/competencies/**');
INSERT INTO core_mapping_authorities (MAPPING_ID, AUTHORITY_ID)
VALUES ((SELECT mapping_id FROM core_mappings WHERE pattern = '/api/competencies/init'),
        (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_competencies'));
INSERT INTO core_mapping_authorities (MAPPING_ID, AUTHORITY_ID)
VALUES ((SELECT mapping_id FROM core_mappings WHERE pattern = '/api/competencies/initedit'),
        (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_competencies'));
INSERT INTO core_mapping_authorities (MAPPING_ID, AUTHORITY_ID)
VALUES ((SELECT mapping_id FROM core_mappings WHERE pattern = '/api/competencies'),
        (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_competencies'));
INSERT INTO core_mapping_authorities (MAPPING_ID, AUTHORITY_ID)
VALUES ((SELECT mapping_id FROM core_mappings WHERE pattern = '/api/competencies/{id}' AND method = 'GET'),
        (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_competencies'));
INSERT INTO core_mapping_authorities (MAPPING_ID, AUTHORITY_ID)
VALUES ((SELECT mapping_id FROM core_mappings WHERE pattern = '/api/competencies/**'),
        (SELECT authority_id FROM core_authorities WHERE lower(name) = 'write_competencies'));
--rollback DELETE FROM core_mapping_authorities WHERE MAPPING_ID = (SELECT mapping_id FROM core_mappings WHERE pattern = '/api/competencies/**') AND AUTHORITY_ID = (SELECT authority_id FROM core_authorities WHERE lower(name) = 'write_competencies');
--rollback DELETE FROM core_mapping_authorities WHERE MAPPING_ID = (SELECT mapping_id FROM core_mappings WHERE pattern = '/api/competencies/{id}' AND method = 'GET') AND AUTHORITY_ID = (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_competencies');
--rollback DELETE FROM core_mapping_authorities WHERE MAPPING_ID = (SELECT mapping_id FROM core_mappings WHERE pattern = '/api/competencies' AND method = 'GET') AND AUTHORITY_ID = (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_competencies');
--rollback DELETE FROM core_mapping_authorities WHERE MAPPING_ID = (SELECT mapping_id FROM core_mappings WHERE pattern = '/api/competencies/initedit') AND AUTHORITY_ID = (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_competencies');
--rollback DELETE FROM core_mapping_authorities WHERE MAPPING_ID = (SELECT mapping_id FROM core_mappings WHERE pattern = '/api/competencies/init') AND AUTHORITY_ID = (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_competencies');
--rollback DELETE FROM core_mappings WHERE pattern = '/api/competencies/init';
--rollback DELETE FROM core_mappings WHERE pattern = '/api/competencies/initedit';
--rollback DELETE FROM core_mappings WHERE pattern = '/api/competencies' AND method = 'GET';
--rollback DELETE FROM core_mappings WHERE pattern = '/api/competencies/{id}' AND method = 'GET';
--rollback DELETE FROM core_mappings WHERE pattern = '/api/competencies/**';

--changeset capacibk-core-competencies team:competencies_initial_data_menus dbms:postgresql
--preconditions onFail:CONTINUE onError:CONTINUE
--precondition-sql-check expectedResult:1 SELECT CASE WHEN EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'core_menu_authorities') THEN 1 ELSE 0 END
--comment: Initial data for competencies module and menus
--comment: Initial data for authorities module and menus
INSERT INTO core_menus(title, link, icon, enabled, position, parent_menu_id)
VALUES ('menu.administration.competencies', 'competencies', 'certificate', true, null,
        (SELECT menu_id FROM core_menus WHERE title = 'menu.administration'));

INSERT INTO core_menu_authorities(menu_id, AUTHORITY_ID)
VALUES ((SELECT menu_id FROM core_menus WHERE title = 'menu.administration.competencies'),
        (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_competencies'));

INSERT INTO core_menu_authorities(menu_id, AUTHORITY_ID)
VALUES ((SELECT menu_id FROM core_menus WHERE title = 'menu.administration.competencies'),
        (SELECT authority_id FROM core_authorities WHERE lower(name) = 'write_competencies'));
--rollback DELETE FROM core_menu_authorities WHERE MENU_ID = (SELECT menu_id FROM core_menus WHERE title = 'menu.administration.competencies') AND AUTHORITY_ID = (SELECT authority_id FROM core_authorities WHERE lower(name) = 'write_competencies');
--rollback DELETE FROM core_menu_authorities WHERE MENU_ID = (SELECT menu_id FROM core_menus WHERE title = 'menu.administration.competencies') AND AUTHORITY_ID = (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_competencies');
--rollback DELETE FROM core_menus WHERE title = 'menu.administration.competencies';