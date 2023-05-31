DROP TABLE Clientes;
DROP SEQUENCE seq_Clientes;
DROP TABLE Empleados;
DROP SEQUENCE seq_Empleados;
DROP TABLE Pedidos;
DROP SEQUENCE seq_Pedidos;

CREATE TABLE Clientes(
    ClienteID NUMBER(5) NOT NULL,
    Primer_Nombre VARCHAR2(25) NOT NULL,
    Segundo_Nombre VARCHAR2(25),
    Apell_Paterno VARCHAR2(25) NOT NULL,
    Apell_Materno VARCHAR2(25) NOT NULL,
    Direccion VARCHAR2(30) NOT NULL
);

CREATE SEQUENCE seq_Clientes
START WITH 1
INCREMENT BY 1;

ALTER TABLE Clientes ADD CONSTRAINT PK_Clientes PRIMARY KEY (ClienteID);


CREATE TABLE Empleados(
    EmpleadoID NUMBER(6) NOT NULL,
    Primer_Nombre VARCHAR2(25) NOT NULL,
    Segundo_Nombre VARCHAR2(25),
    Apell_Paterno VARCHAR2(25) NOT NULL,
    Apell_Materno VARCHAR2(25) NOT NULL,
    Fecha_Contrato DATE NOT NULL
);

CREATE SEQUENCE seq_Empleados
START WITH 1
INCREMENT BY 1;

ALTER TABLE Empleados ADD CONSTRAINT PK_Empleados PRIMARY KEY (EmpleadoID);

CREATE TABLE Pedidos(
    nro_pedido NUMBER(6) NOT NULL,
    Fecha_Pedido DATE NOT NULL,
    Fecha_Entrega DATE NOT NULL,
    ClienteID NUMBER(5) NOT NULL,
    EmpleadoID NUMBER(6) NOT NULL    
);

CREATE SEQUENCE seq_Pedidos
START WITH 1
INCREMENT BY 1;

ALTER TABLE Pedidos ADD CONSTRAINT PK_Pedidos PRIMARY KEY (nro_pedido);

ALTER TABLE Pedidos ADD CONSTRAINT FK_Pedidos_Cliente FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID);

ALTER TABLE Pedidos ADD CONSTRAINT FK_Pedidos_Empleados FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID);

