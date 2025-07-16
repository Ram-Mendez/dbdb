--liquibase formatted sql

--changeset capacibk-formative-actions team:insert_formative_action_types dbms:postgresql
--comment: Insert formative action types

insert into formative_action_types(id, name) values 
(1, 'Externa'),
(2, 'Interna'),
(3, 'Autoformación');

--changeset capacibk-formative-actions team:insert_formative_action_types2 dbms:postgresql
--comment: Insert no identicated formative action type

insert into formative_action_types(id, name) values (0, 'No identificado');

