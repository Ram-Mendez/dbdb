--liquibase formatted sql
--liquibase formatted sql

--changeset cappfdmd-competencies-desc team:competencies-desc dbms:postgresql
--comment: update competencies descriptions

update competencies
set description = 'Gestión de eventos y sistemas de mensajería basados en colas.'
where lower(name) = lower('Eventos & ''Colas''');

update competencies
set description = 'Gestión y diseño de APIs para la integración de sistemas.'
where lower(name) = lower('Gestión de APIs');

update competencies
set description = 'Uso y administración de recursos de cómputo en entornos locales o en la nube.'
where lower(name) = lower('Compute');

update competencies
set description = 'Automatización de despliegues y orquestación de procesos CI/CD.'
where lower(name) = lower('CI/CD y Orquestación');

update competencies
set description = 'Gestión de la publicación y distribución de software o servicios.'
where lower(name) = lower('Publicación/Distribución');

update competencies
set description = 'Seguridad en la contabilidad y gestión de costos en la nube.'
where lower(name) = lower('Cloud Accounting Security');

update competencies
set description = 'Protección de redes frente a amenazas y vulnerabilidades.'
where lower(name) = lower('Network Security');

update competencies
set description = 'Gestión y optimización de sistemas de almacenamiento de datos.'
where lower(name) = lower('Storage');

update competencies
set description = 'Estrategias y herramientas para pruebas y testing de software.'
where lower(name) = lower('Pruebas y Testing');

update competencies
set description = 'Gestión de autenticación única (SSO) para usuarios y sistemas.'
where lower(name) = lower('SSO');

update competencies
set description = 'Uso de IaC y herramientas para la gestión de configuraciones.'
where lower(name) = lower('iaC & Gestión de la configuración');

update competencies
set description = 'Conocimiento y uso de lenguajes de programación modernos.'
where lower(name) = lower('Lenguajes de Programación');

update competencies
set description = 'Supervisión y análisis del rendimiento de sistemas y aplicaciones.'
where lower(name) = lower('Monitorización');

update competencies
set description = 'Gestión y organización de datos en sistemas estructurados y no estructurados.'
where lower(name) = lower('Data Management');

update competencies
set description = 'Uso de técnicas de ciencia de datos para análisis y predicción.'
where lower(name) = lower('Data Science');

update competencies
set description = 'Estrategias y herramientas para la migración de datos entre sistemas.'
where lower(name) = lower('Migraciones Datos');

update competencies
set description = 'Gestión de áreas y organizaciones dentro de la empresa.'
where lower(name) = lower('Areas y organizaciones');

update competencies
set description = 'Definición y seguimiento de objetivos y métricas de rendimiento.'
where lower(name) = lower('Objetivos y Medición');

update competencies
set description = 'Gestión de flujos de trabajo y procesos empresariales.'
where lower(name) = lower('Gestión de Flujos y Procesos');

update competencies
set description = 'Gestión del ciclo de vida de productos y portafolios de productos.'
where lower(name) = lower('Producto y Portfolio de Producto');

update competencies
set description = 'Fomentar modelos de trabajo colaborativo en equipos.'
where lower(name) = lower('Modelos de trabajo en equipo');

update competencies
set description = 'Gestión de proyectos y portafolios de proyectos empresariales.'
where lower(name) = lower('Gestión de Proyectos y Portfolio de Proyectos');

update competencies
set description = 'Uso de herramientas para la gestión de proyectos y productos.'
where lower(name) = lower('Herramientas de Gestión de Proyectos y Productos');

update competencies
set description = 'Conocimiento estratégico del ecosistema básico de Iberdrola.'
where lower(name) = lower('Estratégicas. Basics de Ecosistema Iberdrola');

update competencies
set description = 'Diseño y gestión de arquitecturas de sistemas y software.'
where lower(name) = lower('Arquitecturas');