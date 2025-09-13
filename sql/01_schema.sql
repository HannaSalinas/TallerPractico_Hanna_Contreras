CREATE TABLE IF NOT EXISTS copia_actualizados_docentes (
    docente_id INT,
    numero_documento VARCHAR(20),
    nombres VARCHAR(100),
    titulo VARCHAR(100),
    anios_experiencia INT,
    direccion VARCHAR(150),
    tipo_docente VARCHAR(50),
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS copia_eliminados_docentes (
    docente_id INT,
    numero_documento VARCHAR(20),
    nombres VARCHAR(100),
    titulo VARCHAR(100),
    anios_experiencia INT,
    direccion VARCHAR(150),
    tipo_docente VARCHAR(50),
    fecha_eliminacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS copia_actualizados_proyectos (
    proyecto_id INT,
    nombre VARCHAR(100),
    descripcion TEXT,
    fecha_inicial DATE,
    fecha_final DATE,
    presupuesto DECIMAL(12,2),
    horas INT,
    fecha_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS copia_eliminados_proyectos (
    proyecto_id INT,
    nombre VARCHAR(100),
    descripcion TEXT,
    fecha_inicial DATE,
    fecha_final DATE,
    presupuesto DECIMAL(12,2),
    horas INT,
    fecha_eliminacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
