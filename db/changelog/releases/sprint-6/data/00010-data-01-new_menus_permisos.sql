--liquibase formatted sql

--changeset cappfdmd-menus team:assign_permissions_to_validation dbms:postgresql
--comment: Assign write permissions to validation menus

-- Asociar permisos WRITE_VALIDATION al resto de perfiles indicados
INSERT INTO core_profile_authorities(profile_id, authority_id)
SELECT profile_id, (SELECT authority_id FROM core_authorities WHERE name = 'WRITE_VALIDATION')
FROM core_profiles
WHERE lower(name) IN ('responsable de organización', 'responsable equipo') ON CONFLICT DO NOTHING;

