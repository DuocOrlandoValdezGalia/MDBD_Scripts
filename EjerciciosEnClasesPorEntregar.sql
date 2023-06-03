DROP TABLE Nota_Alumno;
DROP SEQUENCE seq_Alumno;
DROP TABLE Asignatura;
DROP SEQUENCE seq_Asignatura;
DROP TABLE Alumno;
DROP TABLE Curso;

CREATE TABLE Curso(
    sigla_Curso VARCHAR2(10) NOT NULL,
    descripcion VARCHAR2(25) NOT NULL
);

ALTER TABLE Curso ADD CONSTRAINT PK_Curso PRIMARY KEY (sigla_Curso);

CREATE TABLE Asignatura(
    sigla_Asignatura VARCHAR2(10) NOT NULL,
    nombre VARCHAR2(25) NOT NULL
);

ALTER TABLE Asignatura ADD CONSTRAINT PK_Asignatura PRIMARY KEY (sigla_Asignatura);

CREATE TABLE Alumno(
    numrut_Alumno NUMBER(10) NOT NULL,
    dvrut_Alumno VARCHAR2(1) NOT NULL,
    
);