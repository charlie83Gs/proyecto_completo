DROP DATABASE IF EXISTS Muestreos;
CREATE DATABASE Muestreos;

USE Muestreos;

CREATE TABLE IF NOT EXISTS Proyecto(
	idProyecto INT NOT NULL AUTO_INCREMENT,
	descripcion VARCHAR(255),
	fechaInicio DATETIME,
	enabled BOOL,
	PRIMARY KEY(idProyecto)
);

CREATE TABLE IF NOT EXISTS Muestreo(
	idMuestreo INT NOT NULL AUTO_INCREMENT,
	idProyecto INT,
	fechaInicio DATETIME,
	fechaFin DATETIME,
	objetivo INT,
	enabled BOOL,
	PRIMARY KEY(idMuestreo),
	FOREIGN KEY(idProyecto) REFERENCES Proyecto(idProyecto)

);

CREATE TABLE if NOT EXISTS Operacion(
	idOperacion INT NOT NULL AUTO_INCREMENT,
	idMuestreo INT,
	nombre VARCHAR(64),
	enabled BOOL,
	PRIMARY KEY(idOperacion),
	FOREIGN KEY(idMuestreo) REFERENCES Muestreo(idMuestreo)

);
CREATE TABLE if NOT EXISTS Empleado(
	idEmpleado INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(64),
	pseudonimo VARCHAR(64),
	enabled BOOL,
	PRIMARY KEY(idEmpleado)

);

CREATE TABLE if NOT EXISTS Tarea(
	idTarea INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(64),
	descripcion VARCHAR(255),
	enabled BOOL,
	PRIMARY KEY(idTarea)

);

CREATE TABLE if NOT EXISTS Muestra(
	idMuestra INT NOT NULL AUTO_INCREMENT,
	idOperacion INT,
	idEmpleado INT,
	idTarea INT,
	hora DATETIME,
	humedad FLOAT,
	temperatura FLOAT,
	nombre VARCHAR(64),
	enabled BOOL,
	PRIMARY KEY(idMuestra),
	FOREIGN KEY(idOperacion) REFERENCES Operacion(idOperacion),
	FOREIGN KEY(idEmpleado) REFERENCES Empleado(idEmpleado),
	FOREIGN KEY(idTarea) REFERENCES Tarea(idTarea)
);




