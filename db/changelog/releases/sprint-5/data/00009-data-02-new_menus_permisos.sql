--liquibase formatted sql

--changeset cappfdmd-menus team:assign_permissions_to_summary_and_validation dbms:postgresql
--comment: Assign read and write permissions to summary and validation menus

-- Crear permisos READ y WRITE para summary
INSERT INTO core_authorities(name, description)
VALUES ('READ_SUMMARY', 'Permite la lectura de información del menú summary') ON CONFLICT DO NOTHING;

INSERT INTO core_authorities(name, description)
VALUES ('WRITE_SUMMARY', 'Permite la edición de información del menú summary') ON CONFLICT DO NOTHING;

-- Asociar permisos READ y WRITE al menú summary
INSERT INTO core_menu_authorities(menu_id, authority_id)
VALUES ((SELECT menu_id FROM core_menus WHERE title = 'menu.home.summary'),
        (SELECT authority_id FROM core_authorities WHERE name = 'READ_SUMMARY')) ON CONFLICT DO NOTHING;

INSERT INTO core_menu_authorities(menu_id, authority_id)
VALUES ((SELECT menu_id FROM core_menus WHERE title = 'menu.home.summary'),
        (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_SUMMARY')) ON CONFLICT DO NOTHING;

-- Crear permisos READ y WRITE para validation
INSERT INTO core_authorities(name, description)
VALUES ('READ_VALIDATION', 'Permite la lectura de información del menú validation') ON CONFLICT DO NOTHING;

INSERT INTO core_authorities(name, description)
VALUES ('WRITE_VALIDATION', 'Permite la edición de información del menú validation') ON CONFLICT DO NOTHING;

-- Asociar permisos READ y WRITE al menú validation
INSERT INTO core_menu_authorities(menu_id, authority_id)
VALUES ((SELECT menu_id FROM core_menus WHERE title = 'menu.home.validation'),
        (SELECT authority_id FROM core_authorities WHERE name = 'READ_VALIDATION')) ON CONFLICT DO NOTHING;

INSERT INTO core_menu_authorities(menu_id, authority_id)
VALUES ((SELECT menu_id FROM core_menus WHERE title = 'menu.home.validation'),
        (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_VALIDATION')) ON CONFLICT DO NOTHING;

-- Asociar permisos WRITE_SUMMARY a los perfiles indicados
INSERT INTO core_profile_authorities(profile_id, authority_id)
SELECT profile_id, (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_SUMMARY')
FROM core_profiles
WHERE lower(name) IN ('responsable de organización', 'responsable equipo', 'líder de disciplina', 'skill owner', 'administrador', 'gestor del cambio') ON CONFLICT DO NOTHING;

-- Asociar permisos WRITE_VALIDATION a los perfiles indicados
INSERT INTO core_profile_authorities(profile_id, authority_id)
SELECT profile_id, (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_VALIDATION')
FROM core_profiles
WHERE lower(name) IN ('administrador', 'gestor del cambio') ON CONFLICT DO NOTHING;

--changeset cappfdmd-summary_ team:read_summary dbms:postgresql
--comment: adding read_sumamry
INSERT INTO core_profile_authorities(profile_id, authority_id)
SELECT profile_id, (SELECT authority_id FROM core_authorities WHERE name = 'READ_SUMMARY')
FROM core_profiles
WHERE lower(name) IN ('responsable de organización', 'responsable equipo', 'líder de disciplina', 'skill owner', 'administrador', 'gestor del cambio') ON CONFLICT DO NOTHING;

-- Asociar permisos WRITE_VALIDATION a los perfiles indicados
INSERT INTO core_profile_authorities(profile_id, authority_id)
SELECT profile_id, (SELECT authority_id FROM core_authorities WHERE name = 'READ_VALIDATION')
FROM core_profiles
WHERE lower(name) IN ('administrador', 'gestor del cambio') ON CONFLICT DO NOTHING;