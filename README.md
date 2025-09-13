# 📚 Proyectos Informáticos – MySQL (CRUD, Función y Triggers)

**Estudiante:** Hanna Jineth Contreras Salinas  
**Curso:** Bases de Datos – IUDigital de Antioquia  
**Docente:** Julián Loaiza  

---

## 🎯 Objetivo
El propósito de este proyecto es implementar en **MySQL** distintos objetos de programación que fortalezcan la gestión de la base de datos `proyectos_informaticos`.  

Se desarrollaron:  
- **CRUD** (Create, Read, Update, Delete) mediante procedimientos almacenados para las tablas `docentes` y `proyectos`.  
- Una **función definida por el usuario (UDF)** para calcular el promedio de horas de los proyectos.  
- **Triggers** de auditoría que permiten guardar el historial de registros **actualizados** y **eliminados** en tablas de respaldo.  

---

## 📂 Estructura del proyecto

```bash
proyectos_informaticos_mysql/
├─ README.md
├─ documentacion.txt
├─ sql/
│  ├─ 00_create_database.sql   # creación de la base de datos
│  ├─ 01_schema.sql            # definición de tablas principales y de auditoría
│  ├─ 02_seed.sql              # inserciones y pruebas
│  └─ 03_queries.sql           # procedimientos, triggers y función
└─ docs/
   └─ diagrama_logico.md       # descripción del modelo lógico



## 🚀 Ejecución en MySQL

Para ejecutar el proyecto en **MySQL** (Workbench, DBeaver o CLI):

1. Crear la base de datos:  
   ```sql
   SOURCE sql/00_create_database.sql;

2. Crear las tablas principales y de auditoría:
   ```sql
   SOURCE sql/01_schema.sql;

3.Cargar procedimientos, triggers y función:
   ```sql
   SOURCE sql/03_queries.sql;

4.Insertar y validar con datos de prueba:
   ```sql
   SOURCE sql/02_seed.sql;


---


## 🧩 Solución implementada

Tablas de respaldo:
```sql
: copia_actualizados_docentes, copia_eliminados_docentes

: copia_actualizados_proyectos, copia_eliminados_proyectos

Procedimientos almacenados:
```sql
: insertar_docente, listar_docentes, actualizar_docente, eliminar_docente

: insertar_proyecto, listar_proyectos, actualizar_proyecto, eliminar_proyecto

Función definida por el usuario:
```sql
: promedio_horas_proyectos() → devuelve el promedio de horas registradas en los proyectos.




## Triggers:
```sql
trg_docentes_update, trg_docentes_delete

trg_proyectos_update, trg_proyectos_delete




## 🧪 Pruebas realizadas
```sql
Inserción de docentes y proyectos con procedimientos.

Listado completo de registros.

Actualización y eliminación de datos para verificar los triggers.

Consulta de las tablas de respaldo (copia_actualizados_*, copia_eliminados_*).

Ejecución de la función promedio_horas_proyectos() para validar la operación matemática.



## 🌐 Repositorio en GitHub

El código completo puede consultarse en el siguiente enlace:
👉 https://github.com/HannaSalinas/TallerPractico_Hanna_Contreras
