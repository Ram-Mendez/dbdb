--liquibase formatted sql

--changeset capacibk-menus team:insert_menus_data_sprint5 dbms:postgresql
--comment: Insert menus for admin sprint 5
insert into core_profile_authorities(profile_id, authority_id)
values((select profile_id from core_profiles where name='Administrador'),(select authority_id from core_authorities where name ='WRITE_TEAMS')) ON CONFLICT DO NOTHING;

insert into core_profile_authorities(profile_id, authority_id)
values((select profile_id from core_profiles where name='Administrador'),(select authority_id from core_authorities where name ='WRITE_DISCIPLINES')) ON CONFLICT DO NOTHING;