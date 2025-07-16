--liquibase formatted sql

--changeset capacibk-menus team:insert_menus_data_sprint2 dbms:postgresql
--comment: Insert new menus sprint 2

insert into core_menus(title, link, icon, enabled, position, parent_menu_id) 
values ('menu.start', 'start', '', true, 1, null);

--changeset capacibk-menus team:mod_menus_data dbms:postgresql
--comment: Modify new menus

update core_menus set position = 2 where title = 'menu.administration';
update core_menus set icon = '' where title = 'menu.administration';

--changeset capacibk-menus team:insert_menus_auth_data_sprint2 dbms:postgresql
--comment: Insert new menus authorities sprint 2

insert into core_mappings(pattern) values ('/api/start/init');
insert into core_mappings(pattern) values ('/api/start/initedit');
insert into core_mappings(method, pattern) values ('GET', '/api/start');
insert into core_mappings(method, pattern) values ('GET', '/api/start/{id}');
insert into core_mappings(pattern) values ('/api/start/**');

insert into core_authorities(name, description) 
values('READ_START','Permite la visualización de la pantalla de inicio');
insert into core_authorities(name, description) 
values('WRITE_START','Permite la edición y creación desde la pantalla de inicio');

insert into core_mapping_authorities(mapping_id, authority_id) 
values ((select mapping_id from core_mappings where pattern ='/api/start/init'),(select authority_id from core_authorities where name ='READ_START'));
insert into core_mapping_authorities(mapping_id, authority_id) 
values ((select mapping_id from core_mappings where pattern ='/api/start/initedit'),(select authority_id from core_authorities where name = 'READ_START'));
insert into core_mapping_authorities(mapping_id, authority_id) 
values ((select mapping_id from core_mappings where pattern ='/api/start'),(select authority_id from core_authorities where name = 'READ_START'));
insert into core_mapping_authorities(mapping_id, authority_id) 
values ((select mapping_id from core_mappings where pattern ='/api/start/{id}'),(select authority_id from core_authorities where name = 'READ_START'));
insert into core_mapping_authorities(mapping_id, authority_id) 
values ((select mapping_id from core_mappings where pattern ='/api/start/**'),(select authority_id from core_authorities where name = 'WRITE_START'));

insert into core_menu_authorities(menu_id, authority_id) 
values ((select menu_id from core_menus where title = 'menu.start'), (select authority_id from core_authorities where name = 'READ_START'));
insert into core_menu_authorities(menu_id, authority_id) 
values ((select menu_id from core_menus where title = 'menu.start'), (select authority_id from core_authorities where name = 'WRITE_START'));

insert into core_profile_authorities(profile_id, authority_id) 
values((select profile_id from core_profiles where name='Administrador'),(select authority_id from core_authorities where name ='READ_START'));
insert into core_profile_authorities(profile_id, authority_id) 
values((select profile_id from core_profiles where name='Administrador'),(select authority_id from core_authorities where name ='WRITE_START'));

--changeset capacibk-menus team:insert_menus_auth_data_sprint3 dbms:postgresql
--comment: update start to init
UPDATE core_mappings
SET pattern = REPLACE(pattern, '/start', '/home')
WHERE pattern LIKE '%/start%';


--changeset capacibk-menus team:update_home_menu dbms:postgresql
--comment: update home menu
INSERT INTO core_menus(title, link, enabled, position, parent_menu_id)
VALUES ('menu.home.profile', 'myprofile', true, null,
        (SELECT menu_id FROM core_menus WHERE title = 'menu.start')) on conflict do nothing;

INSERT INTO core_menus(title, link, enabled, position, parent_menu_id)
  VALUES ('menu.home.skills', 'skills', true, null,
        (SELECT menu_id FROM core_menus WHERE title = 'menu.start')) on conflict do nothing;
INSERT INTO core_menus(title, link, enabled, position, parent_menu_id)
  VALUES ('menu.home.validation', 'validation', true, null,
        (SELECT menu_id FROM core_menus WHERE title = 'menu.start')) on conflict do nothing;

INSERT INTO core_menu_authorities(menu_id, AUTHORITY_ID)
VALUES ((SELECT menu_id FROM core_menus WHERE title = 'menu.home.profile'),
        (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_start')) on conflict do nothing;

INSERT INTO core_menu_authorities(menu_id, AUTHORITY_ID)
VALUES ((SELECT menu_id FROM core_menus WHERE title = 'menu.home.skills'),
        (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_start')) on conflict do nothing;
INSERT INTO core_menu_authorities(menu_id, AUTHORITY_ID)
VALUES ((SELECT menu_id FROM core_menus WHERE title = 'menu.home.validation'),
        (SELECT authority_id FROM core_authorities WHERE lower(name) = 'read_start')) on conflict do nothing;

delete from core_menu_authorities where menu_id in (select menu_id from core_menus where parent_menu_id = (select menu_id from core_menus where title = 'menu.administration'));

delete from core_menus where parent_menu_id = (select menu_id from core_menus where title = 'menu.administration') ;