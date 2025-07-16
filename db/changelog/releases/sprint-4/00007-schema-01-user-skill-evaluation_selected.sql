--liquibase formatted sql

--changeset capacibk-skills team:add_selected_column dbms:postgresql
--comment: Añadir columna selected a la tabla user_skill_evaluation

ALTER TABLE experience
ADD COLUMN selected BOOLEAN DEFAULT FALSE;

ALTER TABLE user_skill_evaluation
DROP COLUMN previous_score,
DROP COLUMN expected_value;

--rollback ALTER TABLE user_skill_evaluation DROP COLUMN selected;
--rollback ALTER TABLE user_skill_evaluation
--rollback ADD COLUMN previous_score NUMERIC(1, 0) DEFAULT NULL CHECK (previous_score BETWEEN 0 AND 4),
--rollback ADD COLUMN expected_value NUMERIC(1, 0) NOT NULL DEFAULT 0 CHECK (expected_value BETWEEN 0 AND 4);

--changeset capacibk-skills team:remove_previous_expected_audit_columns dbms:postgresql
--comment: Eliminar columnas previous_score y expected_value de la tabla de auditoría user_skill_evaluation$AUD

ALTER TABLE user_skill_evaluation$AUD
    DROP COLUMN IF EXISTS previous_score,
    DROP COLUMN IF EXISTS expected_value;

--rollback ALTER TABLE user_skill_evaluation$AUD
--rollback ADD COLUMN previous_score NUMERIC(1, 0) DEFAULT NULL CHECK (previous_score BETWEEN 0 AND 4),
--rollback ADD COLUMN expected_value NUMERIC(1, 0) DEFAULT 0 CHECK (expected_value BETWEEN 0 AND 4);