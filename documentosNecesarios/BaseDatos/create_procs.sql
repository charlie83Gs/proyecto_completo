
USE Muestreos;

DROP PROCEDURE IF EXISTS spObtenerMuestreo;

DELIMITER //
CREATE PROCEDURE spObtenerMuestreo()
	this_proc:BEGIN
	SELECT * FROM Muestreo
	WHERE enabled = 1;
	END //

DELIMITER ;

DROP PROCEDURE IF EXISTS spObtenerEmpleado;

DELIMITER //
CREATE PROCEDURE spObtenerEmpleado()
	this_proc:BEGIN
	SELECT * FROM Empleado
	WHERE enabled = 1;
	END //

DELIMITER ;

DROP PROCEDURE IF EXISTS spObtenerMuestra;

DELIMITER //
CREATE PROCEDURE spObtenerMuestra()
	this_proc:BEGIN
	SELECT * FROM Muestra
	WHERE enabled = 1;
	END //

DELIMITER ;

DROP PROCEDURE IF EXISTS spObtenerOperacion;

DELIMITER //
CREATE PROCEDURE spObtenerOperacion()
	this_proc:BEGIN
	SELECT * FROM Operacion
	WHERE enabled = 1;
	END //

DELIMITER ;

DROP PROCEDURE IF EXISTS spObtenerProyecto;

DELIMITER //
CREATE PROCEDURE spObtenerProyecto()
	this_proc:BEGIN
	SELECT * FROM Proyecto
	WHERE enabled = 1;
	END //

DELIMITER ;

DROP PROCEDURE IF EXISTS spObtenerTarea;

DELIMITER //
CREATE PROCEDURE spObtenerTarea()
	this_proc:BEGIN
	SELECT * FROM Tarea
	WHERE enabled = 1;
	END //

DELIMITER ;

