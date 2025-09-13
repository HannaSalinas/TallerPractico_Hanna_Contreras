-- Procedimientos para DOCENTES
DELIMITER //
CREATE PROCEDURE insertar_docente(
    IN p_numero_documento VARCHAR(20),
    IN p_nombres VARCHAR(100),
    IN p_titulo VARCHAR(100),
    IN p_anios_experiencia INT,
    IN p_direccion VARCHAR(150),
    IN p_tipo_docente VARCHAR(50)
)
BEGIN
    INSERT INTO docentes(numero_documento, nombres, titulo, anios_experiencia, direccion, tipo_docente)
    VALUES(p_numero_documento, p_nombres, p_titulo, p_anios_experiencia, p_direccion, p_tipo_docente);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE listar_docentes()
BEGIN
    SELECT * FROM docentes;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE actualizar_docente(
    IN p_id INT,
    IN p_nombres VARCHAR(100),
    IN p_titulo VARCHAR(100)
)
BEGIN
    UPDATE docentes
    SET nombres = p_nombres, titulo = p_titulo
    WHERE docente_id = p_id;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE eliminar_docente(IN p_id INT)
BEGIN
    DELETE FROM docentes WHERE docente_id = p_id;
END //
DELIMITER ;


-- Procedimientos para PROYECTOS
DELIMITER //
CREATE PROCEDURE insertar_proyecto(
    IN p_nombre VARCHAR(100),
    IN p_descripcion TEXT,
    IN p_fecha_inicial DATE,
    IN p_fecha_final DATE,
    IN p_presupuesto DECIMAL(12,2),
    IN p_horas INT
)
BEGIN
    INSERT INTO proyectos(nombre, descripcion, fecha_inicial, fecha_final, presupuesto, horas)
    VALUES(p_nombre, p_descripcion, p_fecha_inicial, p_fecha_final, p_presupuesto, p_horas);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE listar_proyectos()
BEGIN
    SELECT * FROM proyectos;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE actualizar_proyecto(
    IN p_id INT,
    IN p_nombre VARCHAR(100),
    IN p_presupuesto DECIMAL(12,2)
)
BEGIN
    UPDATE proyectos
    SET nombre = p_nombre, presupuesto = p_presupuesto
    WHERE proyecto_id = p_id;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE eliminar_proyecto(IN p_id INT)
BEGIN
    DELETE FROM proyectos WHERE proyecto_id = p_id;
END //
DELIMITER ;


-- Función de promedio
DELIMITER //
CREATE FUNCTION promedio_horas_proyectos()
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE promedio DECIMAL(10,2);
    SELECT AVG(horas) INTO promedio FROM proyectos;
    RETURN promedio;
END //
DELIMITER ;


-- Triggers para DOCENTES
DELIMITER //
CREATE TRIGGER trg_docentes_update
AFTER UPDATE ON docentes
FOR EACH ROW
BEGIN
    INSERT INTO copia_actualizados_docentes(docente_id, numero_documento, nombres, titulo, anios_experiencia, direccion, tipo_docente)
    VALUES(OLD.docente_id, OLD.numero_documento, OLD.nombres, OLD.titulo, OLD.anios_experiencia, OLD.direccion, OLD.tipo_docente);
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trg_docentes_delete
AFTER DELETE ON docentes
FOR EACH ROW
BEGIN
    INSERT INTO copia_eliminados_docentes(docente_id, numero_documento, nombres, titulo, anios_experiencia, direccion, tipo_docente)
    VALUES(OLD.docente_id, OLD.numero_documento, OLD.nombres, OLD.titulo, OLD.anios_experiencia, OLD.direccion, OLD.tipo_docente);
END //
DELIMITER ;


-- Triggers para PROYECTOS
DELIMITER //
CREATE TRIGGER trg_proyectos_update
AFTER UPDATE ON proyectos
FOR EACH ROW
BEGIN
    INSERT INTO copia_actualizados_proyectos(proyecto_id, nombre, descripcion, fecha_inicial, fecha_final, presupuesto, horas)
    VALUES(OLD.proyecto_id, OLD.nombre, OLD.descripcion, OLD.fecha_inicial, OLD.fecha_final, OLD.presupuesto, OLD.horas);
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trg_proyectos_delete
AFTER DELETE ON proyectos
FOR EACH ROW
BEGIN
    INSERT INTO copia_eliminados_proyectos(proyecto_id, nombre, descripcion, fecha_inicial, fecha_final, presupuesto, horas)
    VALUES(OLD.proyecto_id, OLD.nombre, OLD.descripcion, OLD.fecha_inicial, OLD.fecha_final, OLD.presupuesto, OLD.horas);
END //
DELIMITER ;
