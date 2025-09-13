# 📚 Proyectos Informáticos – MySQL (CRUD, Función y Triggers)

**Estudiante:** Hanna Jineth Contreras Salinas  
**Curso:** Bases de Datos – IUDigital de Antioquia  
**Docente:** Julián Loaiza  

---

## 🎯 Objetivo
El objetivo del presente proyecto es implementar en **MySQL** distintos objetos de programación que fortalezcan la gestión de la base de datos `proyectos_informaticos`.  
Se desarrollaron:  
- **CRUD** (Create, Read, Update, Delete) mediante procedimientos almacenados para las tablas `docentes` y `proyectos`.  
- Una **función definida por el usuario (UDF)** para calcular el promedio de horas de los proyectos.  
- **Triggers** de auditoría que permiten guardar el historial de registros **actualizados** y **eliminados** en tablas de respaldo.  

---

## 📂 Estructura del proyecto
proyectos_informaticos_mysql/
├─ README.md
├─ documentacion.txt
├─ sql/
│  ├─ 00_create_database.sql
│  ├─ 01_schema.sql
│  ├─ 02_seed.sql
│  └─ 03_queries.sql
└─ docs/
   └─ diagrama_logico.md


---

## 🚀 Ejecución en MySQL
1. Abrir **MySQL** (Workbench, CLI o DBeaver).  
2. Seleccionar la base de datos:  
   ```sql
   SOURCE sql/00_create_database.sql;


---

## Crear el esquema:

SOURCE sql/01_schema.sql;

---


## Ejecutar procedimientos, funciones y triggers:

SOURCE sql/03_queries.sql;


---


## Insertar y validar con datos de prueba:

SOURCE sql/02_seed.sql;


---

## 🧩 Solución implementada

## Tablas de respaldo:

copia_actualizados_docentes, copia_eliminados_docentes

copia_actualizados_proyectos, copia_eliminados_proyectos

Procedimientos almacenados:

insertar_docente, listar_docentes, actualizar_docente, eliminar_docente

insertar_proyecto, listar_proyectos, actualizar_proyecto, eliminar_proyecto

Función definida por el usuario:

promedio_horas_proyectos() → devuelve el promedio de horas registradas en los proyectos.


---

## Triggers:

trg_docentes_update, trg_docentes_delete

trg_proyectos_update, trg_proyectos_delete


---

## 🧪 Pruebas realizadas

Inserción de docentes y proyectos con procedimientos.

Listado completo de registros.

Actualización y eliminación de datos para verificar los triggers.

Consulta de las tablas de respaldo (copia_actualizados_*, copia_eliminados_*).

Ejecución de la función promedio_horas_proyectos() para validar la operación matemática.


---

## 🌐 Repositorio en GitHub

El código completo puede consultarse en el siguiente enlace:
👉 

