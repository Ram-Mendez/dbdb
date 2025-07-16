--liquibase formatted sql

--changeset capacibk-formative-actions team:insert_formative_actions dbms:postgresql
--comment: Insert formative actions

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de Microsoft 365 Defender, incluyendo su propósito y las principales características de protección contra amenazas.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Curso LinkedIn Learning: Microsoft 365 Protección frente a amenazas', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE '365 Defender'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de Microsoft 365 Defender y puede configurar y utilizar sus funcionalidades básicas con la orientación de un experto, como la detección de amenazas y la respuesta a incidentes.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Curso LinkedIn Learning: Microsoft 365 Protección frente a amenazas', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE '365 Defender'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de Microsoft 365 Defender y puede diseñar, implementar y gestionar políticas de seguridad de manera autónoma, utilizando herramientas avanzadas para proteger el entorno de Microsoft 365', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 
Curso SC-200T00-A: Analista de operaciones de seguridad de Microsoft - Training | Microsoft Learn

 
(1.000€ aprox.)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE '365 Defender'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en el uso de Microsoft 365 Defender, proporcionando ejemplos prácticos y guiando a los equipos en la implementación de soluciones de seguridad avanzadas para proteger los datos y sistemas de la organización', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 
Curso SC-200T00-A: Analista de operaciones de seguridad de Microsoft - Training | Microsoft Learn


(1.000€ aprox.)
 ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE '365 Defender'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de las métricas ágiles, incluyendo las métricas de velocidad, burndown charts y lead time, y entiende su propósito en la gestión de proyectos ágiles.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '

Leer Measure and Grow - Scaled Agile FrameworkVer vídeo Métricas Ágile + Jira+EazyBI', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Agile Metrics'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de las métricas ágiles y puede participar en la recopilación y análisis de datos con la orientación de un experto, contribuyendo a la mejora continua del equipo.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Leer Measure and Grow - Scaled Agile FrameworkVer vídeo Métricas Ágile + Jira+EazyBI
Píldoras LinkedIn Learning
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Agile Metrics'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de las métricas ágiles y puede diseñar, implementar y monitorear métricas de manera autónoma, utilizando los datos para optimizar el rendimiento del equipo y la entrega de valor.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Leer Measure and Grow - Scaled Agile FrameworkVer vídeo Métricas Ágile + Jira+EazyBI
Píldoras LinkedIn Learning ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Agile Metrics'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en el uso de métricas ágiles, proporcionando ejemplos prácticos y guiando a los equipos en la implementación efectiva de métricas para mejorar la transparencia y la eficiencia en los proyectos ágiles.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Leer Measure and Grow - Scaled Agile FrameworkVer vídeo Métricas Ágile + Jira+EazyBI
Consultar con equipo Lean Agile para poder contextualizar la necesidad y hacer una propuesta formativa.
 ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Agile Metrics'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales del análisis de datos, incluyendo la recolección y organización de datos básicos.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), 'Cursos Data AcademyArtificial Intelligence', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Análisis de datos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar análisis de datos con asistencia, utilizando herramientas básicas y siguiendo instrucciones para interpretar resultados.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), 'Cursos Data Academy
Artificial Intelligence', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Análisis de datos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Maneja de forma autónoma el análisis de datos, aplicando técnicas estadísticas y utilizando herramientas avanzadas para obtener y comunicar insights significativos', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Cursos Data Academy
Curso de python Data Academy ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Análisis de datos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Domina el análisis de datos a nivel avanzado, incluyendo la creación de modelos predictivos y la implementación de estrategias de análisis, y puede enseñar a otros cómo realizar análisis de datos de manera eficaz.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), 'Cursos Data Academy
Python y/o Sesiones de profundización derivadas WS AWS', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Análisis de datos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de la seguridad en aplicaciones móviles (APPSEC). Entiende los riesgos básicos y las vulnerabilidades comunes en el desarrollo de aplicaciones móviles.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 

Read -OWASP Mobile Top 10


Watch -Complete Guide to Application Security (Mobile App Security) (40m)
Watch -OWASP Mobile Application Security (30m)
Watch -A Complete Guide to OWASP & Mobile Application Securityy (40m)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'APPSEC Mobile Applications'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede implementar medidas de seguridad en aplicaciones móviles con orientación. Conoce las herramientas y técnicas básicas para proteger aplicaciones móviles y puede seguir guías de seguridad bajo supervisión.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Read -OWASP Mobile Security Testing Guide (MSTG) 

Watch -Securing Mobile Apps with the OWASP MASVS and MSTG (35m)
Watch -OWASP Mobile Top 10 Risks(2h)
Watch -Learning Mobile Device Security (1h)
Watch - iOS Development: Security(2h)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'APPSEC Mobile Applications'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Diseña, implementa y gestiona la seguridad en aplicaciones móviles de manera autónoma. Identifica y mitiga vulnerabilidades, realiza pruebas de seguridad y asegura el cumplimiento de las mejores prácticas de APPSEC.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Read -  OWASP MASVS (Mobile App Security Verification Standard)

Watch -Ethical Hacking: Mobile Devices and Platforms (2h)
Watch -Mobile App Security Testing (Playlist)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'APPSEC Mobile Applications'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Enseña y guía a otros en la implementación de seguridad en aplicaciones móviles. Desarrolla estrategias de seguridad a nivel organizacional y actúa como mentor para equipos de desarrollo en la adopción de prácticas seguras en el desarrollo de aplicaciones móviles.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 
Para que el usuario decida:


- SANS SEC575 - Mobile Device Security & Ethical Hacking
- GIAC GMOB (Mobile Device Security Analyst)
- CSSLP', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'APPSEC Mobile Applications'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de la seguridad en aplicaciones web (APPSEC). Entiende los riesgos básicos y las vulnerabilidades comunes en el desarrollo de aplicaciones web.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 

Read -OWASP Top 10 for Web Applications 


Watch -Learning the OWASP Top 10 (35m)
Watch - Cybersecurity Foundations: Application Security(45m)
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'APPSEC Web Applications'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede implementar medidas de seguridad en aplicaciones web con orientación. Conoce las herramientas y técnicas básicas para proteger aplicaciones web y puede seguir guías de seguridad bajo supervisión.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Read -OWASP Cheat Sheet Series (e.g. Authentication, Input Validation) 


Watch -Programming Foundations: Web Security(2h)
Watch -The OWASP API Security Top 10(40m)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'APPSEC Web Applications'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Diseña, implementa y gestiona la seguridad en aplicaciones web de manera autónoma. Identifica y mitiga vulnerabilidades, realiza pruebas de seguridad y asegura el cumplimiento de las mejores prácticas de APPSEC.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Read - NIST SP 800-53/800-218 (SSDF)
Read -OWASP ASVS (App Sec Verification Standard) 


Watch -Master the OWASP Top 10(Learning Path)
Watch -Handling & Responding to Web Application Security Incidents(2hr)
Watch -Dynamic Application Security Testing (3h 20m)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'APPSEC Web Applications'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Enseña y guía a otros en la implementación de seguridad en aplicaciones web. Desarrolla estrategias de seguridad a nivel organizacional y actúa como mentor para equipos de desarrollo en la adopción de prácticas seguras en el desarrollo de aplicaciones web.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 
Uno a decidir por el usuario: 


- Intermediate SANS Courses (E.g. SEC542 - WebApp Penetration Testing)
- GIAC Web Application Penetration Tester
- OSWE (Offensive Security Web Expert)
- Certified Ethical Hacker (CEH)
- CSSLP', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'APPSEC Web Applications'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene una comprensión básica de los principios de seguridad de redes y sistemas, pero no puede diseñar ni implementar arquitecturas de seguridad.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%No identificado%'), '
Formación básica en:ProxyFirewallCASBVPN

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Arquitectura de seguridad de redes y sistemas en Iberdrola'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede participar en la implementación y mantenimiento de arquitecturas de seguridad con la orientación de expertos o utilizando recursos específicos.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
CCNA: Introduction to Networks

CCNA: Introduction to Networks

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Arquitectura de seguridad de redes y sistemas en Iberdrola'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Diseña, implementa y mantiene arquitecturas de seguridad de redes y sistemas de manera independiente, asegurando la protección contra amenazas y vulnerabilidades.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
CCNA: Introduction to Networks

CCNA: Introduction to Networks
', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Arquitectura de seguridad de redes y sistemas en Iberdrola'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'No solo diseña y mantiene arquitecturas de seguridad efectivas, sino que también puede enseñar y guiar a otros en cómo desarrollar y gestionar estas arquitecturas en diferentes entornos empresariales.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%No identificado%'), '
A determinar por el usuario
', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Arquitectura de seguridad de redes y sistemas en Iberdrola'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de la automatización de procesos y entiende su importancia en la eficiencia operativa. Familiarizado con algunas herramientas básicas de automatización.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Automatización de procesos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede implementar soluciones de automatización en procesos específicos con orientación. Participa en proyectos de automatización y contribuye a la configuración de herramientas bajo supervisión.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Automatización de procesos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Diseña, implementa y gestiona soluciones de automatización de procesos de manera autónoma. Identifica oportunidades para automatizar tareas repetitivas y optimizar flujos de trabajo.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Automatización de procesos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Enseña y guía a otros en la implementación de la automatización de procesos. Desarrolla estrategias de automatización a nivel organizacional y actúa como mentor y coach en el uso de herramientas y técnicas avanzadas de automatización.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Automatización de procesos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de la seguridad en Azure, incluyendo los servicios y herramientas básicas de seguridad que ofrece la plataforma.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Curso LinkedIn Learning (Esencial)

 
 ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Azure Cloud Security'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de las prácticas de seguridad en Azure y puede implementar configuraciones de seguridad con la orientación de un experto, asegurando la protección básica de los recursos en la nube.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Curso LinkedIn Learning (Intermedio)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Azure Cloud Security'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de la seguridad en Azure y puede diseñar, implementar y gestionar políticas de seguridad de manera autónoma, protegiendo los datos y aplicaciones en la nube de manera efectiva.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), 'Azure: Fundamentos de seguridad | LinkedIn Learning

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Azure Cloud Security'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), ' Es capaz de explicar y formar a otros en las mejores prácticas de seguridad en Azure, proporcionando ejemplos prácticos y guiando a los equipos en la implementación de soluciones de seguridad avanzadas en la plataforma.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Azure: Fundamentos de seguridad | LinkedIn Learning

 
 ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Azure Cloud Security'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los conceptos fundamentales de la agilidad empresarial y su importancia en el entorno de negocios. Conoce algunas metodologías ágiles básicas.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), ' Leer Business Agility - Scaled Agile Framework', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Business Agility'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede aplicar principios de agilidad empresarial en situaciones específicas con orientación. Participa en equipos ágiles y contribuye a la implementación de prácticas ágiles bajo supervisión.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), 'Leer todas las secciones: What is SAFe', '
 
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Business Agility'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Implementa y gestiona prácticas de agilidad empresarial de manera autónoma. Identifica oportunidades para mejorar la agilidad en procesos y proyectos. Facilita la adopción de metodologías ágiles en su equipo o departamento.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Leer: Leer Extended SAFe Guidance
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Business Agility'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Enseña y guía a otros en la implementación de la agilidad empresarial. Desarrolla estrategias para la transformación ágil a nivel organizacional. Actúa como mentor y coach en prácticas ágiles, promoviendo una cultura de mejora continua.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
Formación Leading SAFe
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Business Agility'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los principios fundamentales de la calidad del dato, incluyendo la importancia de la precisión y la integridad de los datos.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 


Cursos Data Academy', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Calidad del dato'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas de aseguramiento de la calidad del dato con asistencia, como la validación y limpieza de datos bajo supervisión.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 



Sesión Noviembre Calidad del Dato impartida por la Oficina Global del Dato. Cursos Data Academy
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Calidad del dato'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Maneja de forma autónoma la gestión de la calidad del dato, implementando procesos de control y aseguramiento de la calidad para mantener la fiabilidad de los datos.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 


Cursos Data Academy', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Calidad del dato'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Domina la calidad del dato a nivel avanzado, incluyendo la creación de políticas y procedimientos para la gestión de la calidad del dato, y puede enseñar a otros cómo mantener y mejorar la calidad de los datos.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 


Cursos Data Academy', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Calidad del dato'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos básicos de Chronicle y entiende su propósito y funcionalidades principales. Familiarizado con la interfaz y las operaciones básicas.
​', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 



03Google Security Operations - SIEM Rules
Google SIEM & SOAR Learning Path | Google Cloud Skills Boost




', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Chronicle'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede utilizar Chronicle para tareas específicas con orientación. Sabe cómo buscar ayuda y aplicar las funcionalidades de Chronicle en proyectos bajo supervisión', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 


 01Security Practices with Google Security Operations - SIEM
02SOAR Fundamentals
03Google Security Operations - SIEM Rules
Google SIEM & SOAR Learning Path | Google Cloud Skills Boost




', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Chronicle'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Utiliza Chronicle de manera autónoma para gestionar y analizar datos. Optimiza el uso de las herramientas y funcionalidades de Chronicle en su trabajo diario.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Todos los cursos - Google SIEM & SOAR Learning Path | Google Cloud Skills Boost


 




 ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Chronicle'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Enseña a otros cómo utilizar Chronicle de manera efectiva. Desarrolla estrategias para la implementación de Chronicle en equipos y actúa como mentor para mejorar la eficiencia y el análisis de datos mediante el uso de Chronicle.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%No identificado%'), '
A determinar por el usuario

 



 ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Chronicle'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los conceptos fundamentales de la ciberseguridad y su uso básico.

Objetivo: Capacitar en las mejores prácticas para la seguridad informática.​

Posibles contenidos: Respuesta a incidentes en Iberdrola, contactos ante estas situaciones, equipos en la organización, etc.​

Paisaje de amenazas cibernéticas de Iberdrola: ¿quiénes nos atacan y porqué​?

Ingeniería social: ¿cómo podrían ser atacados los empleados de Iberdrola? 

​', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), 'Ciberseguridad: Un juego de equipo que comienza por ti ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Ciberseguridad. Conceptos generales'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas básicas de ciberseguridad con asistencia', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Ciberseguridad: Un juego de equipo que comienza por tiContactar con Skill Owner en caso de necesidad.

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Ciberseguridad. Conceptos generales'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y aplica principios de ciberseguridad de manera autónoma', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Ciberseguridad: Un juego de equipo que comienza por tiContactar con Skill Owner en caso de necesidad.

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Ciberseguridad. Conceptos generales'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de enseñar y guiar a otros en el uso avanzado de ciberseguridad', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Ciberseguridad: Un juego de equipo que comienza por tiContactar con Skill Owner en caso de necesidad.

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Ciberseguridad. Conceptos generales'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de la programación y puede escribir programas simples utilizando un lenguaje de programación básico.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
 
Itinerarios en LinkedIn Learning', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento en Lenguajes Programacion (Python, Scala, R, Spark y JAVA)'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede desarrollar programas con asistencia, siguiendo instrucciones y utilizando herramientas de desarrollo bajo supervisión.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
 
Itinerarios en LinkedIn Learning', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento en Lenguajes Programacion (Python, Scala, R, Spark y JAVA)'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Maneja de forma autónoma la programación, desarrollando aplicaciones completas, depurando código y optimizando el rendimiento de los programas.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
 
Itinerarios en LinkedIn Learning', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento en Lenguajes Programacion (Python, Scala, R, Spark y JAVA)'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Domina la programación a nivel avanzado, incluyendo múltiples lenguajes y paradigmas de programación, y puede enseñar a otros cómo desarrollar software de manera eficaz.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
 
Itinerarios en LinkedIn Learning', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento en Lenguajes Programacion (Python, Scala, R, Spark y JAVA)'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Habilidad identificada por equipo de operatciones, procesos y herramientas. En año 2025 el equipo tiene propuestas formativas ad-hoc en su ficha pero deberá redefinirse esta habilidad para 2026', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.


', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento técnico en el área'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Habilidad identificada por equipo de operatciones, procesos y herramientas. En año 2025 el equipo tiene propuestas formativas ad-hoc en su ficha pero deberá redefinirse esta habilidad para 2026', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.


', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento técnico en el área'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Habilidad identificada por equipo de operatciones, procesos y herramientas. En año 2025 el equipo tiene propuestas formativas ad-hoc en su ficha pero deberá redefinirse esta habilidad para 2026', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.


', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento técnico en el área'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Habilidad identificada por equipo de operatciones, procesos y herramientas. En año 2025 el equipo tiene propuestas formativas ad-hoc en su ficha pero deberá redefinirse esta habilidad para 2026', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.


', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento técnico en el área'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene una comprensión básica de los principios y conceptos de investigación y desarrollo (I+D), pero no puede aplicarlos de manera práctica', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
¿?

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento técnico y I+D'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede participar en proyectos de I+D con la orientación de expertos o utilizando recursos específicos, aplicando conocimientos técnicos bajo supervisión', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
¿?

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento técnico y I+D'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Realiza actividades de I+D de manera independiente, aplicando conocimientos técnicos para desarrollar nuevas soluciones y mejorar procesos existentes.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
¿?

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento técnico y I+D'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'No solo lleva a cabo actividades de I+D de manera efectiva, sino que también puede enseñar y guiar a otros en cómo aplicar conocimientos técnicos en proyectos de investigación y desarrollo', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
¿?

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento técnico y I+D'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de la arquitectura tecnológica, incluyendo los componentes principales y su función dentro de un sistema IT.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.Recomienda asistir a las sesiones de disciplina y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento tecnológico en arquitectura'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de la arquitectura tecnológica y puede participar en discusiones sobre su diseño e implementación con la orientación de un experto.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.Recomienda asistir a las sesiones de disciplina y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento tecnológico en arquitectura'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de la arquitectura tecnológica y puede diseñar e implementar soluciones IT de manera autónoma, tomando decisiones informadas sobre la infraestructura y los componentes necesarios.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.Recomienda asistir a las sesiones de disciplina y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento tecnológico en arquitectura'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en los principios y prácticas de la arquitectura tecnológica, proporcionando ejemplos prácticos y guiando a los equipos en la implementación efectiva de soluciones IT', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.Recomienda asistir a las sesiones de disciplina y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimiento tecnológico en arquitectura'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce las tecnologías audiovisuales más comunes y tiene una idea general de las tendencias actuales.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), 'Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.
', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimientos audiovisuales y nuevas tecnologías'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede utilizar tecnologías audiovisuales con asistencia y seguir tendencias tecnológicas con orientación.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 

Certificado en:
IA - curso gratuito Elementos de IA Universidad de Helsinki
- Iconik
- NDI
- Streaming Technologies
- Gestion de equipos


', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimientos audiovisuales y nuevas tecnologías'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Maneja de forma autónoma las últimas tecnologías audiovisuales y es capaz de identificar y seguir tendencias tecnológicas por su cuenta.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 


Certificado en:
IA - curso gratuito Elementos de IA Universidad de Helsinki
- Iconik
- NDI
- Streaming Technologies
- Gestion de equipos



', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimientos audiovisuales y nuevas tecnologías'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Domina las tecnologías audiovisuales avanzadas y las tendencias tecnológicas, y puede enseñar a otros cómo utilizarlas y mantenerse actualizados.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.


', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimientos audiovisuales y nuevas tecnologías'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los conceptos fundamentales de PPM, como la definición de cartera de proyectos, criterios de selección y priorización', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.


', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimientos en PPM'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede participar en la gestión de la cartera de proyectos con supervisión, aplicando técnicas básicas de evaluación y priorización de proyectos', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.


', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimientos en PPM'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona de manera autónoma la cartera de proyectos, incluyendo la asignación de recursos y la monitorización del progreso de los proyectos', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Agile Portfolio Management | Atlassian
Lean Portfolio Management | Atlassian

Lean Portfolio Management - Scaled Agile Framework



', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimientos en PPM'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de formar a otros en PPM, diseñar estrategias de gestión de carteras y liderar la implementación de sistemas de PPM en la organización', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'Formación SAFe Lean Portfolio Management', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimientos en PPM'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los conceptos fundamentales de la computación en la nube y su uso básico

Objetivo: Conceptos generales Cloud, Comprender los servicios en la nube y cómo se integran en la empresa. ​

Posibles contenidos: Conceptos de almacenamiento en la nube, modelos de servicios (SaaS, PaaS, IaaS), plataformas más comunes (AWS, Azure, Google Cloud) y las ventajas de escalabilidad, seguridad y costos de trabajar en la nube. ​', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Formación oficial_ Cloud for Dummies (by a dummy)-20240628_120526-Grabación de la reunión.mp4
LinkedIn Learning: Fundamentos de Cloud Computing', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimientos generales Cloud'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas básicas de computación en la nube con asistencia', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Itinerario Aprendizaje LinkedIn Learning', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimientos generales Cloud'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y aplica principios de computación en la nube de manera autónoma.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Itinerario Aprendizaje LinkedIn Learning', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimientos generales Cloud'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de enseñar y guiar a otros en el uso avanzado de la computación en la nube', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Itinerario Aprendizaje LinkedIn Learning', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Conocimientos generales Cloud'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce las funciones básicas de Copilot y entiende cómo puede asistir en tareas específicas. Familiarizado con los comandos y capacidades generales.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Curso LinkedIn Learning (Copilot esencial)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Copilot Avanzado'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede utilizar Copilot para completar tareas con orientación. Sabe cómo buscar ayuda y aplicar sugerencias de Copilot en proyectos específicos.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Curso LinkedIn Learning (Copilot intermedio)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Copilot Avanzado'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Utiliza Copilot de manera autónoma para optimizar flujos de trabajo y resolver problemas complejos. Integra Copilot en procesos diarios y maximiza su potencial.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Curso LinkedIn Learning (Copilot avanzado)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Copilot Avanzado'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Enseña a otros cómo utilizar Copilot de manera efectiva. Desarrolla estrategias para la implementación de Copilot en equipos y actúa como mentor para mejorar la productividad y eficiencia mediante el uso de Copilot', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'Training Microsoft Learn', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Copilot Avanzado'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los conceptos fundamentales del proceso de construcción de soluciones y su uso básico.

Objetivo: Comprender cómo funciona el proceso CSO. ​

Posibles contenidos: Qué es el proceso de CSO, su importancia en la organización, principales actores involucrados, fases del proceso y tipos de CSO. ', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '

Charla para toda la Organización sobre conocimientos basicos de CSO orientado a contexto Iberdrola.






', '
 
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'CSO'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas básicas en el proceso de construcción de soluciones con asistencia.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '


Charla para toda la Organización sobre conocimientos basicos de CSO orientado a contexto.




Además serán subidos los siguientes contenidos autoformativos a workday:

Distintos tipos de CSO y aplicabilidad según el tipo de ProyectoArtefactos de Seguridad en CSO
Recibirás una comunicación cuando estén disponibles en Workday.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'CSO'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y aplica principios del proceso de construcción de soluciones de manera autónoma', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 Acceder a las sesiones de tutorías planificadas y propuestas en#Time4CSO de Digital Boosters', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'CSO'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de enseñar y guiar a otros en el uso avanzado del proceso de construcción de soluciones', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 Acceder a las sesiones de tutorías planificadas y propuestas en#Time4CSO de Digital Boosters', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'CSO'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce las funcionalidades del ecosistema Microsoft 365 y Copilot, y su uso básico.

Objetivo: Conocer las posibilidades que ofrecen las herramientas disponibles en la organización de Microsoft 365 y Copilot Edge.​

Posibles Contenidos: Visión global de las herramientas de Microsoft disponibles dentro de la organización (Teams, OneDrive, Lists, Planner, etc.), y uso de Copilot Edge para mejorar la productividad mediante IA.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 Copilot: En el mes de abril será enviada una convocatoria desde  el correo flywithcopilot@iberdrola.es para la realización ce un circuito formativo deCopilot divido en 3 sesiones de 1,5h cada una:Fundamentos de CopilotPromptingCasos de uso

One drive: Microsoft One Drive:Saca todo tu potencial
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Ecosistema Microsoft 365 & Copilot'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas básicas utilizando las funcionalidades del ecosistema Microsoft 365 y Copilot con asistencia', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 Copilot: En el mes de abril será enviada una convocatoria desde  el correo flywithcopilot@iberdrola.es para la realización ce un circuito formativo deCopilot divido en 3 sesiones de 1,5h cada una:Fundamentos de CopilotPromptingCasos de uso

One drive: Microsoft One Drive:Saca todo tu potencial
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Ecosistema Microsoft 365 & Copilot'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y aplica funcionalidades del ecosistema Microsoft 365 y Copilot de manera autónoma', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 Copilot: En el mes de abril será enviada una convocatoria desde  el correo flywithcopilot@iberdrola.es para la realización ce un circuito formativo deCopilot divido en 3 sesiones de 1,5h cada una:Fundamentos de CopilotPromptingCasos de uso

One drive: Microsoft One Drive:Saca todo tu potencial
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Ecosistema Microsoft 365 & Copilot'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de enseñar y guiar a otros en el uso avanzado de las funcionalidades del ecosistema Microsoft 365 y Copilot', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 Copilot: En el mes de abril será enviada una convocatoria desde  el correo flywithcopilot@iberdrola.es para la realización ce un circuito formativo de Copilot divido en 3 sesiones de 1h aproximada cada una:Fundamentos de CopilotPromptingCasos de uso

One drive: Microsoft One Drive: Saca todo tu potencial', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Ecosistema Microsoft 365 & Copilot'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce las herramientas básicas de edición y puede realizar tareas simples', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Edición'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas de edición con asistencia, incluyendo la corrección de errores y la mejora de la calidad del contenido.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Edición'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Maneja de forma autónoma herramientas de edición avanzadas, aplicando técnicas de edición complejas para producir contenido de alta calidad.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Edición'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Domina la edición a nivel avanzado, incluyendo la creación de efectos especiales y la integración de múltiples elementos, y puede enseñar a otros cómo editar contenido de manera profesional.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Edición'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de la seguridad en entornos multicloud. Entiende los riesgos básicos y las medidas de protección iniciales.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 

Formación en Cloud impartida por Jorge Artajo

Formación oficial_ Cloud for Dummies (by a dummy)-20240621_120547-Grabación de la reunión.mp4
Formación oficial_ Cloud for Dummies (by a dummy)-20240628_120526-Grabación de la reunión.mp4
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Estrategia de seguridad en multicicloud'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede implementar medidas de seguridad en un entorno multicloud con orientación. Conoce las herramientas y técnicas básicas para proteger datos y aplicaciones en múltiples nubes.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 

AWS Certified Cloud Practitioner 
Certificación de AWS Certified Cloud Practitioner | AWS Certification | AWS

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Estrategia de seguridad en multicicloud'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y asegura entornos multicloud de manera autónoma. Desarrolla e implementa estrategias de seguridad, identifica vulnerabilidades y aplica soluciones adecuadas.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 

https://aws.amazon.com/es/certification/certified-solutions-architect-associate/




', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Estrategia de seguridad en multicicloud'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Enseña y guía a otros en la implementación de estrategias de seguridad en multicloud. Diseña políticas de seguridad a nivel organizacional y actúa como mentor para equipos en la gestión de la seguridad en entornos multicloud.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 

https://aws.amazon.com/es/certification/certified-security-specialty/o
Certificación AWS Certified Solutions Architect - Professional | AWS Certification | AWS




', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Estrategia de seguridad en multicicloud'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los conceptos fundamentales de la arquitectura de desarrollo de software, incluyendo las últimas actualizaciones y tendencias', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '

Se organizará una sesión especifica para responsables de COEs y  Responsables de Programas DigitalesAdemás. aqui encontrareis información actualizada sobre la estrategia y últimas tendencias dentro de Iberdrola: ARCHITECTURE GLOBAL - Documentos', '

Se organizará una sesión especifica para responsables de COEs y  Responsables de Programas Digitales

 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Estrategia y tendencias tecnológicas'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas básicas de arquitectura de software, incorporando actualizaciones y tendencias, con asistencia', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '

Se organizará una sesión especifica para responsables de COEs y  Responsables de Programas DigitalesAdemás. aqui encontrareis información actualizada sobre la estrategia y últimas tendencias dentro de Iberdrola: ARCHITECTURE GLOBAL - Documentos', '

Se organizará una sesión especifica para responsables de COEs y  Responsables de Programas Digitales
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Estrategia y tendencias tecnológicas'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y aplica principios de arquitectura de software de manera autónoma, manteniéndose al día con las últimas actualizaciones y tendencias', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '

Se organizará una sesión especifica para responsables de COEs y  Responsables de Programas DigitalesAdemás. aqui encontrareis información actualizada sobre la estrategia y últimas tendencias dentro de Iberdrola: ARCHITECTURE GLOBAL - Documentos', '

Se organizará una sesión especifica para responsables de COEs y  Responsables de Programas Digitales
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Estrategia y tendencias tecnológicas'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de enseñar y guiar a otros en el uso avanzado de la arquitectura de desarrollo de software, incluyendo las últimas actualizaciones y tendencias', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '

Se organizará una sesión especifica para responsables de COEs y  Responsables de Programas DigitalesAdemás. aqui encontrareis información actualizada sobre la estrategia y últimas tendencias dentro de Iberdrola: ARCHITECTURE GLOBAL - Documentos', '

Se organizará una sesión especifica para responsables de COEs y  Responsables de Programas Digitales
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Estrategia y tendencias tecnológicas'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los conceptos fundamentales de la gestión ágil de proyectos y su uso básico', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Fundamentos de la gestión ágil de proyectosScrum: The BasicsLeer la guía Scrum
Agile Project Management - What is it and how to get started?
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión ágil de proyectos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas básicas de gestión ágil de proyectos con asistencia', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '

Scrum: AdvancedAgile Product Owner Role: FoundationsAgile at work: Planning with Agile User Stories
Agile Project Management - What is it and how to get started?', '
 
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión ágil de proyectos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y aplica principios de gestión ágil de proyectos de manera autónoma', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '

Taller de Product Owner. 
Pendiente de organización de calendarios de capacitación.

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión ágil de proyectos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de enseñar y guiar a otros en el uso avanzado de la gestión ágil de proyectos', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'SAFe® Product Owner / Product Manager (PO/PM)Pendiente de organización de calendarios de capacitación.

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión ágil de proyectos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de la gestión de incidencias y puede registrar incidencias simples.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
ITIL: cursos en línea, formación y tutoriales en LinkedIn Learning', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de incidencias'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede gestionar incidencias con asistencia, incluyendo la clasificación y priorización de problemas, así como la comunicación con los equipos involucrados.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
ITIL: cursos en línea, formación y tutoriales en LinkedIn Learning', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de incidencias'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Maneja de forma autónoma todo el ciclo de vida de una incidencia, desde su identificación y análisis hasta su resolución y documentación, asegurando la mínima interrupción del servicio.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 


ITIL: cursos en línea, formación y tutoriales en LinkedIn Learning', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de incidencias'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Domina la gestión de incidencias a nivel avanzado, incluyendo la implementación de estrategias de prevención y mejora continua, y puede enseñar a otros cómo gestionar incidencias de manera eficaz.', 4, 800, 16, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 


Curso - ITIL 4® Foundation - TecnoFor Formación -
', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de incidencias'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), ' Conoce los principios fundamentales de la gestión de proyectos, incluyendo la planificación básica y la organización de tareas.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), 'Cursos LinkedIn Learning (Intermedio)
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de proyectos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede gestionar proyectos con asistencia, utilizando herramientas de gestión de proyectos y siguiendo metodologías estándar bajo supervisión.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '

Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.


', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de proyectos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), ' Maneja de forma autónoma todas las fases de un proyecto, desde la planificación y ejecución hasta el seguimiento y cierre, asegurando el cumplimiento de objetivos y plazos.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), 'Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de proyectos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Domina la gestión de proyectos a nivel avanzado, incluyendo la implementación de metodologías ágiles y la gestión de equipos complejos, y puede enseñar a otros cómo gestionar proyectos de manera eficaz.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), 'Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de proyectos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende y conoce el conjunto de actividades que permiten a los equipos “comenzar” el desarrollo de un producto de forma coherente y efectiva.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), 'Taller Inception/Sprint 0Pendiente de organización de calendarios de capacitación.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de proyectos con infraestructura nueva en Iberdrola'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas básicas relacionadas con las actividades iniciales del desarrollo de un producto, con asistencia', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), 'Taller Inception/Sprint 0Pendiente de organización de calendarios de capacitación.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de proyectos con infraestructura nueva en Iberdrola'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y aplica principios para iniciar el desarrollo de un producto de manera autónoma, asegurando coherencia y efectividad en el equipo.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), 'Taller Inception/Sprint 0Pendiente de organización de calendarios de capacitación.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de proyectos con infraestructura nueva en Iberdrola'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de enseñar y guiar a otros en las actividades avanzadas para iniciar el desarrollo de un producto de forma coherente y efectiva', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), 'Taller Inception/Sprint 0Pendiente de organización de calendarios de capacitación.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de proyectos con infraestructura nueva en Iberdrola'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de la gestión de riesgos de terceros y entiende su importancia en la protección de la organización. Familiarizado con los riesgos básicos asociados a proveedores externos.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'Curso M-85 Third party compliance: gestión de la cadena de suministro en seguridad de la información (AENOR): Curso Third party compliance: gestión de la cadena de suministro en seguridad de la información | AENORTPRM Fundamentals: Building A Risk Program (Shared Assessments): TPRM Fundamentals - Shared Assessments - Third Party Risk Management 



Third-Party Risk Management Expert | Certifications | OneTrust
Otras opciones de formación sobre gestión de riesgos de terceros en un entorno de ciberseguridad:
IBM - Gestión de riesgos de terceros (TPRM):Este curso ofrece una visión integral sobre la identificación, evaluación y mitigación de riesgos asociados con proveedores externos. Es ideal para entender cómo proteger la organización frente a vulnerabilidades introducidas por terceros
Master Class: Auditoría de la Ciberseguridad y Riesgos Tecnológicos:Ofrecido por Auditool, este curso virtual se centra en la auditoría de ciberseguridad y la gestión de riesgos tecnológicos. Incluye temas como normativas de ciberseguridad, tipos de ciberataques y herramientas tecnológicas avanzadas
OpenWebinars - Gestión en ciberseguridad: Gestión de riesgos:Este curso prepara a los participantes para gestionar riesgos en ciberseguridad de manera efectiva, enseñando a identificar, evaluar y mitigar riesgos, además de reportar su estado a la alta dirección
Libro electrónico de RISCCO:Un recurso que discute los conceptos básicos de la gestión de riesgos de terceros, diferenciándose de la gestión de riesgos de proveedores y proporcionando un marco para seleccionar el mejor enfoque para tu organización
ServiceNow - Gestión de riesgos de terceros:Este eBook ofrece información sobre la necesidad de evaluar y mitigar los riesgos de ciberseguridad asociados con los entornos de TI de las organizaciones

 ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de riesgos de terceros'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede participar en la identificación y evaluación de riesgos de terceros con orientación. Apoya en la implementación de controles y medidas de mitigación bajo supervisión.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
Curso Gestión de riesgo IT en la Cadena de Suministro (ISMS Forum) : 
Ciberseguridad Curso Gestión de riesgo IT en la Cadena de Suministro
Especialista Implantador ISO 27001 (AENOR / BSI): Curso Especialista Implantador ISO 27001 | AENOR





 Third-Party Risk Management Expert | Certifications | OneTrust
Otras opciones de formación sobre gestión de riesgos de terceros en un entorno de ciberseguridad:
IBM - Gestión de riesgos de terceros (TPRM):Este curso ofrece una visión integral sobre la identificación, evaluación y mitigación de riesgos asociados con proveedores externos. Es ideal para entender cómo proteger la organización frente a vulnerabilidades introducidas por terceros
Master Class: Auditoría de la Ciberseguridad y Riesgos Tecnológicos:Ofrecido por Auditool, este curso virtual se centra en la auditoría de ciberseguridad y la gestión de riesgos tecnológicos. Incluye temas como normativas de ciberseguridad, tipos de ciberataques y herramientas tecnológicas avanzadas
OpenWebinars - Gestión en ciberseguridad: Gestión de riesgos:Este curso prepara a los participantes para gestionar riesgos en ciberseguridad de manera efectiva, enseñando a identificar, evaluar y mitigar riesgos, además de reportar su estado a la alta dirección
Libro electrónico de RISCCO:Un recurso que discute los conceptos básicos de la gestión de riesgos de terceros, diferenciándose de la gestión de riesgos de proveedores y proporcionando un marco para seleccionar el mejor enfoque para tu organización
ServiceNow - Gestión de riesgos de terceros:Este eBook ofrece información sobre la necesidad de evaluar y mitigar los riesgos de ciberseguridad asociados con los entornos de TI de las organizaciones

 ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de riesgos de terceros'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y mitiga riesgos de terceros de manera autónoma. Desarrolla e implementa estrategias de gestión de riesgos, realiza evaluaciones de riesgos y supervisa el cumplimiento de los proveedores.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
Certified Third-Party Risk Professional (CTPRP) Certification
Certified Third-Party Risk Assessor (CTPRA) Certification (Shared Assessments)


 Third-Party Risk Management Expert | Certifications | OneTrust
Otras opciones de formación sobre gestión de riesgos de terceros en un entorno de ciberseguridad:
IBM - Gestión de riesgos de terceros (TPRM):Este curso ofrece una visión integral sobre la identificación, evaluación y mitigación de riesgos asociados con proveedores externos. Es ideal para entender cómo proteger la organización frente a vulnerabilidades introducidas por terceros
Master Class: Auditoría de la Ciberseguridad y Riesgos Tecnológicos:Ofrecido por Auditool, este curso virtual se centra en la auditoría de ciberseguridad y la gestión de riesgos tecnológicos. Incluye temas como normativas de ciberseguridad, tipos de ciberataques y herramientas tecnológicas avanzadas
OpenWebinars - Gestión en ciberseguridad: Gestión de riesgos:Este curso prepara a los participantes para gestionar riesgos en ciberseguridad de manera efectiva, enseñando a identificar, evaluar y mitigar riesgos, además de reportar su estado a la alta dirección
Libro electrónico de RISCCO:Un recurso que discute los conceptos básicos de la gestión de riesgos de terceros, diferenciándose de la gestión de riesgos de proveedores y proporcionando un marco para seleccionar el mejor enfoque para tu organización
ServiceNow - Gestión de riesgos de terceros:Este eBook ofrece información sobre la necesidad de evaluar y mitigar los riesgos de ciberseguridad asociados con los entornos de TI de las organizaciones

 ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de riesgos de terceros'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Enseña y guía a otros en la gestión de riesgos de terceros. Diseña políticas y procedimientos de gestión de riesgos a nivel organizacional y actúa como mentor para equipos en la evaluación y mitigación de riesgos de terceros.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
CISM (ISACA)

Third-Party Risk Management Expert | Certifications | OneTrust
Otras opciones de formación sobre gestión de riesgos de terceros en un entorno de ciberseguridad:
IBM - Gestión de riesgos de terceros (TPRM):Este curso ofrece una visión integral sobre la identificación, evaluación y mitigación de riesgos asociados con proveedores externos. Es ideal para entender cómo proteger la organización frente a vulnerabilidades introducidas por terceros
Master Class: Auditoría de la Ciberseguridad y Riesgos Tecnológicos:Ofrecido por Auditool, este curso virtual se centra en la auditoría de ciberseguridad y la gestión de riesgos tecnológicos. Incluye temas como normativas de ciberseguridad, tipos de ciberataques y herramientas tecnológicas avanzadas
OpenWebinars - Gestión en ciberseguridad: Gestión de riesgos:Este curso prepara a los participantes para gestionar riesgos en ciberseguridad de manera efectiva, enseñando a identificar, evaluar y mitigar riesgos, además de reportar su estado a la alta dirección
Libro electrónico de RISCCO:Un recurso que discute los conceptos básicos de la gestión de riesgos de terceros, diferenciándose de la gestión de riesgos de proveedores y proporcionando un marco para seleccionar el mejor enfoque para tu organización
ServiceNow - Gestión de riesgos de terceros:Este eBook ofrece información sobre la necesidad de evaluar y mitigar los riesgos de ciberseguridad asociados con los entornos de TI de las organizaciones

 ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión de riesgos de terceros'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos básicos de la gestión del cambio y entiende su importancia en las organizaciones. Familiarizado con algunas herramientas y técnicas básicas.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), 'Cursos LinkedIn Learning (Intermedio): Gestión del cambioC3 Webinar -Gestión del Cambio Digital by Ignacio Mendaza - Workday
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión del Cambio'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede participar en iniciativas de gestión del cambio con orientación. Apoya en la implementación de planes de cambio y colabora con equipos para facilitar la transición.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), 'Cursos LinkedIn Learning (Intermedio): Gestión del cambioC3 Webinar -Gestión del Cambio Digital by Ignacio Mendaza - Workday
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión del Cambio'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y lidera iniciativas de cambio de manera autónoma. Desarrolla y ejecuta planes de cambio, identifica resistencias y aplica estrategias para superarlas.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '

Certificación Fundamentos en Gestión del Cambio', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión del Cambio'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Enseña y guía a otros en la gestión del cambio. Diseña estrategias de cambio a nivel organizacional y actúa como mentor y coach para líderes y equipos en procesos de transformación.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 Certificación Profesional de la Gestión del Cambio', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión del Cambio'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los conceptos fundamentales de la gestión de presupuestos a nivel de programa y portafolio, y el uso básico de herramientas relacionadas', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Equipo de Splan da sesión formativa a los equipos de IT involucrados.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión Presupuestos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas básicas de gestión de presupuestos a nivel de programa y portafolio con asistencia, utilizando herramientas relacionadas.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Equipo de Splan da sesión formativa a los equipos de IT involucrados.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión Presupuestos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y aplica principios de gestión de presupuestos a nivel de programa y portafolio de manera autónoma, utilizando herramientas relacionadas', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Equipo de Splan da sesión formativa a los equipos de IT involucrados.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión Presupuestos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de enseñar y guiar a otros en el uso avanzado de la gestión de presupuestos a nivel de programa y portafolio, incluyendo el uso de herramientas relacionadas', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
Equipo de Splan da sesión formativa a los equipos de IT involucrados.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gestión Presupuestos'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '

Sesión básica Junio Gobierno del Dato impartida por la Oficina Global del Dato. Otros recursos disponibles:  02. Data Governance






', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gobierno del dato'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '

Sesión básica Junio Gobierno del Dato impartida por la Oficina Global del Dato. Otros recursos disponibles:  02. Data Governance






', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gobierno del dato'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '

Sesión Avanzada Septiembre Gobierno del Dato impartida por la Oficina Global del Dato. Otros recursos disponibles: 02. Data Governance





', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gobierno del dato'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '

Sesión Avanzada Septiembre Gobierno del Dato impartida por la Oficina Global del Dato. Otros recursos disponibles: 02. Data Governance




', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Gobierno del dato'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de las herramientas de diseño de arquitectura, incluyendo sus principales funcionalidades y casos de uso básicos.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Formación a impartir por el equipo de Arquitectura de soluciones sobre Enteprise Architect. (Las formaciones tendran que ser lanzadas desde workday para que sean incluidas como contenido formativo).


', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Herramientas de diseño de arquitectura'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de las herramientas de diseño de arquitectura y puede utilizarlas para crear y modificar diagramas arquitectónicos con la orientación de un experto, aplicando buenas prácticas de diseño.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Formación a impartir por el equipo de Arquitectura de soluciones sobre Enteprise Architect. (Las formaciones tendran que ser lanzadas desde workday para que sean incluidas como contenido formativo).


', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Herramientas de diseño de arquitectura'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de las herramientas de diseño de arquitectura y puede diseñar, implementar y documentar arquitecturas complejas de manera autónoma, optimizando el uso de las herramientas para mejorar la eficiencia y la precisión.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Formación a impartir por el equipo de Arquitectura de soluciones sobre Enteprise Architect. (Las formaciones tendran que ser lanzadas desde workday para que sean incluidas como contenido formativo).


', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Herramientas de diseño de arquitectura'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en el uso de herramientas de diseño de arquitectura, proporcionando ejemplos prácticos y guiando a los equipos en la creación de diseños arquitectónicos efectivos y bien documentados.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Formación a impartir por el equipo de Arquitectura de soluciones sobre Enteprise Architect. (Las formaciones tendran que ser lanzadas desde workday para que sean incluidas como contenido formativo).


', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Herramientas de diseño de arquitectura'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los conceptos fundamentales de la inteligencia artificial generativa y su uso básico.

Objetivo: Entender los conceptos generales y aplicaciones de la IA Generativa. ​
Posibles Contenidos: Introducción a la IA Generativa - Conceptos básicos y evolución. Modelos de IA Generativa - Funcionamiento de modelos como GPT. Aplicaciones Prácticas - Generación de contenidos y automatización.​

IA Responsable (RAI) - Ética, Mitigación de sesgos y transparencia. Integración Empresarial - Incorporación en flujos de trabajo.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Formación gratuita:

What Is Generative AI?Formación interna Workday para todos los empleados. Se publicará un curso de IA Responsable para todos en Workday.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'IA Generativa'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas básicas relacionadas con la inteligencia artificial generativa con asistencia.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Introduction to Prompt Engineering for Generative AI
Generative AI: Introduction to Large Language Models
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'IA Generativa'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y aplica principios de inteligencia artificial generativa de manera autónoma.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Azure OpenAI: Generative AI Models and How to Use Them

Generative AI and Large Language Models on AWS
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'IA Generativa'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de enseñar y guiar a otros en el uso avanzado de la inteligencia artificial generativa.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Generative AI: Working with Large Language ModelsGenerative AI and LLMOps: Building Blocks and Applications

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'IA Generativa'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'Curso Apple Inteligence Iberdrola.pdfCurso iOS y iPad Iberdrola.pdf', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'iOS'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'Curso Apple Inteligence Iberdrola.pdfCurso iOS y iPad Iberdrola.pdf', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'iOS'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'Curso Apple Inteligence Iberdrola.pdfCurso iOS y iPad Iberdrola.pdf', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'iOS'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'Curso Apple Inteligence Iberdrola.pdfCurso iOS y iPad Iberdrola.pdf', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'iOS'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de la norma ISO 27001 y su importancia en la gestión de la seguridad de la información. Familiarizado con los requisitos básicos y los principios de un Sistema de Gestión de Seguridad de la Información (SGSI).', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), 'Curso LinkedIn Learning: ISO27001', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'ISO 27001'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede participar en la implementación de un SGSI según ISO 27001 con orientación. Conoce las herramientas y técnicas básicas para identificar y gestionar riesgos de seguridad de la información bajo supervisión.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), 'Curso LinkedIn Learning: ISO27001', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'ISO 27001'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y mantiene un SGSI de manera autónoma conforme a ISO 27001. Realiza auditorías internas, identifica y mitiga riesgos, y asegura el cumplimiento continuo de la norma.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), 'Curso LinkedIn Learning: ISO27001', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'ISO 27001'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Enseña y guía a otros en la implementación y mantenimiento de un SGSI conforme a ISO 27001. Desarrolla políticas de seguridad de la información a nivel organizacional y actúa como auditor líder o consultor en la norma.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), 'Curso LinkedIn Learning: ISO27001', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'ISO 27001'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce las funciones básicas de Jira, como crear y actualizar tickets.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Itinerario formativo: LinkedIn Learning: Managing Jira Projects (I,II,III)

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Jira'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede utilizar Jira para gestionar proyectos con asistencia, incluyendo la configuración de tableros y la asignación de tareas.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Itinerario formativo: LinkedIn Learning: Managing Jira Projects (I,II,III)

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Jira'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Maneja Jira de forma autónoma, configurando flujos de trabajo, generando informes y optimizando el uso de la herramienta para la gestión de proyectos.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
JIRA Project Management with Jira Cloud (I, II, III) -->JIRA | LinkedIn Learning

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Jira'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Domina Jira a nivel avanzado, incluyendo la personalización de la herramienta y la integración con otras aplicaciones, y puede enseñar a otros cómo utilizarla eficazmente.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Atlassian

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Jira'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de Lean Portfolio Management, incluyendo la gestión de portafolios ágiles y los principios de Lean.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Agile Portfolio Management | Atlassian
Lean Portfolio Management | Atlassian

Lean Portfolio Management - Scaled Agile Framework
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lean Portfolio Management'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de Lean Portfolio Management y puede participar en la planificación y ejecución de portafolios con la orientación de un experto, contribuyendo a la alineación estratégica y la entrega de valor.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Agile Portfolio Management | Atlassian
Lean Portfolio Management | Atlassian
Lean Portfolio Management - Scaled Agile Framework
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lean Portfolio Management'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de Lean Portfolio Management y puede aplicar sus principios y prácticas de manera autónoma, gestionando portafolios de proyectos para maximizar el valor y la eficiencia.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
Formación SAFe Lean Portfolio Management
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lean Portfolio Management'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en Lean Portfolio Management, proporcionando ejemplos prácticos y guiando a los equipos en la implementación efectiva de sus principios y prácticas para mejorar la gestión de portafolios.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '

Formación SAFe Lean Portfolio Management', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lean Portfolio Management'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los conceptos fundamentales del lenguaje de programación Java y su uso básico', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Cursos LinkedIn Learning (Esencial)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion JAVA'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas básicas de programación en Java con asistencia', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Cursos LinkedIn Learning (Esencial)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion JAVA'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y aplica principios de programación en Java de manera autónoma', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Cursos LinkedIn Learning (Esencial)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion JAVA'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de enseñar y guiar a otros en el uso avanzado del lenguaje de programación Java.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%No identificado%'), '
Cursos LinkedIn Learning (Esencial)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion JAVA'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales del lenguaje de programación Python, incluyendo su sintaxis básica, tipos de datos y estructuras de control.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Cursos LinkedIn Learning (Esencial)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion Python'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles del lenguaje Python y puede escribir y depurar código con la orientación de un experto, utilizando características avanzadas como listas, diccionarios y funciones.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Cursos LinkedIn Learning (Intermedio)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion Python'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo del lenguaje Python y puede desarrollar aplicaciones completas de manera autónoma, aprovechando bibliotecas y frameworks como Django, Flask y Pandas.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Cursos LinkedIn Learning (Avanzado)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion Python'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en el lenguaje de programación Python, proporcionando ejemplos prácticos y guiando a los equipos en la escritura de código eficiente y escalable en Python.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '


Cursos LinkedIn Learning (Avanzado)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion Python'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales del lenguaje de programación Scala, incluyendo su sintaxis básica, tipos de datos y estructuras de control.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
 Cursos LinkedIn Learning (Esencial)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion Scala'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), ' Entiende los detalles del lenguaje Scala y puede escribir y depurar código con la orientación de un experto, utilizando características avanzadas como funciones de orden superior y colecciones inmutables.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
 Cursos LinkedIn Learning (Esencial)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion Scala'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo del lenguaje Scala y puede desarrollar aplicaciones completas de manera autónoma, aprovechando características avanzadas como la programación funcional y la concurrencia.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%No identificado%'), '
 
 

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion Scala'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en el lenguaje de programación Scala, proporcionando ejemplos prácticos y guiando a los equipos en la escritura de código eficiente y escalable en Scala.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%No identificado%'), '
 
 
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion Scala'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales del lenguaje de programación Spark, incluyendo su sintaxis básica, estructuras de datos y operaciones básicas de transformación y acción.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Apache Spark: cursos en línea, formación y tutoriales en LinkedIn Learning', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion Spark'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles del lenguaje Spark y puede escribir y depurar código con la orientación de un experto, utilizando características avanzadas como RDDs (Resilient Distributed Datasets) y DataFrames.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Apache Spark: cursos en línea, formación y tutoriales en LinkedIn Learning', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion Spark'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo del lenguaje Spark y puede desarrollar aplicaciones de procesamiento de datos a gran escala de manera autónoma, optimizando el rendimiento y la eficiencia.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Apache Spark: cursos en línea, formación y tutoriales en LinkedIn Learning', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion Spark'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en el lenguaje de programación Spark, proporcionando ejemplos prácticos y guiando a los equipos en la escritura de código eficiente y escalable en Spark.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Apache Spark: cursos en línea, formación y tutoriales en LinkedIn Learning', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguaje Programacion Spark'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de SQL y PL/SQL, incluyendo la sintaxis básica, consultas simples y operaciones CRUD (Crear, Leer, Actualizar, Eliminar).', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
 
Cursos LinkedIn Learning (Esencial)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguajes de Programación SQL y PL SQL'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de SQL y PL/SQL y puede escribir y depurar consultas más complejas con la orientación de un experto, utilizando funciones, subconsultas y uniones.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
 
Cursos LinkedIn Learning (Intermedio)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguajes de Programación SQL y PL SQL'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de SQL y PL/SQL y puede desarrollar procedimientos almacenados, triggers y funciones de manera autónoma, optimizando el rendimiento de las consultas y la gestión de bases de datos.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
 
Cursos LinkedIn Learning (Avanzado)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguajes de Programación SQL y PL SQL'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en el lenguaje de programación SQL y PL/SQL, proporcionando ejemplos prácticos y guiando a los equipos en la escritura de consultas eficientes y el desarrollo de soluciones avanzadas en bases de datos.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 

Cursos LinkedIn Learning (Avanzado)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Lenguajes de Programación SQL y PL SQL'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de las metodologías ágiles, incluyendo los principios del Manifiesto Ágil y las prácticas básicas de Scrum y Kanban.

Objetivo: Conocimientos generales sobre metodologías ágiles, principios, valores y sus aplicaciones dentro de Iberdrola. ​

​Posibles contenidos: Introducción a marcos de trabajo ágiles como Scrum y Kanban, otras metodologías ágiles, y roles y responsabilidades en equipos ágiles. ​', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Previo: 
Agile Manifesto for Software Development | Atlassian
20240521 - Enfoque ágil en la gestión de proyectos digitales.mp4Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.



', '

 Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Metodologías ágiles'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de las metodologías ágiles y puede participar en ceremonias ágiles (como sprints, retrospectivas y daily stand-ups) con la orientación de un experto, aplicando prácticas ágiles en proyectos.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 

Leer la guía scrum: Home | Scrum Guides
Scrum the Basics, Agile Foundations, Scrum Advanced, Agile at Work
Scrum Master Learning Path | ScrumOpen Assessmet gratuito de prueba de la certificación. Hacer hasta que tengas 0 fallos



', '

 Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Metodologías ágiles'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de las metodologías ágiles y puede implementar y gestionar proyectos ágiles de manera autónoma, facilitando la adopción de prácticas ágiles y mejorando la eficiencia del equipo.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '

Consultar con gda/skill owner para ayudar a orientar necesidades formativas en esta habilidad y nivel.
Contacto Nacho Salvador: i.salvador@iberdrola.es', '

 Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Metodologías ágiles'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en las metodologías ágiles, proporcionando ejemplos prácticos y guiando a los equipos en la implementación efectiva de prácticas ágiles para optimizar la entrega de valor y la colaboración', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 Consultar con gda/skill owner para ayudar a orientar necesidades formativas en esta habilidad y nivel. Contacto Nacho Salvador: i.salvador@iberdrola.es', '

 Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Metodologías ágiles'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de las herramientas de Iberdrola para métricas de calidad técnica y puede identificar sus principales funcionalidades.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Modelo de calidad de desarrollo'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de las herramientas de Iberdrola para métricas de calidad técnica y puede utilizarlas con la orientación de un experto para analizar y reportar datos de calidad', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Modelo de calidad de desarrollo'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de las herramientas de Iberdrola para métricas de calidad técnica y puede aplicarlas de manera autónoma para monitorear, analizar y mejorar la calidad técnica de los proyectos.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Modelo de calidad de desarrollo'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en el uso de las herramientas de Iberdrola para métricas de calidad técnica, proporcionando ejemplos prácticos y guiando a los equipos en su aplicación efectiva', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Modelo de calidad de desarrollo'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de los sistemas y plataformas cloud, incluyendo los modelos de servicio (IaaS, PaaS, SaaS).', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Azure: Fundamentos de seguridad | LinkedIn Learning
Clases online de Aprende gobernanza de Azure | LinkedIn LearningClases online de Introducción a AWS: Servicios principales | LinkedIn Learning

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Modelos de control de sistemas y plataformas Cloud'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede gestionar sistemas y plataformas cloud con asistencia, incluyendo la configuración básica y la implementación de controles de seguridad.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Azure: Fundamentos de seguridad | LinkedIn Learning
Clases online de Aprende gobernanza de Azure | LinkedIn LearningClases online de Introducción a AWS: Servicios principales | LinkedIn Learning

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Modelos de control de sistemas y plataformas Cloud'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Maneja de forma autónoma la administración de sistemas y plataformas cloud, optimizando recursos, configurando controles avanzados y asegurando la continuidad del servicio.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Azure: Fundamentos de seguridad | LinkedIn Learning
Clases online de Aprende gobernanza de Azure | LinkedIn LearningClases online de Introducción a AWS: Servicios principales | LinkedIn Learning

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Modelos de control de sistemas y plataformas Cloud'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Domina los modelos de control de sistemas y plataformas cloud a nivel avanzado, incluyendo la integración y automatización de servicios, y puede enseñar a otros cómo gestionar y optimizar estos entornos de manera eficaz.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
Azure: Fundamentos de seguridad | LinkedIn Learning
Clases online de Aprende gobernanza de Azure | LinkedIn LearningClases online de Introducción a AWS: Servicios principales | LinkedIn Learning

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Modelos de control de sistemas y plataformas Cloud'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de la Directiva NIS2 y entiende su importancia en la ciberseguridad. Familiarizado con los requisitos básicos y las áreas críticas que abarca.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '

Curso NIS2 Conoce y aplica el framework regulatorio       de ciberseguridad (ISMS Forum)
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'NIS2'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede implementar medidas de ciberseguridad según la NIS2 con orientación. Participa en la evaluación de riesgos y en la aplicación de controles de seguridad bajo supervisión.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '

Especialista Implantador ISO 27001 (AENOR / BSI)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'NIS2'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y asegura el cumplimiento de la NIS2 de manera autónoma. Desarrolla e implementa estrategias de ciberseguridad, realiza evaluaciones de riesgos y gestiona incidentes de seguridad.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'Curso S-0G Especialista Implantador NIS 2 (AENOR)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'NIS2'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Enseña y guía a otros en la implementación de la NIS2. Diseña políticas de ciberseguridad a nivel organizacional y actúa como mentor para equipos en la gestión de la ciberseguridad y el cumplimiento de la NIS2.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'CISM (ISACA)
Curso S-0F Auditor/a Líder NIS 2 (AENOR)
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'NIS2'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de las nuevas tendencias en desarrollo de productos, incluyendo metodologías ágiles y enfoques centrados en el usuario.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
charla inspiracional desde el equipo Lean Agile.




', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Nuevas tendencias en Product Development'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de las nuevas tendencias en desarrollo de productos y puede aplicarlas en proyectos con la orientación de un experto, participando en la implementación de metodologías y herramientas modernas.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '




', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Nuevas tendencias en Product Development'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de las nuevas tendencias en desarrollo de productos y puede integrarlas de manera autónoma en el ciclo de vida del producto, optimizando procesos y resultados', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), ' 
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Nuevas tendencias en Product Development'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en las nuevas tendencias en desarrollo de productos, proporcionando ejemplos prácticos y guiando a los equipos en la adopción de metodologías y herramientas innovadoras', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), ' 
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Nuevas tendencias en Product Development'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de los OKRs, incluyendo la definición de objetivos y resultados clave, y entiende su propósito en la gestión del rendimiento.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '

Curso LinkedIn Learning
OKRs: The Ultimate Guide | Atlassian
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'OKRs'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de los OKRs y puede participar en la creación y seguimiento de OKRs con la orientación de un experto, contribuyendo a la alineación de objetivos en el equipo.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Curso LinkedIn Learning
OKRs: The Ultimate Guide | Atlassian', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'OKRs'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de los OKRs y puede diseñar, implementar y monitorear OKRs de manera autónoma, asegurando que los objetivos y resultados clave estén alineados con la estrategia organizacional.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'Contactar con el Skill Owner (equipo Lean & Agile - lean-agile@iberdrola.es) para recursos ad-hoc.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'OKRs'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en la metodología de OKRs, proporcionando ejemplos prácticos y guiando a los equipos en la creación y seguimiento efectivo de OKRs para mejorar el rendimiento y la alineación estratégica.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), ' Contactar con el Skill Owner (equipo Lean & Agile - lean-agile@iberdrola.es) para recursos ad-hoc.', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'OKRs'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de la protección de la información, incluyendo la importancia de la confidencialidad, integridad y disponibilidad de los datos.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 Curso LinkedIn Learning: Microsoft 365 Protección de la información', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Protección de la información'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de las prácticas de protección de la información y puede implementar medidas básicas de seguridad con la orientación de un experto, como el uso de contraseñas seguras y la encriptación de datos.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.

 ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Protección de la información'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de la protección de la información y puede diseñar, implementar y gestionar políticas de seguridad de manera autónoma, asegurando la protección de los datos sensibles y cumpliendo con las normativas de seguridad', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 

Curso formacion reglada MS-Purview
(1.000€ aprox)


 ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Protección de la información'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en las mejores prácticas de protección de la información, proporcionando ejemplos prácticos y guiando a los equipos en la implementación de soluciones de seguridad avanzadas para proteger los datos de la organización', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Acciones de capacitación impartidas por gda/skill owner. Pendiente de organización de calendarios de capacitación.

 ', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Protección de la información'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene una comprensión general de las últimas tecnologías y tendencias, pero no las sigue activamente.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.

Recomienda asistir a las sesiones de la disciplina de arquitectura, tech workshops que organiza el equipo de Innovación para estar actualizados en temas de arquitectura y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.', '

 

Asistir a las sesiones de Viernes Tecnológicos
Consultar con equipo de Arquitectura.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Radar tecnológico'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede identificar y entender nuevas tecnologías con la orientación de expertos o mediante recursos específicos.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.
Recomienda asistir a las sesiones de la disciplina de arquitectura, tech workshops que organiza el equipo de Innovación para estar actualizados en temas de arquitectura y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.', '

 

Asistir a las sesiones de Viernes TecnológicosConsultar con equipo de Arquitectura.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Radar tecnológico'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Mantiene un seguimiento regular de las últimas tecnologías y tendencias, y puede evaluar su relevancia y aplicabilidad de manera independiente.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.
Recomienda asistir a las sesiones de la disciplina de arquitectura, tech workshops que organiza el equipo de Innovación para estar actualizados en temas de arquitectura y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.', '

 

Asistir a las sesiones de Viernes TecnológicosConsultar con equipo de Arquitectura.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Radar tecnológico'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'No solo está al día con las últimas tecnologías, sino que también puede enseñar y guiar a otros en cómo mantenerse informados y aplicar estas tecnologías en diferentes contextos.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.
Recomienda asistir a las sesiones de la disciplina de arquitectura, tech workshops que organiza el equipo de Innovación para estar actualizados en temas de arquitectura y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.', '

 

Asistir a las sesiones de Viernes TecnológicosConsultar con equipo de Arquitectura.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Radar tecnológico'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los conceptos fundamentales de Power BI y su uso básico para crear informes y visualizaciones simples.

Objetivo: Aprender a crear informes y paneles de control interactivos. ​

​Posibles contenidos: Conceptos básicos de Power BI, cómo crear visualizaciones y reportes sencillos con datos disponibles, e interpretación de informes para la toma de decisiones. ', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '

Getting Started with Power BI | LinkedIn Learning

Learning Power BI Desktop (2022) | LinkedIn Learning

Power BI Quick Tips | LinkedIn Learning', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Reporting y Dashboards - Power BI'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas básicas en Power BI, como la creación de informes y visualizaciones, con asistencia', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '

Power BI: limpiar, transformar, modelar y visualizar datos | LinkedIn Learning
Aprende a crear informes analíticos con Power BI | LinkedIn Learning
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Reporting y Dashboards - Power BI'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y aplica principios de Power BI de manera autónoma, incluyendo la creación de informes complejos y la manipulación de datos', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Advanced Power BI: DAX Language, Formulas, and Calculations | LinkedIn Learning
Power BI Data Methods | LinkedIn Learning
Advanced Power BI Custom Visuals with d3.js | LinkedIn Learning


', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Reporting y Dashboards - Power BI'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de enseñar y guiar a otros en el uso avanzado de Power BI, incluyendo la creación de dashboards interactivos y la implementación de mejores prácticas.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 
Advanced Power BI: DAX Language, Formulas, and Calculations | LinkedIn Learning
Power BI Data Methods | LinkedIn Learning
Advanced Power BI Custom Visuals with d3.js | LinkedIn Learning


', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Reporting y Dashboards - Power BI'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Cursos LinkedIn Learning (Conviértete en especialista en seguridad de la información)


', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Risk Management'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%No identificado%'), '
 


', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Risk Management'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
 
Cursos LinkedIn Learning (Conviértete en especialista en seguridad de la información)
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Risk Management'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%No identificado%'), '
 
 
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Risk Management'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de SAFe, incluyendo sus principios y componentes clave, como Agile Release Trains (ARTs) y PI Planning.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '

Formación Leading SAFe', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SAFe'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de SAFe y puede participar en eventos y ceremonias de SAFe con la orientación de un experto, contribuyendo a la implementación de prácticas ágiles a escala.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'Formación Implementing SAFe', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SAFe'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de SAFe y puede aplicar sus principios y prácticas de manera autónoma en la organización, facilitando la adopción de SAFe y mejorando la coordinación entre equipos', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'Formación SAFe Lean Portfolio Management', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SAFe'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en SAFe, proporcionando ejemplos prácticos y guiando a los equipos en la implementación efectiva de SAFe, asegurando la alineación y entrega de valor a escala', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), 'Formación SAFe Practice Consultant (SPC)t', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SAFe'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de los procesos técnicos de Iberdrola y puede identificar sus principales componentes y objetivos.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
SAP IB-ComuniTI+Valorar necesidades y contactar con Skill Owner en caso de que sea necesario organizar formación interna.

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SAP IB'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de los procesos técnicos de Iberdrola y puede participar en su implementación y seguimiento con la orientación de un experto.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
SAP IB-ComuniTI+Valorar necesidades y contactar con Skill Owner en caso de que sea necesario organizar formación interna.

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SAP IB'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de los procesos técnicos de Iberdrola y puede aplicarlos de manera autónoma en proyectos y operaciones, asegurando su correcta ejecución.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
SAP IB-ComuniTI+Valorar necesidades y contactar con Skill Owner en caso de que sea necesario organizar formación interna.

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SAP IB'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en los procesos técnicos de Iberdrola, proporcionando ejemplos prácticos y guiando a los equipos en su aplicación efectiva.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
SAP IB-ComuniTI+Valorar necesidades y contactar con Skill Owner en caso de que sea necesario organizar formación interna.

', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SAP IB'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene una comprensión básica de los sistemas operativos y contenedores, pero no puede gestionarlos ni configurarlos de manera efectiva.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Curso LinkedIn Learning (Esencial)

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Sistemas operativos y contenedores'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede gestionar y configurar sistemas operativos y contenedores con la orientación de expertos o utilizando recursos específicos.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Curso LinkedIn Learning (Intermedio)

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Sistemas operativos y contenedores'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona, configura y optimiza sistemas operativos y contenedores de manera independiente, asegurando su correcto funcionamiento y eficiencia', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Curso LinkedIn Learning (Avanzado)

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Sistemas operativos y contenedores'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'No solo gestiona y optimiza sistemas operativos y contenedores de manera efectiva, sino que también puede enseñar y guiar a otros en cómo utilizarlos y administrarlos en diferentes entornos', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Curso LinkedIn Learning (Avanzado)

', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Sistemas operativos y contenedores'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los conceptos fundamentales de SPM (Sustituto de Clarity) y su uso básico para la gestión de proyectos y portafolios', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Asistir a las formaciones organizadas por el equipoServiceNow PPM. Pendientes de convocatoria.


', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SPM (Sustituto de Clarity)'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas básicas en SPM (Sustituto de Clarity), como la gestión de proyectos y portafolios, con asistencia', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Asistir a las formaciones organizadas por el equipoServiceNow PPM. Pendientes de convocatoria.


', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SPM (Sustituto de Clarity)'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y aplica principios de SPM (Sustituto de Clarity) de manera autónoma, incluyendo la planificación y seguimiento de proyectos complejos', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Asistir a las formaciones organizadas por el equipoServiceNow PPM. Pendientes de convocatoria.


', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SPM (Sustituto de Clarity)'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de enseñar y guiar a otros en el uso avanzado de SPM (Sustituto de Clarity), incluyendo la implementación de mejores prácticas y la optimización de procesos', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Asistir a las formaciones organizadas por el equipoServiceNow PPM. Pendientes de convocatoria.


', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SPM (Sustituto de Clarity)'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
Read - EY SSDLC Slides (SH to provide link)
Read -NCSC Secure Development Guide


Watch -Application Security in DevSecOps (1h 30m)
Watch -DevOpsFoundations: DevSecOps (1h)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SSDLC'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 

Read - NIST SSDF (SP 800-218) - (https://csrc.nist.gov/publications/detail/sp/800-218/final)
Read -OWASP SAMM (Software Assurance Maturity Model)
Read -Threat Modelling: Designing for Security (Book) 


Watch -Developing Secure Software (1h 30m)
Watch -Learning Threat Modelling for Security Professionals (45m)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SSDLC'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Autoformación%'), '
 
 

Read - ISO27034 - external? (https://www.iso.org/standard/44378.html (summary page))
Read - Microsoft SDL Practices 
Read - OWASP Threat Modelling Cheat Sheet 


Watch -Get Ahead in DevSecOps (Learning Path)
Watch -Improve Your Threat Modelling Skills (Learning Path)
Watch -Threat Modelling in AI/ML Systems(1hr)', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SSDLC'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), '', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Externa%'), '
 
 

Una a decidir por el usuario:



- CSSLP (https://www.isc2.org/Certifications/CSSLP)
- CISSP
- CISM
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'SSDLC'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los conceptos fundamentales del Stack Tecnológico de Iberdrola y su uso básico.

Objetivo: Conceptos generales arquitectura Iberdrola. Familiarizarse con las herramientas y plataformas tecnológicas que usa la empresa. ​

​Posibles contenidos: Exploración de los sistemas y tecnologías que componen el entorno digital de la empresa (servidores, lenguajes de programación, frameworks, herramientas de colaboración, bases de datos, etc.). ', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Sesión interna impartida por Ivan Santamaria.12 de Mayo 10:00 -11:00
Enlace a sesión.
La sesión será grabada y se publicará en Workday.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Stack tecnológico Iberdrola'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede realizar tareas básicas utilizando el Stack Tecnológico de Iberdrola con asistencia', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Sesión interna impartida por Ivan Santamaria.12 de Mayo 10:00 -11:00
Enlace a sesión.
La sesión será grabada y se publicará en Workday.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Stack tecnológico Iberdrola'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Gestiona y aplica principios del Stack Tecnológico de Iberdrola de manera autónoma', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Sesión interna impartida por Ivan Santamaria.12 de Mayo 10:00 -11:00
Enlace a sesión.
La sesión será grabada y se publicará en Workday.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Stack tecnológico Iberdrola'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Capaz de enseñar y guiar a otros en el uso avanzado del Stack Tecnológico de Iberdrola', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Sesión interna impartida por Ivan Santamaria.12 de Mayo 10:00 -11:00
Enlace a sesión.
La sesión será grabada y se publicará en Workday.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Stack tecnológico Iberdrola'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de las tecnologías de desarrollo, incluyendo lenguajes de programación, frameworks y herramientas básicas de desarrollo.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Necesario hablar con responsable de equipo para enfocar y recibir la propuesta formativa', '


Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Tecnologías de desarrollo'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de diversas tecnologías de desarrollo y puede utilizarlas para crear y depurar aplicaciones con la orientación de un experto, aplicando buenas prácticas de codificación.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Necesario hablar con responsable de equipo para enfocar y recibir la propuesta formativa', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Tecnologías de desarrollo'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de múltiples tecnologías de desarrollo y puede diseñar, implementar y mantener aplicaciones complejas de manera autónoma, optimizando el rendimiento y la escalabilidad.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Necesario hablar con responsable de equipo para enfocar y recibir la propuesta formativa', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Tecnologías de desarrollo'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en el uso de tecnologías de desarrollo, proporcionando ejemplos prácticos y guiando a los equipos en la adopción de nuevas herramientas y metodologías para mejorar la eficiencia y la calidad del desarrollo de software.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Necesario hablar con responsable de equipo para enfocar y recibir la propuesta formativa', '

 Participación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Tecnologías de desarrollo'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Conoce los conceptos fundamentales de la estrategia tecnológica de Iberdrola y puede identificar sus principales componentes.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.Recomienda asistir a las sesiones de disciplina y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'To be aware of Iberdrola technology strategy'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Entiende los detalles de la estrategia tecnológica de Iberdrola y puede participar en discusiones sobre su implementación con la orientación de un experto.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.Recomienda asistir a las sesiones de disciplina y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'To be aware of Iberdrola technology strategy'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene un conocimiento profundo de la estrategia tecnológica de Iberdrola y puede aplicarla de manera autónoma en proyectos y decisiones estratégicas.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.Recomienda asistir a las sesiones de disciplina y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'To be aware of Iberdrola technology strategy'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Es capaz de explicar y formar a otros en la estrategia tecnológica de Iberdrola, proporcionando ejemplos prácticos y guiando a los equipos en su aplicación efectiva.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.Recomienda asistir a las sesiones de disciplina y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.
', '
Asistencia a sesiones propuestas por la DisciplinaParticipación en comunidades de conocimiento C3.Mentoring, pairing.Sesiones de equipo, Team Day.Sesiones con compañeros de otros equipos.Asistencia techworkshops, conferencias.Reuniones con proveedores.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'To be aware of Iberdrola technology strategy'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Tiene una comprensión básica de la importancia de la vigilancia tecnológica, pero no la realiza de manera activa.', 1, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.
Recomienda asistir a las sesiones de disciplina y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.', '

 

Asistir a las sesiones de Viernes TecnológicosConsultar con equipo de Arquitectura.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Vigilancia Tecnológica'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Puede llevar a cabo actividades de vigilancia tecnológica con la orientación de expertos o utilizando recursos específicos.', 2, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.
Recomienda asistir a las sesiones de disciplina y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.', '

 

Asistir a las sesiones de Viernes TecnológicosConsultar con equipo de Arquitectura.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Vigilancia Tecnológica'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'Realiza de manera independiente la vigilancia tecnológica, identificando y evaluando nuevas tecnologías y tendencias relevantes para su campo.', 3, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.
Recomienda asistir a las sesiones de disciplina y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.', '

 

Asistir a las sesiones de Viernes TecnológicosConsultar con equipo de Arquitectura.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Vigilancia Tecnológica'), (SELECT currval('sq_formative_actions')));

INSERT INTO formative_actions (id, description, level, cost_per_person, hours, type_id, proposed_regulated_action, social_learning)
VALUES (nextval('sq_formative_actions'), 'No solo realiza vigilancia tecnológica de manera efectiva, sino que también puede enseñar y guiar a otros en cómo llevar a cabo estas actividades y aplicar los hallazgos en diferentes contextos.', 4, NULL, NULL, (SELECT id FROM formative_action_types WHERE name LIKE '%Interna%'), '
 
Se considera desde el Skill Owner que no aplica una formación reglada concreta a esta habilidad.
Recomienda asistir a las sesiones de disciplina y/o ponerse en contacto con el equipo de Arquitectura para cubrir las necesidades.', '

 

Asistir a las sesiones de Viernes TecnológicosConsultar con equipo de Arquitectura.
 
');
INSERT INTO skill_formative_actions (skill_id, formative_action_id)
VALUES ((SELECT id FROM SKILLS WHERE name LIKE 'Vigilancia Tecnológica'), (SELECT currval('sq_formative_actions')));

