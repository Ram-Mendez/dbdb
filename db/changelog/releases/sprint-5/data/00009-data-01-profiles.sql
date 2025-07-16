--liquibase formatted sql

--changeset cappfdmd-profiles team:insert_new_profiles dbms:postgresql
--comment: Insert new profiles and authorities

insert into core_profiles (name, description, is_default) values ('Responsable de Organización', 'Responsable de Organización', false) on conflict do nothing;
insert into core_profiles (name, description, is_default) values ('Skill Owner', 'Skill Owner', false) on conflict do nothing;
insert into core_profiles (name, description, is_default) values ('Gestor del Cambio', 'Gestor del Cambio', false) on conflict do nothing;

insert into core_profile_authorities (profile_id, authority_id)
select
    (select profile_id from core_profiles where lower(name) = 'responsable de organización') as profile_id,
    authority_id
from core_profile_authorities
where profile_id = (select profile_id from core_profiles where lower(name) = 'perfil digital') on conflict do nothing;

insert into core_profile_authorities (profile_id, authority_id)
select
    (select profile_id from core_profiles where lower(name) = 'skill owner') as profile_id,
    authority_id
from core_profile_authorities
where profile_id = (select profile_id from core_profiles where lower(name) = 'perfil digital') on conflict do nothing;

insert into core_profile_authorities (profile_id, authority_id)
select
    (select profile_id from core_profiles where lower(name) = 'gestor del cambio') as profile_id,
    authority_id
from core_profile_authorities
where profile_id = (select profile_id from core_profiles where lower(name) = 'perfil digital') on conflict do nothing;

--changeset cappfdmd-profiles team:add_new_authorities_responsable_organizacion dbms:postgresql
--comment: Add new authorities for profile responsable de organizacion

INSERT INTO core_profile_authorities(profile_id, authority_id)
SELECT profile_id, (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_DISCIPLINES')
FROM core_profiles
WHERE lower(name) = 'responsable de organización' ON CONFLICT DO NOTHING;
