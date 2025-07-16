--liquibase formatted sql

--changeset cappfdmd-menus team:insert_new_menus dbms:postgresql
--comment: Insert new menus for myteams and mydisciplines
INSERT INTO core_menus(title, link, enabled, position, parent_menu_id)
VALUES ('menu.home.myteams', 'myteams', true, 2,
        (SELECT menu_id FROM core_menus WHERE title = 'menu.home')) ON CONFLICT DO NOTHING;

INSERT INTO core_menus(title, link, enabled, position, parent_menu_id)
VALUES ('menu.home.mydisciplines', 'mydisciplines', true, 3,
        (SELECT menu_id FROM core_menus WHERE title = 'menu.home')) ON CONFLICT DO NOTHING;

-- Update positions for existing menus
UPDATE core_menus
SET position = 1
WHERE title = 'menu.home.profile';

UPDATE core_menus
SET position = 4
WHERE title = 'menu.home.skills';

-- Assign WRITE_TEAMS authority to myteams menu
INSERT INTO core_authorities(name, description)
VALUES ('WRITE_TEAMS', 'Permite la edición y creación de info asociada a equipos') ON CONFLICT DO NOTHING;

INSERT INTO core_menu_authorities(menu_id, authority_id)
VALUES ((SELECT menu_id FROM core_menus WHERE title = 'menu.home.myteams'),
        (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_TEAMS')) ON CONFLICT DO NOTHING;

INSERT INTO core_profile_authorities(profile_id, authority_id)
VALUES ((SELECT profile_id FROM core_profiles WHERE lower(name) = 'responsable equipo'),
        (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_TEAMS')) ON CONFLICT DO NOTHING;

-- Assign WRITE_DISCIPLINES authority to mydisciplines menu
INSERT INTO core_authorities(name, description)
VALUES ('WRITE_DISCIPLINES', 'Permite la edición y creación de info por disciplinas') ON CONFLICT DO NOTHING;

INSERT INTO core_menu_authorities(menu_id, authority_id)
VALUES ((SELECT menu_id FROM core_menus WHERE title = 'menu.home.mydisciplines'),
        (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_DISCIPLINES')) ON CONFLICT DO NOTHING;

INSERT INTO core_profile_authorities(profile_id, authority_id)
SELECT profile_id, (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_DISCIPLINES')
FROM core_profiles
WHERE lower(name) IN ('líder de disciplina', 'grupo de apoyo') ON CONFLICT DO NOTHING;


-- se quita el menú de validación
DELETE FROM core_menu_authorities
WHERE menu_id = (SELECT menu_id FROM core_menus WHERE title = 'menu.home.validation');
DELETE FROM core_menus
WHERE title = 'menu.home.validation';

-- se quita la entrada inicial de permisos para menu home
delete from core_menu_authorities where menu_id = (select menu_id from core_menus where title = 'menu.home')