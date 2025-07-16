--liquibase formatted sql

--changeset core-team add_contact_mail dbms:postgresql
--comment: Añadir el mail de contacto a la tabla config
INSERT INTO config (code, value, description) VALUES ('MAILC', 'info@iberdrola.com', 'Contact mail');