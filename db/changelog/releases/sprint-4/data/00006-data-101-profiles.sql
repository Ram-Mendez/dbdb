--liquibase formatted sql

--changeset cappfdmd-profiles team:insert_new_profiles dbms:postgresql
--comment: Insert new profiles and authorities
insert into core_profiles (name, description,is_default) values ('Responsable equipo', 'Responsable de equipo', false) on conflict do nothing;
insert into core_profiles (name, description,is_default) values ('Líder de disciplina', 'Líder de disciplina', false) on conflict do nothing;
insert into core_profiles (name, description,is_default) values ('Grupo de apoyo', 'Grupo de apoyo', false) on conflict do nothing;

insert into core_profile_authorities (profile_id, authority_id)
select
    (select profile_id from core_profiles where lower(name) = 'responsable equipo') as profile_id,
    authority_id
from core_profile_authorities
where profile_id = (select profile_id from core_profiles where lower(name) = 'perfil digital') on conflict do nothing;

insert into core_profile_authorities (profile_id, authority_id)
select
    (select profile_id from core_profiles where lower(name) = 'líder de disciplina') as profile_id,
    authority_id
from core_profile_authorities
where profile_id = (select profile_id from core_profiles where lower(name) = 'perfil digital') on conflict do nothing;

insert into core_profile_authorities (profile_id, authority_id)
select
    (select profile_id from core_profiles where lower(name) = 'grupo de apoyo') as profile_id,
    authority_id
from core_profile_authorities
where profile_id = (select profile_id from core_profiles where lower(name) = 'perfil digital') on conflict do nothing;