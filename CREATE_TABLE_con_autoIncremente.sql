DROP TABLE Empleados;
DROP SEQUENCE seq_Empleados;

create table Empleados(
  id_emp numeric(7) not null,
  apell_pat varchar(25) not null,
  primer_nombre varchar(20) not null,
  salario numeric(8) not null,
  cod_depto numeric(7) not null
);

CREATE SEQUENCE seq_Empleados
START WITH 1
INCREMENT BY 1;

ALTER TABLE Empleados ADD CONSTRAINT PK_Empleados PRIMARY KEY (id_emp);