--liquibase formatted sql

--changeset cappfdmd-skills-desc team:skills-desc dbms:postgresql
--comment: update skills descriptions
update skills
set description = 'GraphQL es un lenguaje de consulta para APIs que permite a los clientes solicitar exactamente los datos que necesitan, reduciendo el exceso de información y mejorando la eficiencia. Fue desarrollado por Facebook y es una alternativa a REST, ofreciendo mayor flexibilidad en la interacción con los datos.'
where lower(name) = lower('Graphql');

update skills
set description = 'Remote Procedure Call (RPC) es un protocolo que permite a un programa ejecutar código en otro servidor como si fuera una función local.'
where lower(name) = lower('Remote Procedure Call (RPC)');

update skills
set description = 'Hexagonal es un patrón de arquitectura que promueve la separación de responsabilidades mediante capas, facilitando la adaptabilidad y pruebas.'
where lower(name) = lower('Hexagonal');

update skills
set description = 'Microservicios es un estilo arquitectónico que estructura una aplicación como un conjunto de servicios pequeños y autónomos que se comunican entre sí.'
where lower(name) = lower('Microservicios');

update skills
set description = 'Monolitos es un enfoque arquitectónico donde toda la funcionalidad de una aplicación se implementa y despliega como una única unidad.'
where lower(name) = lower('Monolitos');

update skills
set description = 'Patrones de diseño son soluciones reutilizables y probadas para problemas comunes en el diseño de software.'
where lower(name) = lower('Patrones de diseño');

update skills
set description = 'Serverless es un modelo de computación en la nube donde los desarrolladores no gestionan servidores, solo ejecutan código bajo demanda.'
where lower(name) = lower('Serverless');

update skills
set description = 'Service Mesh es una infraestructura dedicada para gestionar la comunicación entre servicios en una arquitectura de microservicios.'
where lower(name) = lower('Service Mesh');

update skills
set description = 'Test Driven Development (TDD) es una metodología de desarrollo donde las pruebas se escriben antes del código para guiar su implementación.'
where lower(name) = lower('Test Driven Development (TDD)');

update skills
set description = 'Acceptance Test Driven Development (ATDD) es una práctica donde los criterios de aceptación se definen y automatizan antes de implementar el código.'
where lower(name) = lower('Acceptance Test Driven Development (ATDD)');

update skills
set description = 'Servicios de colas en AWS son herramientas como SQS y SNS que permiten gestionar mensajes y eventos entre sistemas distribuidos.'
where lower(name) = lower('Servicios de colas en AWS');

update skills
set description = 'Compute en AWS incluye servicios como EC2 y Lambda para ejecutar aplicaciones y cargas de trabajo en la nube.'
where lower(name) = lower('Compute en AWS');

update skills
set description = 'Compute en Azure incluye servicios como Virtual Machines y Azure Functions para ejecutar aplicaciones y cargas de trabajo en la nube.'
where lower(name) = lower('Compute en Azure');

update skills
set description = 'Compute en GCP incluye servicios como Compute Engine y Cloud Functions para ejecutar aplicaciones y cargas de trabajo en la nube.'
where lower(name) = lower('Compute en GCP');

update skills
set description = 'Máquinas Virtuales son entornos virtualizados que emulan hardware físico para ejecutar sistemas operativos y aplicaciones.'
where lower(name) = lower('Máquinas Virtuales');

update skills
set description = 'LDAP es un protocolo para acceder y mantener servicios de directorio distribuidos, como bases de datos de usuarios y autenticación.'
where lower(name) = lower('LDAP');

update skills
set description = 'Servicios de Storage en AWS incluyen herramientas como S3 y Glacier para almacenar y gestionar datos en la nube.'
where lower(name) = lower('Servicios de Storage en AWS');

update skills
set description = 'Servicios de Storage en Azure incluyen soluciones como Blob Storage y Azure Files para almacenamiento en la nube.'
where lower(name) = lower('Servicios de Storage en Azure');

update skills
set description = 'Servicios de Storage en GCP incluyen opciones como Cloud Storage y Filestore para almacenamiento y gestión de datos.'
where lower(name) = lower('Servicios de Storage en GCP');

update skills
set description = 'Data Lakes Transaccionales son repositorios centralizados diseñados para almacenar grandes volúmenes de datos estructurados y no estructurados con capacidades transaccionales.'
where lower(name) = lower('Data Lakes Transaccionales');

update skills
set description = 'EBS / EFS son servicios de almacenamiento en AWS, donde EBS es almacenamiento en bloque y EFS es un sistema de archivos compartido.'
where lower(name) = lower('EBS / EFS');

update skills
set description = 'HDFS es un sistema de archivos distribuido diseñado para almacenar grandes volúmenes de datos y ejecutarse en hardware común.'
where lower(name) = lower('HDFS');

update skills
set description = 'API Testing es el proceso de validar la funcionalidad, rendimiento y seguridad de las APIs mediante pruebas automatizadas o manuales.'
where lower(name) = lower('API Testing');

update skills
set description = 'Pruebas de carga / rendimiento evalúan cómo un sistema maneja grandes volúmenes de usuarios o datos para garantizar su estabilidad y escalabilidad.'
where lower(name) = lower('Pruebas de carga / rendimiento');

update skills
set description = 'Pruebas de contrato verifican que las interacciones entre servicios cumplan con los contratos definidos, asegurando la compatibilidad.'
where lower(name) = lower('Pruebas de contrato');

update skills
set description = 'Pruebas de infraestructura validan que los componentes de infraestructura, como servidores y redes, funcionen correctamente y cumplan con los requisitos.'
where lower(name) = lower('Pruebas de infraestructura');

update skills
set description = 'Pruebas de integración E2E aseguran que los diferentes módulos de una aplicación trabajen juntos como se espera en un flujo completo.'
where lower(name) = lower('Pruebas de integración E2E');

update skills
set description = 'Pruebas Front validan la funcionalidad, diseño y experiencia de usuario de la interfaz gráfica de una aplicación.'
where lower(name) = lower('Pruebas Front');

update skills
set description = 'HTML / CSS son tecnologías fundamentales para la creación de páginas web, donde HTML define la estructura y CSS el diseño visual.'
where lower(name) = lower('HTML / CSS');

update skills
set description = 'Java - Spring Framework es un marco de trabajo para Java que facilita el desarrollo de aplicaciones empresariales con características como inyección de dependencias y programación modular.'
where lower(name) = lower('Java - Spring Framework');

update skills
set description = 'Servicios de monitorización en AWS incluyen herramientas como CloudWatch para recopilar y analizar métricas, logs y eventos de aplicaciones y recursos.'
where lower(name) = lower('Servicios de monitorización en AWS');

update skills
set description = 'Servicios de monitorización en Azure incluyen soluciones como Azure Monitor para supervisar el rendimiento y la disponibilidad de aplicaciones y recursos.'
where lower(name) = lower('Servicios de monitorización en Azure');

update skills
set description = 'Servicios de monitorización en GCP incluyen herramientas como Cloud Monitoring para observar métricas, logs y eventos en entornos de Google Cloud.'
where lower(name) = lower('Servicios de monitorización en GCP');

update skills
set description = 'Datadog es una plataforma de monitorización y análisis para infraestructura, aplicaciones y logs en entornos de nube y locales.'
where lower(name) = lower('Datadog');

update skills
set description = 'Dynatrace es una solución de monitorización basada en inteligencia artificial para aplicaciones, infraestructura y experiencia del usuario.'
where lower(name) = lower('Dynatrace');

update skills
set description = 'New Relic es una plataforma de observabilidad que permite monitorizar el rendimiento de aplicaciones, infraestructura y experiencia del usuario.'
where lower(name) = lower('New Relic');

update skills
set description = 'OpenTelemetry es un conjunto de herramientas y estándares abiertos para recopilar y exportar datos de telemetría como trazas, métricas y logs.'
where lower(name) = lower('OpenTelemetry');

update skills
set description = 'Prometheus es una herramienta de monitorización y alerta de código abierto diseñada para recopilar y analizar métricas de sistemas y aplicaciones.'
where lower(name) = lower('Prometheus');

update skills
set description = 'Zabbix es una solución de monitorización de código abierto para supervisar el rendimiento y la disponibilidad de servidores, redes y aplicaciones.'
where lower(name) = lower('Zabbix');

update skills
set description = 'Servicios de migración en AWS incluyen herramientas como AWS Migration Hub y Server Migration Service para planificar y ejecutar migraciones a la nube.'
where lower(name) = lower('Servicios de migración en AWS');


update skills
set description = 'Ciberseguridad. Conceptos generales abarca principios básicos para proteger sistemas, redes y datos frente a amenazas y ataques.'
where lower(name) = lower('Ciberseguridad. Conceptos generales');

update skills
set description = 'Conocimientos generales Cloud incluyen fundamentos sobre servicios, modelos de despliegue y beneficios de la computación en la nube.'
where lower(name) = lower('Conocimientos generales Cloud');

update skills
set description = 'Clean Architecture es un enfoque de diseño de software que prioriza la independencia de los detalles de implementación y facilita el mantenimiento.'
where lower(name) = lower('Clean Architecture');

update skills
set description = 'Behavior Driven Development (BDD) es una metodología que fomenta la colaboración entre equipos mediante la definición de comportamientos esperados en lenguaje natural.'
where lower(name) = lower('Behavior Driven Development (BDD)');

update skills
set description = 'Clean Code se refiere a prácticas y principios para escribir código claro, legible y fácil de mantener.'
where lower(name) = lower('Clean Code');

update skills
set description = 'Domain Driven Design (DDD) es un enfoque de desarrollo de software que se centra en el modelado del dominio del negocio y su lógica.'
where lower(name) = lower('Domain Driven Design (DDD)');

update skills
set description = 'Despliegue de modelos Data Science implica el proceso de implementar modelos de aprendizaje automático en entornos productivos.'
where lower(name) = lower('Despliegue de modelos Data Science');

update skills
set description = 'Event Driven Architecture (EDA) es un estilo arquitectónico basado en la producción, detección y reacción a eventos en tiempo real.'
where lower(name) = lower('Event Driven Architecture (EDA)');