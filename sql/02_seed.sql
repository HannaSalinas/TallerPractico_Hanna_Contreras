CALL insertar_docente('123456','Hanna Contreras','Ingeniera de Software',2,'Chigorodó','Cátedra');
CALL insertar_docente('654321','Luis Gómez','Magíster en Informática',8,'Medellín','Tiempo Completo');
CALL insertar_docente('112233','Ana Pérez','Doctora en Ciencias',12,'Apartadó','Cátedra');

CALL listar_docentes();

CALL actualizar_docente(1,'Hanna Contreras','Doctora en Ingeniería');
SELECT * FROM docentes;
SELECT * FROM copia_actualizados_docentes;

CALL eliminar_docente(2);
SELECT * FROM docentes;
SELECT * FROM copia_eliminados_docentes;

CALL insertar_proyecto('Sistema de Inventario','Plataforma para controlar existencias','2025-01-01','2025-06-30',5000000,120);
CALL insertar_proyecto('Plataforma Educativa','App web para cursos en línea','2025-02-15','2025-07-30',8000000,200);

CALL actualizar_proyecto(1,'Sistema de Inventario V2',6000000);
SELECT * FROM proyectos;
SELECT * FROM copia_actualizados_proyectos;

CALL listar_proyectos();

CALL eliminar_proyecto(2);
SELECT * FROM proyectos;
SELECT * FROM copia_eliminados_proyectos;

SELECT promedio_horas_proyectos();
