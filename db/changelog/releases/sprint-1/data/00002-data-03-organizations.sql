--liquibase formatted sql

--changeset capacibk-organizations team:organizations_initial_data dbms:postgresql
--comment: Initial data for organizations table

INSERT INTO organizations(name) VALUES ('CoE Comercial: Digital España');
INSERT INTO organizations(name) VALUES ('CoE Comercial: Digital Global');
INSERT INTO organizations(name) VALUES ('CoE Comercial: Operaciones');
INSERT INTO organizations(name) VALUES ('CoE Comercial: Smart Solutions');
INSERT INTO organizations(name) VALUES ('CoE GEM');
INSERT INTO organizations(name) VALUES ('CoE Redes: Clientes i-DE');
INSERT INTO organizations(name) VALUES ('CoE Redes: Planificación y Regulación, Gestión de Ingresos');
INSERT INTO organizations(name) VALUES ('CoE Redes: Proyectos, Planificación y Estrategia Digital');
INSERT INTO organizations(name) VALUES ('CoE Redes: Sistemas Técnicos i-DE');
INSERT INTO organizations(name) VALUES ('CoE Renovables Global');
INSERT INTO organizations(name) VALUES ('Sistemas Corporativos Globales');
INSERT INTO organizations(name) VALUES ('TI');
INSERT INTO organizations(name) VALUES ('Transformación Digital España');
INSERT INTO organizations(name) VALUES ('Transformación Digital Global');

--rollback DELETE FROM organizations WHERE name = 'Transformación Digital Global';
--rollback DELETE FROM organizations WHERE name = 'Transformación Digital España';
--rollback DELETE FROM organizations WHERE name = 'TI';
--rollback DELETE FROM organizations WHERE name = 'Sistemas Corporativos Globales';
--rollback DELETE FROM organizations WHERE name = 'CoE Renovables Global';
--rollback DELETE FROM organizations WHERE name = 'CoE Redes: Sistemas Técnicos i-DE';
--rollback DELETE FROM organizations WHERE name = 'CoE Redes: Proyectos, Planificación y Estrategia Digital';
--rollback DELETE FROM organizations WHERE name = 'CoE Redes: Planificación y Regulación, Gestión de Ingresos';
--rollback DELETE FROM organizations WHERE name = 'CoE Redes: Clientes i-DE';
--rollback DELETE FROM organizations WHERE name = 'CoE GEM';
--rollback DELETE FROM organizations WHERE name = 'CoE Comercial: Smart Solutions';
--rollback DELETE FROM organizations WHERE name = 'CoE Comercial: Operaciones';
--rollback DELETE FROM organizations WHERE name = 'CoE Comercial: Digital Global';
--rollback DELETE FROM organizations WHERE name = 'CoE Comercial: Digital España';


--changeset capacibk-team organizations relation:team_organizations_initial_data dbms:postgresql
--comment: Initial data for team_organizations table. Insert relationship between teams and organizations

INSERT INTO team_organizations (team_id, organization_id)
VALUES
    ((SELECT id FROM teams WHERE name = 'WEBS CLIENTES'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Digital España')),
    ((SELECT id FROM teams WHERE name = 'ESTRATEGIA Y FIDELIZACION'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Digital España')),
    ((SELECT id FROM teams WHERE name = 'ANALITICA DIGITAL'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Digital España')),
    ((SELECT id FROM teams WHERE name = 'ARQUITECTURA'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Digital España')),
    ((SELECT id FROM teams WHERE name = 'VENTAS DIGITALES'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Digital España')),
    ((SELECT id FROM teams WHERE name = 'TECNOLOGIA DIGITAL Y CIBERSEGURIDAD'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Digital España')),
    ((SELECT id FROM teams WHERE name = 'DISEÑO DIGITAL'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Digital España')),
    ((SELECT id FROM teams WHERE name = 'CIBERSEGURIDAD'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Digital España')),
    ((SELECT id FROM teams WHERE name = 'DIGITAL ESPAÑA'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Digital España')),
    ((SELECT id FROM teams WHERE name = 'EXPERIENCIA CLIENTE GLOBAL'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Digital Global')),
    ((SELECT id FROM teams WHERE name = 'PROCESOS DE INDUSTRIA'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Operaciones')),
    ((SELECT id FROM teams WHERE name = 'VENTAS Y ATENCION CLIENTE'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Operaciones')),
    ((SELECT id FROM teams WHERE name = 'FACTURACION'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Operaciones')),
    ((SELECT id FROM teams WHERE name = 'DATOS Y REPORTING'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Operaciones')),
    ((SELECT id FROM teams WHERE name = 'TECNOLOGIA Y CIBERSEGURIDAD'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Operaciones')),
    ((SELECT id FROM teams WHERE name = 'SIAM-SOFYC'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Operaciones')),
    ((SELECT id FROM teams WHERE name = 'COE OPERACIONES'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Operaciones')),
    ((SELECT id FROM teams WHERE name = 'COBRO Y DEUDA'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Operaciones')),
    ((SELECT id FROM teams WHERE name = 'PROYECTOS ESTRATEGICOS'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Operaciones')),
    ((SELECT id FROM teams WHERE name = 'EMPRESAS Y GRANDES INSTALACIONES'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Smart Solutions')),
    ((SELECT id FROM teams WHERE name = 'PROYECTOS ESTRATÉGICOS'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Smart Solutions')),
    ((SELECT id FROM teams WHERE name = 'RESIDENCIAL Y PYMES'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Smart Solutions')),
    ((SELECT id FROM teams WHERE name = 'AGILIDAD TECNOLÓGICA'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Smart Solutions')),
    ((SELECT id FROM teams WHERE name = 'COE SMART SOLUCIONS'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Smart Solutions')),
    ((SELECT id FROM teams WHERE name = 'PLATAFORMAS IOT'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Smart Solutions')),
    ((SELECT id FROM teams WHERE name = 'DATOS'), (SELECT id FROM organizations WHERE name = 'CoE Comercial: Smart Solutions')),
    ((SELECT id FROM teams WHERE name = 'SISTEMAS DE MERCADO Y PROY TRANSVERSALES'), (SELECT id FROM organizations WHERE name = 'CoE GEM')),
    ((SELECT id FROM teams WHERE name = 'CIBERSEGURIDAD DCO Y OPERACIONES'), (SELECT id FROM organizations WHERE name = 'CoE GEM')),
    ((SELECT id FROM teams WHERE name = 'NUEVOS MERCADOS Y SERVICIOS'), (SELECT id FROM organizations WHERE name = 'CoE GEM')),
    ((SELECT id FROM teams WHERE name = 'GESTION DEL DATO Y MEDIDA'), (SELECT id FROM organizations WHERE name = 'CoE GEM')),
    ((SELECT id FROM teams WHERE name = 'PLANIFICACION DIGITAL Y PROCESOS'), (SELECT id FROM organizations WHERE name = 'CoE GEM')),
    ((SELECT id FROM teams WHERE name = 'REGULACION Y OPERACION'), (SELECT id FROM organizations WHERE name = 'CoE GEM')),
    ((SELECT id FROM teams WHERE name = 'SISTEMAS E INFRAESTRUCTURAS'), (SELECT id FROM organizations WHERE name = 'CoE GEM')),
    ((SELECT id FROM teams WHERE name = 'INFRAESTRUCTURAS'), (SELECT id FROM organizations WHERE name = 'CoE GEM')),
    ((SELECT id FROM teams WHERE name = 'DIGITALIZACION Y PROCESOS'), (SELECT id FROM organizations WHERE name = 'CoE GEM')),
    ((SELECT id FROM teams WHERE name = 'TELECONTROL'), (SELECT id FROM organizations WHERE name = 'CoE GEM')),
    ((SELECT id FROM teams WHERE name = 'GESTIÓN MEDIDA E INSPECCIÓN'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Clientes i-DE')),
    ((SELECT id FROM teams WHERE name = 'RELACIÓN CON CLIENTES'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Clientes i-DE')),
    ((SELECT id FROM teams WHERE name = 'REPORTE Y BALANCES'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Clientes i-DE')),
    ((SELECT id FROM teams WHERE name = 'FACTURACIÓN, COBRO Y ADMINISTRACIÓN'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Clientes i-DE')),
    ((SELECT id FROM teams WHERE name = 'NUEVOS SUMINISTROS'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Clientes i-DE')),
    ((SELECT id FROM teams WHERE name = 'CANALES DIGITALES'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Clientes i-DE')),
    ((SELECT id FROM teams WHERE name = 'COE  CLIENTES I-DE'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Clientes i-DE')),
    ((SELECT id FROM teams WHERE name = 'INGRESOS INVERSIONES'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Planificación y Regulación, Gestión de Ingresos')),
    ((SELECT id FROM teams WHERE name = 'INGRESOS PLANIFICACIÓN'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Planificación y Regulación, Gestión de Ingresos')),
    ((SELECT id FROM teams WHERE name = 'INGRESOS INVENTARIO'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Planificación y Regulación, Gestión de Ingresos')),
    ((SELECT id FROM teams WHERE name = 'INFORMACION REGULATORIA'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Planificación y Regulación, Gestión de Ingresos')),
    ((SELECT id FROM teams WHERE name = 'GESTION DE INGRESOS'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Planificación y Regulación, Gestión de Ingresos')),
    ((SELECT id FROM teams WHERE name = 'TECNOLOGIA DIGITAL'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Proyectos, Planificación y Estrategia Digital')),
    ((SELECT id FROM teams WHERE name = 'PLANIFICACIÓN DIGITAL'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Proyectos, Planificación y Estrategia Digital')),
    ((SELECT id FROM teams WHERE name = 'PROYECTOS, PLANIFICACIÓN Y ESTRAT. DIGIT'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Proyectos, Planificación y Estrategia Digital')),
    ((SELECT id FROM teams WHERE name = 'CONSTRUCCIÓN'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Sistemas Técnicos i-DE')),
    ((SELECT id FROM teams WHERE name = 'INVENTARIO'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Sistemas Técnicos i-DE')),
    ((SELECT id FROM teams WHERE name = 'MOVILIDAD'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Sistemas Técnicos i-DE')),
    ((SELECT id FROM teams WHERE name = 'MANTENIMIENTO RED'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Sistemas Técnicos i-DE')),
    ((SELECT id FROM teams WHERE name = 'COE SISTEMAS TÉCNICOS'), (SELECT id FROM organizations WHERE name = 'CoE Redes: Sistemas Técnicos i-DE')),
    ((SELECT id FROM teams WHERE name = 'MANTENIMIENTO'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'LOGÍSTICA, MEDIO AMBIENTE Y CALIDAD'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'GESTIÓN DEL CAMBIO'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'DISPONIBILIDAD, PREDICCIÓN Y MONITORIZAC'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'INGENIERIA Y GIS'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'PROMOCIÓN Y DESARROLLO'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'ACTIVOS, MEDIDAS Y LIQUIDACIONES'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'IT GLOBAL CENTER OF EXCELENCE'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'OPERACIONES'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'MOVILIDAD Y TRABAJO EN CAMPO'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'UX METODOLOGÍA'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'PROMOCIÓN, DESARROLLO, CONSTRUCCIÓN, CAL'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'INNOVACIÓN, GESTIÓN DEL CAMBIO, GESTIÓN'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'SEGURIDAD'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'INNOVACION'), (SELECT id FROM organizations WHERE name = 'CoE Renovables Global')),
    ((SELECT id FROM teams WHERE name = 'SISTEMAS CORPORATIVOS GLOBALES'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'RIESGOS, SEGURIDAD Y SSGG'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'P&O Y  ADPER'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'PLATAFORMAS GLOBALES'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'DATA & REPORTING'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'COMPRAS, VENTAS Y PROVEEDORES'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'FACTURACION , FINANCIACION Y TESORERIA'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'CO, ACTIVOS FIJOS Y PPM'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'RE E INTERFACE'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'FI, CONSOLIDACION Y FISCAL'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'CANALES DIGITALES Y GOBIERNO CORP.'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'P&O Y ADM.PERSONAL'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'SISTEMAS ANALITICA EMPRESARIAL'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'PLATAFORMA SAP: GOBIERNO, SEGURIDAD Y TR'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'ADMINISTRACION, COMPRAS  Y FINANZAS'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'CONTROL Y FISCAL'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'PMO, CALIDAD, ASEGURAMIENTO PROCESOS'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'SERVICIOS GENERALES'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'RIESGOS Y SEGURIDAD'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'GOBIERNO CORPORATIVO'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'HERRAMIENTAS IT'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'CANALES DIGITALES  Y AUDITORIA'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'RESPONSABLE CIBER'), (SELECT id FROM organizations WHERE name = 'Sistemas Corporativos Globales')),
    ((SELECT id FROM teams WHERE name = 'IT'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'TECNOLOGÍA, PLATAFORMAS & OPERACIONES'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'TECNOLOGÍA'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'SOPORTE, CONTROL Y PROVEEDORES'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'PLANIFIC. FINANCIERA Y PRESUPUESTARIA'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'PROVEEDORES, CONTRATOS TI Y SOPORTE'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'PORFOLIO'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'SERVICIOS AL USUARIO FINAL'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'DIGITAL WORKPLACE'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'HELP DESK'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'SERVICIOS DE CAMPO'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'ADMINISTRACIÓN USUARIOS'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'ALMACENAMIENTO & BASES DE DATOS'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'APP PLATFORMS K8S & OBSERVABILITY'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'SISTEMAS OPERATIVOS DISTRIBUIDOS'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'SAP SOLUCIONES, COLABORACIÓN & PAQUETES'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'RIESGOS, CUMPLIMIENTO & ASEGURAMIENTO'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'COMUNICACIONES AUDIOVISUALES Y SERV. VIP'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'GESTIÓN DE CONTRATOS Y PROV. GLOBALES TI'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'COMPRAS TI ESPAÑA'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'SERVICIO VIP'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'NETWORKING'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'CENTRO DE COMPETENCIA CLOUD'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'CENTRO DE COMPETENCIA DESARROLLO SW'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'ARQUITECTURA E INNOVACIÓN'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'OPERACIONES, PROCESOS Y HERRAMIENTAS'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'PROYECTOS Y BUSINESS TECHNOLOGY PARTNERS'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'TELEFONIA'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'ARQUITECTURA SAP'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'ARQUITECTURA DATA PLATFORM'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'ARQUITECTURA OPEN PLATFORM'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'ARQUITECTURA SOLUCIONES'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'ARQUITECTURA DATACENTER'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'ARQUITECTURA CLOUD'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'PROCESOS Y HERRAMIENTAS'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'PRODUCCION'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'GESTION DE CAMBIOS'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'GESTION DE SERVICIO Y DISASTER RECOVERY'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'GLOBAL GENAI'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'UCAAS'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'ARQUITECTURA DE CIBERSEGURIDAD'), (SELECT id FROM organizations WHERE name = 'TI')),
    ((SELECT id FROM teams WHERE name = 'INNOVACION Y DIGITAL KNOW-HOW'), (SELECT id FROM organizations WHERE name = 'Transformación Digital España')),
    ((SELECT id FROM teams WHERE name = 'TRANSFORMACION DIGITAL ESPAÑA'), (SELECT id FROM organizations WHERE name = 'Transformación Digital España')),
    ((SELECT id FROM teams WHERE name = 'GESTION DEL CAMBIO DIGITAL'), (SELECT id FROM organizations WHERE name = 'Transformación Digital Global')),
    ((SELECT id FROM teams WHERE name = 'OFICINA DE PROYECTOS'), (SELECT id FROM organizations WHERE name = 'Transformación Digital Global')),
    ((SELECT id FROM teams WHERE name = 'TRANSFORMACION LEAN-AGILE'), (SELECT id FROM organizations WHERE name = 'Transformación Digital Global')),
    ((SELECT id FROM teams WHERE name = 'PLANIFI. DIG. GOBIERNO DEL DATO E IA'), (SELECT id FROM organizations WHERE name = 'Transformación Digital Global')),
    ((SELECT id FROM teams WHERE name = 'CULTURA Y PRACTICAS DIGITALES'), (SELECT id FROM organizations WHERE name = 'Transformación Digital Global')),
    ((SELECT id FROM teams WHERE name = 'TRANSFORMACIÓN DIGITAL'), (SELECT id FROM organizations WHERE name = 'Transformación Digital Global')),
    ((SELECT id FROM teams WHERE name = 'GLOBAL DATA AND AI'), (SELECT id FROM organizations WHERE name = 'Transformación Digital Global'));

--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'WEBS CLIENTES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ESTRATEGIA Y FIDELIZACION');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ANALITICA DIGITAL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ARQUITECTURA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'VENTAS DIGITALES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'TECNOLOGIA DIGITAL Y CIBERSEGURIDAD');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'DISEÑO DIGITAL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'CIBERSEGURIDAD');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'DIGITAL ESPAÑA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'EXPERIENCIA CLIENTE GLOBAL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PROCESOS DE INDUSTRIA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'VENTAS Y ATENCION CLIENTE');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'FACTURACION');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'DATOS Y REPORTING');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'TECNOLOGIA Y CIBERSEGURIDAD');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'SIAM-SOFYC');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'COE OPERACIONES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'COBRO Y DEUDA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PROYECTOS ESTRATEGICOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'EMPRESAS Y GRANDES INSTALACIONES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PROYECTOS ESTRATÉGICOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'RESIDENCIAL Y PYMES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'AGILIDAD TECNOLÓGICA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'COE SMART SOLUCIONS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PLATAFORMAS IOT');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'DATOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'SISTEMAS DE MERCADO Y PROY TRANSVERSALES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'CIBERSEGURIDAD DCO Y OPERACIONES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'NUEVOS MERCADOS Y SERVICIOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'GESTION DEL DATO Y MEDIDA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PLANIFICACION DIGITAL Y PROCESOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'REGULACION Y OPERACION');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'SISTEMAS E INFRAESTRUCTURAS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'INFRAESTRUCTURAS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'DIGITALIZACION Y PROCESOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'TELECONTROL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'GESTIÓN MEDIDA E INSPECCIÓN');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'RELACIÓN CON CLIENTES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'REPORTE Y BALANCES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'FACTURACIÓN, COBRO Y ADMINISTRACIÓN');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'NUEVOS SUMINISTROS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'CANALES DIGITALES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'COE  CLIENTES I-DE');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'INGRESOS INVERSIONES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'INGRESOS PLANIFICACIÓN');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'INGRESOS INVENTARIO');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'INFORMACION REGULATORIA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'GESTION DE INGRESOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'TECNOLOGIA DIGITAL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PLANIFICACIÓN DIGITAL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PROYECTOS, PLANIFICACIÓN Y ESTRAT. DIGIT');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'CONSTRUCCIÓN');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'INVENTARIO');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'MOVILIDAD');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'MANTENIMIENTO RED');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'COE SISTEMAS TÉCNICOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'MANTENIMIENTO');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'LOGÍSTICA, MEDIO AMBIENTE Y CALIDAD');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'GESTIÓN DEL CAMBIO');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'DISPONIBILIDAD, PREDICCIÓN Y MONITORIZAC');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'INGENIERIA Y GIS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PROMOCIÓN Y DESARROLLO');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ACTIVOS, MEDIDAS Y LIQUIDACIONES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'IT GLOBAL CENTER OF EXCELENCE');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'OPERACIONES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'MOVILIDAD Y TRABAJO EN CAMPO');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'UX METODOLOGÍA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PROMOCIÓN, DESARROLLO, CONSTRUCCIÓN, CAL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'INNOVACIÓN, GESTIÓN DEL CAMBIO, GESTIÓN');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'SEGURIDAD');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'INNOVACION');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'SISTEMAS CORPORATIVOS GLOBALES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'RIESGOS, SEGURIDAD Y SSGG');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'P&O Y  ADPER');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PLATAFORMAS GLOBALES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'DATA & REPORTING');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'COMPRAS, VENTAS Y PROVEEDORES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'FACTURACION , FINANCIACION Y TESORERIA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'CO, ACTIVOS FIJOS Y PPM');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'RE E INTERFACE');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'FI, CONSOLIDACION Y FISCAL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'CANALES DIGITALES Y GOBIERNO CORP.');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'P&O Y ADM.PERSONAL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'SISTEMAS ANALITICA EMPRESARIAL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PLATAFORMA SAP: GOBIERNO, SEGURIDAD Y TR');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ADMINISTRACION, COMPRAS  Y FINANZAS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'CONTROL Y FISCAL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PMO, CALIDAD, ASEGURAMIENTO PROCESOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'SERVICIOS GENERALES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'RIESGOS Y SEGURIDAD');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'GOBIERNO CORPORATIVO');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'HERRAMIENTAS IT');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'CANALES DIGITALES  Y AUDITORIA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'RESPONSABLE CIBER');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'IT');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'TECNOLOGÍA, PLATAFORMAS & OPERACIONES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'TECNOLOGÍA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'SOPORTE, CONTROL Y PROVEEDORES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PLANIFIC. FINANCIERA Y PRESUPUESTARIA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PROVEEDORES, CONTRATOS TI Y SOPORTE');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PORFOLIO');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'SERVICIOS AL USUARIO FINAL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'DIGITAL WORKPLACE');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'HELP DESK');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'SERVICIOS DE CAMPO');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ADMINISTRACIÓN USUARIOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ALMACENAMIENTO & BASES DE DATOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'APP PLATFORMS K8S & OBSERVABILITY');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'SISTEMAS OPERATIVOS DISTRIBUIDOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'SAP SOLUCIONES, COLABORACIÓN & PAQUETES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'RIESGOS, CUMPLIMIENTO & ASEGURAMIENTO');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'COMUNICACIONES AUDIOVISUALES Y SERV. VIP');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'GESTIÓN DE CONTRATOS Y PROV. GLOBALES TI');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'COMPRAS TI ESPAÑA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'SERVICIO VIP');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'NETWORKING');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'CENTRO DE COMPETENCIA CLOUD');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'CENTRO DE COMPETENCIA DESARROLLO SW');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ARQUITECTURA E INNOVACIÓN');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'OPERACIONES, PROCESOS Y HERRAMIENTAS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PROYECTOS Y BUSINESS TECHNOLOGY PARTNERS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'TELEFONIA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ARQUITECTURA SAP');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ARQUITECTURA DATA PLATFORM');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ARQUITECTURA OPEN PLATFORM');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ARQUITECTURA SOLUCIONES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ARQUITECTURA DATACENTER');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ARQUITECTURA CLOUD');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PROCESOS Y HERRAMIENTAS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PRODUCCION');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'GESTION DE CAMBIOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'GESTION DE SERVICIO Y DISASTER RECOVERY');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'GLOBAL GENAI');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'UCAAS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'ARQUITECTURA DE CIBERSEGURIDAD');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'INNOVACION Y DIGITAL KNOW-HOW');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'TRANSFORMACION DIGITAL ESPAÑA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'GESTION DEL CAMBIO DIGITAL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'OFICINA DE PROYECTOS');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'TRANSFORMACION LEAN-AGILE');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'PLANIFI. DIG. GOBIERNO DEL DATO E IA');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'CULTURA Y PRACTICAS DIGITALES');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'TRANSFORMACIÓN DIGITAL');
--rollback DELETE FROM team_organizations WHERE team_id = (SELECT id FROM teams WHERE name = 'GLOBAL DATA AND AI');