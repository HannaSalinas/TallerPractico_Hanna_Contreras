# Diagrama lógico – Base de datos proyectos_informaticos

El modelo de datos representa la gestión de proyectos informáticos en la IUDigital de Antioquia. 

## Tablas principales
- **docentes**: almacena la información de cada docente (documento, nombre, título, años de experiencia, etc.).  
- **proyectos**: contiene los datos de cada proyecto (nombre, descripción, presupuesto, horas estimadas, fechas de inicio y fin).  
- **fases**: describe las etapas en que se dividen los proyectos.  
- **productos**: corresponden a los entregables desarrollados en las fases.  
- **gastos**: registran los costos asociados a docentes en los proyectos.  

## Relaciones
- Un proyecto puede tener varias fases.  
- Cada fase puede generar varios productos.  
- Un docente puede participar en diferentes proyectos.  
- Los gastos se asocian tanto a un docente como a un proyecto.  

