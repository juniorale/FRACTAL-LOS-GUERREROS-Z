-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2019-10-19 16:04:08.815

-- tables
-- Table: APODERADO
CREATE TABLE APODERADO (
    IDAPO int NOT NULL COMMENT 'contiene los identificadores del apoderado',
    NOMAPO varchar(20) NULL COMMENT 'contiene los nombres del apoderado',
    APEAPO varchar(20) NULL COMMENT 'contiene los apellidos del apoderado',
    DNIAPO char(8) NULL COMMENT 'contiene el documento de identificación del apoderado',
    CELAPO char(9) NOT NULL COMMENT 'contiene el número telefónico del apoderado',
    EMAAPO varchar(20) NOT NULL COMMENT 'contiene el correo electrónico de los apoderados',
    UBIAPO varchar(50) NOT NULL COMMENT 'contiene la ubicación del domicilio del apoderado',
    CONSTRAINT APODERADO_pk PRIMARY KEY (IDAPO)
) COMMENT 'contiene los datos del apoderado del estudiante';

-- Table: ASISTENCIA
CREATE TABLE ASISTENCIA (
    IDASI int NOT NULL COMMENT 'en este campo es donde se identificara las asistencias',
    INGASI char(1) NULL COMMENT 'contiene todas las asistencias o marcaciones que se realizaran en el huellero',
    TIPASI char(1) NULL COMMENT 'contiene los tipos de criterios que se toma en las asistencia',
    IDEST int NOT NULL,
    IDMAT int NOT NULL COMMENT 'contiene el  identificador de la matricula',
    CONSTRAINT ASISTENCIA_pk PRIMARY KEY (IDASI)
) COMMENT 'contiene las asistencias de los estudiantes';

-- Table: CRITERIO_NOTA
CREATE TABLE CRITERIO_NOTA (
    IDCRINOT int NOT NULL COMMENT 'contiene la identificaciones de los criterios de notas',
    NOMCRINOT varchar(20) NULL COMMENT 'contiene las revisiones que se harán (rev. cuaderno diario-mensual y toma de exam. diario-mensual)',
    PESCRINOT numeric(2,0) NULL COMMENT 'contiene los criterios por la cual se multiplicara las notas debido (nota cuaderno diario (2.0 crit)-nota de examen diario (2.0crit)-nota de examen mensual (5.0crit)-nota de cuaderno mensual (1.0crit)).',
    CONSTRAINT CRITERIO_NOTA_pk PRIMARY KEY (IDCRINOT)
) COMMENT 'este campo contiene los criterios por la cual las notas se multiplicaran por revisión de cuaderno y examen diario y mensual';

-- Table: CURSO
CREATE TABLE CURSO (
    IDCUR int NOT NULL COMMENT 'contiene el identificador de los cursos',
    NOMCUR varchar(20) NULL COMMENT 'contiene los cursos que ofrece la institución',
    IDEMP int NOT NULL COMMENT 'contiene el identificador de empleado',
    CONSTRAINT CURSO_pk PRIMARY KEY (IDCUR)
) COMMENT 'esta tabla contiene todo los cursos de los alumnos y que profesor lo realiza';

-- Table: EMPLEADO
CREATE TABLE EMPLEADO (
    IDEMP int NOT NULL COMMENT 'contiene los identificadores de los empleados',
    NOMEMP varchar(20) NULL COMMENT 'contiene los nombres del empleado',
    APEEMP varchar(20) NULL COMMENT 'contiene los apellidos paterno y materno del empleado',
    DNIEMP char(8) NULL,
    TIPEMP char(1) NULL COMMENT 'contiene el tipo de persona profesor(P), director(D) y tutor (T)',
    FECEMP date NULL COMMENT 'contiene la fecha de inicio de trabajo',
    ESTEMP char(1) NULL COMMENT 'contiene el estado actual del empleado ,si trabaja o no.',
    CONSTRAINT EMPLEADO_pk PRIMARY KEY (IDEMP)
) COMMENT 'contiene a los empleados académicos';

-- Table: ESTUDIANTE
CREATE TABLE ESTUDIANTE (
    IDEST int NOT NULL COMMENT 'contiene el identificador de los estudiantes',
    NOMEST varchar(20) NULL COMMENT 'contiene los nombres del estudiante',
    APEEST varchar(20) NULL COMMENT 'contiene los apellidos del estudiante',
    DNIEST char(8) NULL COMMENT 'contiene lo documentos de identificador de cada estudiante',
    ESDEST char(1) NULL COMMENT 'contiene el estado del estudiante si esta estudiando o es retirado',
    IDAPO int NOT NULL COMMENT 'contiene el identificador del apoderado',
    CONSTRAINT ESTUDIANTE_pk PRIMARY KEY (IDEST)
) COMMENT 'contiene los datos de los estudiantes ';

-- Table: MATRICULA
CREATE TABLE MATRICULA (
    IDMAT int NOT NULL,
    FECMAT int NULL COMMENT 'contiene la fecha de inscripción',
    IDEST int NOT NULL COMMENT 'contiene el  identificador del estudiante',
    IDSAL int NOT NULL COMMENT 'contiene el  identificador del salón
',
    CONSTRAINT MATRICULA_pk PRIMARY KEY (IDMAT)
);

-- Table: NOTA
CREATE TABLE NOTA (
    IDNOT int NOT NULL,
    FINNOT numeric(2,0) NULL,
    IDCUR int NOT NULL,
    IDCRINOT int NOT NULL,
    IDMAT int NOT NULL COMMENT 'contiene el  identificador de LA MATRICULA',
    CONSTRAINT NOTA_pk PRIMARY KEY (IDNOT)
) COMMENT 'contiene las notas de estudiante';

-- Table: SALON
CREATE TABLE SALON (
    IDSAL int NOT NULL COMMENT 'contiene los identificadores de los salones',
    NIVSAL char(3) NULL COMMENT 'Este campo contiene los 3 tipos de niveles cuales son: preescolar, primaria y secundaria.',
    GRASAL varchar(15) NULL COMMENT 'Este campo contiene los grados de la institución.',
    IDEMP int NOT NULL COMMENT 'contiene el  identificador del empleado',
    CONSTRAINT SALON_pk PRIMARY KEY (IDSAL)
) COMMENT 'esta tabla contendrá todas las grado y sección';

-- foreign keys
-- Reference: ASISTENCIA_ESTUDIANTE (table: ASISTENCIA)
ALTER TABLE ASISTENCIA ADD CONSTRAINT ASISTENCIA_ESTUDIANTE FOREIGN KEY ASISTENCIA_ESTUDIANTE (IDEST)
    REFERENCES ESTUDIANTE (IDEST);

-- Reference: ASISTENCIA_MATRICULA (table: ASISTENCIA)
ALTER TABLE ASISTENCIA ADD CONSTRAINT ASISTENCIA_MATRICULA FOREIGN KEY ASISTENCIA_MATRICULA (IDMAT)
    REFERENCES MATRICULA (IDMAT);

-- Reference: CURSO_EMPLEADO (table: CURSO)
ALTER TABLE CURSO ADD CONSTRAINT CURSO_EMPLEADO FOREIGN KEY CURSO_EMPLEADO (IDEMP)
    REFERENCES EMPLEADO (IDEMP);

-- Reference: ESTUDIANTE_APODERADO (table: ESTUDIANTE)
ALTER TABLE ESTUDIANTE ADD CONSTRAINT ESTUDIANTE_APODERADO FOREIGN KEY ESTUDIANTE_APODERADO (IDAPO)
    REFERENCES APODERADO (IDAPO);

-- Reference: MATRICULA_ESTUDIANTE (table: MATRICULA)
ALTER TABLE MATRICULA ADD CONSTRAINT MATRICULA_ESTUDIANTE FOREIGN KEY MATRICULA_ESTUDIANTE (IDEST)
    REFERENCES ESTUDIANTE (IDEST);

-- Reference: MATRICULA_SALON (table: MATRICULA)
ALTER TABLE MATRICULA ADD CONSTRAINT MATRICULA_SALON FOREIGN KEY MATRICULA_SALON (IDSAL)
    REFERENCES SALON (IDSAL);

-- Reference: NOTA_CRITERIO_NOTA (table: NOTA)
ALTER TABLE NOTA ADD CONSTRAINT NOTA_CRITERIO_NOTA FOREIGN KEY NOTA_CRITERIO_NOTA (IDCRINOT)
    REFERENCES CRITERIO_NOTA (IDCRINOT);

-- Reference: NOTA_CURSO (table: NOTA)
ALTER TABLE NOTA ADD CONSTRAINT NOTA_CURSO FOREIGN KEY NOTA_CURSO (IDCUR)
    REFERENCES CURSO (IDCUR);

-- Reference: NOTA_MATRICULA (table: NOTA)
ALTER TABLE NOTA ADD CONSTRAINT NOTA_MATRICULA FOREIGN KEY NOTA_MATRICULA (IDMAT)
    REFERENCES MATRICULA (IDMAT);

-- Reference: SALON_EMPLEADO (table: SALON)
ALTER TABLE SALON ADD CONSTRAINT SALON_EMPLEADO FOREIGN KEY SALON_EMPLEADO (IDEMP)
    REFERENCES EMPLEADO (IDEMP);

-- End of file.

