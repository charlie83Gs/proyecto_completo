INSERT INTO Proyecto(descripcion,fechaInicio,enabled)
SELECT 'Proyecto1',CURDATE(),'1';
INSERT INTO Proyecto(descripcion,fechaInicio,enabled)
SELECT 'Proyecto2',CURDATE(),'1';



INSERT INTO Muestreo(idProyecto,fechaInicio,fechaFin,objetivo,enabled)
SELECT '1',CURDATE(),CURDATE(),'30','1';
INSERT INTO Muestreo(idProyecto,fechaInicio,fechaFin,objetivo,enabled)
SELECT '2',CURDATE(),CURDATE(),'20','1';
INSERT INTO Muestreo(idProyecto,fechaInicio,fechaFin,objetivo,enabled)
SELECT '1',CURDATE(),CURDATE(),'15','1';
INSERT INTO Muestreo(idProyecto,fechaInicio,fechaFin,objetivo,enabled)
SELECT '1',CURDATE(),CURDATE(),'42','1';