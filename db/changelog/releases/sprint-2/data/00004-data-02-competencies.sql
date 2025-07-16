--liquibase formatted sql

--changeset capacibk-competencies team:competencies_initial_data dbms:postgresql
--comment: Initial data for competencies table

INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Estratégicas. Basics de Ecosistema Iberdrola');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Arquitecturas');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Eventos & Colas');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Gestión de APIs');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Compute');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'CI/CD y Orquestación');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Publicación/Distribución');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Cloud Accounting Security');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Network Security');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Storage');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Pruebas y Testing');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'SSO');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'iaC & Gestión de la configuración');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Lenguajes de Programación');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Monitorización');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Data Management');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Data Science');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Migraciones Datos');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Areas y organizaciones');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Objetivos y Medición');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Gestión de Flujos y Procesos');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Producto y Portfolio de Producto');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Modelos de trabajo en equipo');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Gestión de Proyectos y Portfolio de Proyectos');
INSERT INTO competencies (id, name) VALUES (DEFAULT, 'Herramientas de Gestión de Proyectos y Productos');

--rollback DELETE FROM competencies WHERE name = 'Estratégicas. Basics de Ecosistema Iberdrola';
--rollback DELETE FROM competencies WHERE name = 'Arquitecturas';
--rollback DELETE FROM competencies WHERE name = 'Eventos & Colas';
--rollback DELETE FROM competencies WHERE name = 'Gestión de APIs';
--rollback DELETE FROM competencies WHERE name = 'Compute';
--rollback DELETE FROM competencies WHERE name = 'CI/CD y Orquestación';
--rollback DELETE FROM competencies WHERE name = 'Publicación/Distribución';
--rollback DELETE FROM competencies WHERE name = 'Cloud Accounting Security';
--rollback DELETE FROM competencies WHERE name = 'Network Security';
--rollback DELETE FROM competencies WHERE name = 'Storage';
--rollback DELETE FROM competencies WHERE name = 'Pruebas y Testing';
--rollback DELETE FROM competencies WHERE name = 'SSO';
--rollback DELETE FROM competencies WHERE name = 'iaC & Gestión de la configuración';
--rollback DELETE FROM competencies WHERE name = 'Lenguajes de Programación';
--rollback DELETE FROM competencies WHERE name = 'Monitorización';
--rollback DELETE FROM competencies WHERE name = 'Data Management';
--rollback DELETE FROM competencies WHERE name = 'Data Science';
--rollback DELETE FROM competencies WHERE name = 'Migraciones Datos';
--rollback DELETE FROM competencies WHERE name = 'Areas y organizaciones';
--rollback DELETE FROM competencies WHERE name = 'Objetivos y Medición';
--rollback DELETE FROM competencies WHERE name = 'Gestión de Flujos y Procesos';
--rollback DELETE FROM competencies WHERE name = 'Producto y Portfolio de Producto';
--rollback DELETE FROM competencies WHERE name = 'Modelos de trabajo en equipo';
--rollback DELETE FROM competencies WHERE name = 'Gestión de Proyectos y Portfolio de Proyectos';
--rollback DELETE FROM competencies WHERE name = 'Herramientas de Gestión de Proyectos y Productos';