--liquibase formatted sql

--changeset capacibk-menus team:update_menu_data_home dbms:postgresql
--comment: update menu data (home link)

update core_menus 
set link = 'home', title = 'menu.home'
where link = 'start';

--changeset cappfdmd-perfilDigital team:update_menu_data_home dbms:postgresql
--comment: update menu inicio para perfil digital
INSERT INTO core_profile_authorities (PROFILE_ID, AUTHORITY_ID)
VALUES ((SELECT profile_id FROM core_profiles WHERE lower(name) = 'perfil digital'),
        (SELECT authority_id FROM core_authorities WHERE name = 'READ_START')) on conflict do nothing;

               INSERT INTO core_profile_authorities (PROFILE_ID, AUTHORITY_ID)
        VALUES ((SELECT profile_id FROM core_profiles WHERE lower(name) = 'perfil digital'),
                (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_START')) on conflict do nothing;